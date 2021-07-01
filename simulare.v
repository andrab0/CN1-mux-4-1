`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2021 10:35:32 AM
// Design Name: 
// Module Name: simulare
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


module simulare;
reg I0, I1, I2, I3;
    reg [1:0]sel;
    wire out;
    mux41 mux(out, I0, I1, I2, I3, sel);
    
    initial begin
            
             I0 = 0; I1 = 1; I2 = 1; I3 = 0; sel = 2'b01;
            #20  sel = 2'b11; I2 = 0; 
            #20  sel = 2'b10;
   
            
            #20 $finish;
        end
endmodule
