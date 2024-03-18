/*  Verilog code for converting an input pulse signal to a temperature value.
*
*   The code works by counting the number of clock cycles between each input pulse.
*   The actual temperature is then calculated using a 3rd order conversion function.
*   The temperature is finally output as a 9-bit signed value on a parallell bus. 
*/


module PulseDurationMeasurement(
    input wire clk,                                 // Clock input
    input wire reset_n,                             // Reset input (active low)
    input wire signal_in,                           // Input signal to measure
    output reg signed [8:0] temperature_output = 0  // Signed temperature value output
    
);

// Internal variables
reg [1:0] state;
reg [11:0] count;
reg [11:0] pulse_duration = 0;
reg signed [31:0] temp_value;
reg signed [8:0] temp_value1;

// Constants declaration
parameter IDLE = 2'b00;
parameter HIGH = 2'b01;

// Constants for temperature conversion
parameter GAIN3 = -0.0000004731;
parameter GAIN2 = 0.0020044419;
parameter GAIN = -2.4734734627;
parameter OFFSET = 847.1700446582;


// State machine for the counter
always_ff @(posedge clk) begin
    if (~reset_n) begin
        $display("\tReset");
        state = IDLE;
        count = 12'h0;
        pulse_duration = 12'b0;
    end else begin
        case(state)
            IDLE: begin
                count = 12'b000000000001;
                if (signal_in == 0) begin
                    state = HIGH;
                    $display("\t\t\t\t\tMeasurement finished \t\t Measured temperature: %d", temperature_output);
                end 
            end

            HIGH: begin
                if (signal_in == 0) begin
                    count = count + 1;
                end else begin
                    pulse_duration = count;
                    $display("\t\t\t\t\tCount finished \t\t Pulse Duration: %d", pulse_duration);
                    state = IDLE;
                end
            end
            default: 
                state = IDLE;
        endcase
    end
end

// Calculate the temperature value based on the raw pulse duration value
// Convert from real to signed int and truncate to 9 bits
always_comb begin
    temp_value = $rtoi(GAIN3*pulse_duration*pulse_duration*pulse_duration + GAIN2*pulse_duration*pulse_duration + GAIN*pulse_duration + OFFSET);
    temp_value1 = temp_value[8:0];
end

// Update output register
always_ff @(posedge clk) begin
    if (~reset_n) begin
        temperature_output = 9'b0;
    end else begin
    temperature_output = temp_value1;
    end
end;

endmodule
