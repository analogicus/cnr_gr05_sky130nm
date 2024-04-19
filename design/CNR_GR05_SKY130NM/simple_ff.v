
module FlipFlop(
    input wire clk,
    input wire reset_n,
    input wire d,
    output reg q
);

    always @(posedge clk) begin
        if (~reset_n) begin
            q <= 1'b0;
        end else begin
            q <= d;
        end
    end

endmodule
