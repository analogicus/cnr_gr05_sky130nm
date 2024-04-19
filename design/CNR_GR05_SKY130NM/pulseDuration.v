temp_conversionmodule PulseDurationMeasurement(
    input wire clk,         // Clock input
    input wire reset_n,     // Reset input (active low)
    input wire signal_in,   // Input signal to measure
    output reg [7:0] pulse_duration = 0  // Output pulse duration
);

// Internal state declarations
reg [1:0] state;
reg [7:0] count;

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
        state = IDLE;
        count = 8'h0;
    end else begin
        case(state)
            IDLE: begin
                if (signal_in) begin
                    state = HIGH;
                    count = 8'b00000001;
                end
            end
            HIGH: begin
                if (signal_in) begin
                    count = count + 1;
                end else begin
                    state = DONE;
                end
            end
            DONE: begin
                pulse_duration = count;
                $display("Pulse duration: %d", pulse_duration);
                state = IDLE;
                
            end
            default: 
                state = IDLE;
        endcase
    end
end



endmodule
