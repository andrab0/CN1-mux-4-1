`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2021 10:34:26 AM
// Design Name: 
// Module Name: mux41
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux41(out, I0, I1, I2, I3, sel);
input I0, I1, I2, I3;
input [1:0]sel;
output out;
reg out;

always @(I0, I1, I2, I3, sel)
    begin
        case (sel)
         2'b00: out = I0;
         2'b01: out = I1;
         2'b10: out = I2;
         2'b11: out = I3;
         default: out = 0;
        endcase
    end
endmodule
