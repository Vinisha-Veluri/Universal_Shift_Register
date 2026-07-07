`timescale 1ns / 1ps

module tb();
reg clk,rst,serial_in_r,serial_in_l;
reg [3:0] parellel_in;
reg [1:0]ctrl;
wire [3:0] out;

USR DUT(.clk(clk),.rst(rst),
        .serial_in_r(serial_in_r),
        .serial_in_l(serial_in_l),
        .parellel_in(parellel_in),
        .ctrl(ctrl),.out(out));
   initial clk=0;
   always #5 clk=!clk;
   initial begin
        rst=1;#10;
        rst=0;
        parellel_in=4'b1010;
        serial_in_l=0;
        serial_in_r=1;
        ctrl=2'd3;#20;//load
        ctrl=2'd1;#20;//shift right
        ctrl=2'd2;#20;//shift left
        ctrl=2'd0;#20;//hold
        $finish;
   end
          
endmodule
