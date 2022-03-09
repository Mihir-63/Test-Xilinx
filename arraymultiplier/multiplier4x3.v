`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:52 02/07/2022 
// Design Name: 
// Module Name:    arraymultiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module arraymultiplier(P,A,B);

    input [2:0] A;
    input [3:0] B;
    output [6:0] P;
	 wire [3:1] w1,w2,w3;
	 wire [4:0] S;
	 
	 and g0(P[0],A[0],B[0]);
	 
	 and g1(w1[0],A[0],B[1]);
	 and g2(w1[1],A[0],B[2]);
	 and g3(w1[2],A[0],B[2]);
	 assign w1[3] = 1'b0;
	 
	 and g4(w2[0],A[1],B[0]);
	 and g5(w2[1],A[1],B[1]);
	 and g6(w2[2],A[1],B[2]);
	 and g7(w2[3],A[1],B[3]);
	 
	 FourbitAdder g8(S,w1,w2);
	 
	 assign P[1] = S[0];
	 
	 and g9 (w3[0],A[2],B[0]);
	 and g10(w3[1],A[2],B[1]);
	 and g11(w3[2],A[2],B[2]);
	 and g12(w3[3],A[2],B[3]);
	 
	 FourbitAdder g13(P[6:2],w3,S[4:1]);
	 
	
   
endmodule
