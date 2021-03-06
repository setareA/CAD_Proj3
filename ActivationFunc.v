`timescale 1ns/1ns
module ActivationFunc #(parameter N)(input ready, input [N-1:0] in , output reg [N-1:0] out);

always @(*) begin

    if(ready) begin
        assign out = (in[1] != 1'b1) ? {(N){1'b0}} : in;
    end
end


endmodule