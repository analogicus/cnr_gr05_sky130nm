module PulseDurationMeasurement(
    input wire clk,         // Clock input
    input wire reset_n,     // Reset input (active low)
    input wire signal_in,   // Input signal to measure
    output reg signed [8:0] temperature_output = 0
    
);

// Internal state declarations
reg [1:0] state;
reg [11:0] count;
// Internal variables
reg [11:0] pulse_duration = 0;
reg signed [31:0] temp_value;
reg signed [8:0] temp_value1;

// Constants declaration
parameter IDLE = 2'b00;
parameter HIGH = 2'b01;
parameter DONE = 2'b10;

// Constants for temperature conversion
parameter OFFSET = 1109; // Raw input value corresponding to -40°C
parameter SLOPE = 2.982; // Slope of temperature conversion
parameter MIN_VAL = -40;
parameter MIN_VAL_RAW = 1109;
parameter MAX_VAL = 125;
parameter MAX_VAL_RAW = 1601;

parameter gain2 = -0.0001215977;
parameter gain = 0.6881112547;
parameter offset = -708.3230951089;





// State machine
always_ff @(posedge clk) begin
    if (~reset_n) begin
        $display("\tReset");
        state = IDLE;
        count = 12'h0;
    end else begin
        case(state)
            IDLE: begin
                count = 12'b000000000001;
                //$display("\t\t\t\t\tCount started");
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

always_comb begin
    // temp_value = ((pulse_duration - MIN_VAL_RAW)/(MAX_VAL_RAW - MIN_VAL_RAW))*(MAX_VAL - MIN_VAL) + MIN_VAL;
    temp_value = $rtoi(gain2*pulse_duration*pulse_duration + gain*pulse_duration + offset);
    temp_value1 = temp_value[8:0];
end

always_ff @(posedge clk) begin
    temperature_output = temp_value1;
end;


endmodule
