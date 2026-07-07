`timescale 1ns / 1ps

module USR(
input clk,rst,serial_in_r,serial_in_l,
input [3:0] parellel_in,
input [1:0] ctrl,
output reg [3:0] out
    );
    always @(posedge clk) begin
        if(rst)
            out<=4'b0000;
        else begin
            case(ctrl)
                2'd0: out<=out;//hold
                2'd1: out<={serial_in_l,out[3:1]};//shift right
                2'd2: out<={out[2:0],serial_in_r};//shift left
                2'd3: out<=parellel_in;//load
                default:out<=4'b0000;
            endcase
       end
   end
endmodule
