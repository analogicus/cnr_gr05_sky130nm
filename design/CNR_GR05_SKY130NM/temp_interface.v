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
`define GAIN1_3 6b001100    // Gain 1 register 3        0x0C
`define GAIN1_2 6b001101    // Gain 1 register 2        0x0D
`define GAIN1_1 6b001110    // Gain 1 register 1        0x0E
`define GAIN1_0 6b001111    // Gain 1 register 0        0x0F
`define GAIN2_3 6b010000    // Gain 2 register 3        0x10
`define GAIN2_2 6b010001    // Gain 2 register 2        0x11
`define GAIN2_1 6b010010    // Gain 2 register 1        0x12
`define GAIN2_0 6b010011    // Gain 2 register 0        0x13
`define GAIN3_3 6b010100    // Gain 3 register 3        0x14
`define GAIN3_2 6b010101    // Gain 3 register 2        0x15
`define GAIN3_1 6b010110    // Gain 3 register 1        0x16
`define GAIN3_0 6b010111    // Gain 3 register 0        0x17


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

// Constants declaration


// Constants for temperature conversion
parameter GAIN3 = -0.0000004731;
parameter GAIN2 = 0.0020044419;
parameter GAIN = -2.4734734627;
parameter OFFSET = 847.1700446582;

always_ff @(posedge clk) begin
    if(EN == 1) begin
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
endmodule
