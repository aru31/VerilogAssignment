`timescale 1ns / 1ps

module Adder4Bit( input [3:0] A,B , input Cin, output [3:0] R, output Cout);
wire c0;
wire c1;
wire c2;
reg [3:0] ba;

Adder1Bit A1(
 .A(A[0]),
 .B(ba[0]),
 .Cin(Cin),
 .R(R[0]),
 .Cout(c0) 
 );
 
Adder1Bit A2(
  .A(A[1]),
  .B(ba[1]),
  .Cin(c0),
  .R(R[1]),
  .Cout(c1) 
  );
  
Adder1Bit A3(
   .A(A[2]),
   .B(ba[2]),
   .Cin(c1),
   .R(R[2]),
   .Cout(c2) 
   );
   
Adder1Bit A4(
    .A(A[3]),
    .B(ba[3]),
    .Cin(c2),
    .R(R[3]),
    .Cout(Cout) 
    ); 
    
always@* begin

 if(Cin) begin
  ba = B^4'b1111;
  end
  else begin
  ba = B^4'b0000;
  end
  

end

endmodule
