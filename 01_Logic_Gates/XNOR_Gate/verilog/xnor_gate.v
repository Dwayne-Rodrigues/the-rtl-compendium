`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Dwayne E. Rodrigues
// Module Name: xnor_gate
// Project Name: the_rtl_compendium
// Description: Basic 2-input XNOR logic primitive.
//////////////////////////////////////////////////////////////////////////////////


module xnor_gate(
    input wire a,   // Input A
    input wire b,   // Input B   
    output wire y   // Output Result (Y = ~(A ^ B))
    );
    
    // Continuous assignment for combinational logic
    assign y = ~(a ^ b);
    
endmodule