`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2018 13:32:47
// Design Name: 
// Module Name: Adder1Bit
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


module Adder1Bit(input a,b,cin ,output sum,cout

    );
 assign sum = a^b^cin;
 assign cout = ((a^b) & cin) | (a&b);
 
 
endmodule
