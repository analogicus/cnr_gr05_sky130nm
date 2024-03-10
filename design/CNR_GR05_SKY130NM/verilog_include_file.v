//AND gate using Structural modeling
module and_gate_s(
    input VCLK,VA,VB,
    output reg VY);

always @(posedge VCLK) begin  
    VY = VA & VB;
end
                    
endmodule
