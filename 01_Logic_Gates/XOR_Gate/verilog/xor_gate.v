`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Dwayne E. Rodrigues
// Module Name: xor_gate
// Project Name: the_rtl_compendium
// Description: Basic 2-input XOR logic primitive.
//////////////////////////////////////////////////////////////////////////////////


module xor_gate(
    input wire a,   // Input A
    input wire b,   // Input B   
    output wire y   // Output Result (Y = A ^ B)
    );
    
    // Continuous assignment for combinational logic
    assign y = a ^ b;
    
endmodule