`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Dwayne E. Rodrigues
// Module Name: not_gate
// Project Name: the_rtl_compendium
// Description: Basic NOT logic primitive.
//////////////////////////////////////////////////////////////////////////////////


module not_gate(
    input wire a,   // Input A 
    output wire y   // Output Result (Y = ~A)
    );
    
    // Continuous assignment for combinational logic
    assign y = ~a;
    
endmodule