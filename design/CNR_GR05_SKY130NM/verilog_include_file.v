module PulseDurationMeasurement(
    input wire clk,         // Clock input
    input wire reset_n,     // Reset input (active low)
    input wire signal_in,   // Input signal to measure
    output reg [11:0] pulse_duration = 0  // Output pulse duration
);

// Internal state declarations
reg [1:0] state;
reg [11:0] count;

// Constants declaration
parameter IDLE = 2'b00;
parameter HIGH = 2'b01;
parameter DONE = 2'b10;

//initial begin
//    pulse_duration <= 8'b0;
//end


// State machine
always_ff @(posedge clk) begin
    if (~reset_n) begin
        $display("\tReset");
        state = IDLE;
        count = 12'h0;
    end else begin
        case(state)
            IDLE: begin
                state = HIGH;
                count = 12'b000000000001;
                $display("\t\t\t\t\tCount started");
            end
            HIGH: begin
                if (signal_in == 0) begin
                    count = count + 1;
                end else begin
                    pulse_duration = count;
                    $display("\t\t\t\t\tCount finished \t\t Pulse duration: %d", pulse_duration);
                    state = IDLE;
                end
            end
            default: 
                state = IDLE;
        endcase
    end
end



endmodule
