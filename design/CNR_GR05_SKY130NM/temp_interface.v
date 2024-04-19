// Macros
`define STA  6b000000       // Status register          0x00
`define TMPH 6b000001       // Temperature high byte    0x01
`define TMPL 6b000010       // Temperature low byte     0x02
`define RAWH  6b000011      // Raw data high byte       0x03
`define RAWL  6b000100      // Raw data low byte        0x04
`define CTL  6b000101       // Control register         0x05
`define RES1 6b000110       // Reserved                 0x06
`define RES2 6b000111       // Reserved                 0x07
`define OFS_3 6b001000      // Offset register 3        0x08
`define OFS_2 6b001001      // Offset register 2        0x09
`define OFS_1 6b001010      // Offset register 1        0x0A
`define OFS_0 6b001011      // Offset register 0        0x0B
`define OFS_SHA 6b001100    // Offset Shift amount reg  0x0C
`define GAIN1_3 6b001101     // Gain1 register 3        0x0D
`define GAIN1_2 6b001110     // Gain1 register 2        0x0E
`define GAIN1_1 6b001111     // Gain1 register 1        0x0F
`define GAIN1_0 6b010000     // Gain1 register 0        0x10
`define GAIN1_SHA 6b010001   // Gain1 shift amount reg  0x11
`define GAIN2_3 6b010010     // Gain2 register 3        0x12
`define GAIN2_2 6b010011     // Gain2 register 2        0x13
`define GAIN2_1 6b010100     // Gain2 register 1        0x14
`define GAIN2_0 6b010101     // Gain2 register 0        0x15
`define GAIN2_SHA 6b010110   // Gain2 shift amount reg  0x16
`define GAIN3_3 6b010111     // Gain3 register 3        0x17
`define GAIN3_2 6b011000     // Gain3 register 2        0x18
`define GAIN3_1 6b011001     // Gain3 register 1        0x19
`define GAIN3_0 6b011010     // Gain3 register 0        0x1A
`define GAIN3_SHA 6b011011   // Gain3 shift amount reg  0x1B



module tempInterface(
    input wire clk,             // Clock input
    input wire RS,              // Register Select input
    input wire RW,              // Read/Write input
    input wire EN,              // Enable input
    inout wire [7:0] data       // Data bus input
);

// Internal variables
reg [5:0] address;            // Address bus 6-bit
reg [7:0] data_reg [23:0];           // Data register 8-bit

reg state;
reg [11:0] count;

reg signed [31:0] c_offset, c_gain1, c_gain2, c_gain3;
reg signed [15:0] temperature_output = 0; // Signed temperature value output

// Constants declaration
parameter IDLE = 1'b0;
parameter COUNT = 1'b1

// Constants for temperature conversion
parameter GAIN3 = -508; // (-0.0000004731 * 1073741824) scaled by 2^30
parameter GAIN2 = 2101; // (0.0020044419 * 1048576) scaled by 2^20
parameter GAIN = -2532; // (-2.4734734627 * 1024) scaled by 2^10
parameter OFFSET = 847

parameter CALEN_bm = (1 << 7);  // Calibration enable bit mask
parameter CALSEL_bm = ((1 << 6) | (1 << 5));  // Calibration 3 bit mask
parameter CAL_3 = ((1 << 6) | (1 << 5));  // Calibration 3
parameter CAL_2 = ((1 << 6) | (0 << 5));  // Calibration 2
parameter CAL_1 = ((0 << 6) | (1 << 5));  // Calibration 1
parameter CAL_0 = ((0 << 6) | (0 << 5));  // Calibration 0


always_ff @(posedge clk) begin
    if(~reset_n) begin
        data <= 8'bZZZZZZZZ;
        address <= 6'b000000;
    end
    else if(EN == 1) begin
        if(RS == 1 && RW == 0) begin        // Read data
            data <= data_reg[address];
        end
        else if(RS == 1 && RW == 1) begin   // Write data
            data_reg[address] <= data;
        end
        else if(RS == 0 && RW == 0) begin   // Read command
            data <= data_reg[address];
        end
        else if(RS == 0 && RW == 1) begin   // Write command
            address <= data[5:0];
        end
        else begin                          // Default
            data <= 8'bZZZZZZZZ;
        end
    end
end

always_ff @(posedge clk) begin
    if(~reset_n) begin
        state <= IDLE;
        count <= 12'h0;
    end else begin
        case(state)
            IDLE: begin
                count <= 12'b000000000001;
                if (signal_in == 0) begin
                    state <= COUNT;
                    // Calculated temperature message printed here at to allow for temperature conversion to be done
                    $display("\t\t\t\t\tMeasurement finished \t\t Old temperature: %d \t New temperature:", temperature_output);
                end 
            end

            COUNT: begin
                if (signal_in == 0) begin
                    count <= count + 1;
                end else begin
                    pulse_duration <= count;

                    data_reg[RAWH] <= 8'b0 | pulse_duration[11:8];
                    data_reg[RAWL] <= pulse_duration[7:0];
                    // Finished counting message printed here at to only display once per measurement
                    $display("\t\t\t\t\tCount finished \t\t Pulse Duration: %d", pulse_duration);
                    state <= IDLE;
                end
            end
    end
end

always_comb begin
    // Concatenate the offset registers to form a 32-bit signed integer
    c_offset = data_reg[OFS_3] << 24 | data_reg[OFS_2] << 16 | data_reg[OFS_1] << 8 | data_reg[OFS_0];
    c_gain1 = data_reg[GAIN1_3] << 24 | data_reg[GAIN1_2] << 16 | data_reg[GAIN1_1] << 8 | data_reg[GAIN1_0];
    c_gain2 = data_reg[GAIN2_3] << 24 | data_reg[GAIN2_2] << 16 | data_reg[GAIN2_1] << 8 | data_reg[GAIN2_0];
    c_gain3 = data_reg[GAIN3_3] << 24 | data_reg[GAIN3_2] << 16 | data_reg[GAIN3_1] << 8 | data_reg[GAIN3_0];


    if(~reset_n) begin
        temperature_output = 16'b0;
    end
    else if (data_reg[CTL] & CALEN_bm) begin // Calibration enabled
        if ((data_reg[CTL] & CAL_3_bm) == CAL_0) begin
            // Standard calibration with custom offset
            temperature_output = ((Gain3*pulse_duration*pulse_duration*pulse_duration) >> 30) 
                    + ((Gain2*pulse_duration*pulse_duration) >> 20) 
                    + ((Gain*pulse_duration) >> 10)
                    + c_offset;
        end
        else if ((data_reg[CTL] & CAL_3_bm) == CAL_1) begin
            temperature_output = ((c_gain1*pulse_duration) >> data_reg[GAIN1_SHA]) 
                    + (c_offset >> data_reg[OFS_SHA]);
        end
        else if ((data_reg[CTL] & CAL_3_bm) == CAL_2) begin
            temperature_output = ((c_gain2*pulse_duration*pulse_duration) >> data_reg[GAIN2_SHA])
                    + ((c_gain1*pulse_duration) >> data_reg[GAIN1_SHA]) 
                    + (c_offset >> data_reg[OFS_SHA]);
        end
        else if ((data_reg[CTL] & CAL_3_bm) == CAL_3) begin
            temperature_output = ((c_gain3*pulse_duration*pulse_duration*pulse_duration) >> data_reg[GAIN3_SHA])
                    + ((c_gain2*pulse_duration*pulse_duration) >> data_reg[GAIN2_SHA])
                    + ((c_gain1*pulse_duration) >> data_reg[GAIN1_SHA]) 
                    + (c_offset >> data_reg[OFS_SHA]);
        end

    end
    else begin  // Custom calibration disabled
        temperature_output = ((Gain3*pulse_duration*pulse_duration*pulse_duration) >> 30) 
                    + ((Gain2*pulse_duration*pulse_duration) >> 20) 
                    + ((Gain*pulse_duration) >> 10) 
                    + OFFSET;
    end

    data_reg[TMPH] = temperature_output[15:8];
    data_reg[TMPL] = temperature_output[7:0];
    
end

endmodule
