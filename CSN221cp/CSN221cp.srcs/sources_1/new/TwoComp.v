`timescale 1ns / 1ps

module TwoComp(input [3:0]A , output [3:0] R );

assign R = ~A + 4'b0001;

endmodule
