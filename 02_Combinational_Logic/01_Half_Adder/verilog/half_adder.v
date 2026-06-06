`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Dwayne E. Rodrigues
// Module Name: half_adder
// Project Name: the_rtl_compendium
// Description: 1-bit Half Adder combinational logic circuit.
//////////////////////////////////////////////////////////////////////////////////


module half_adder(
    input wire a,       // Input A
    input wire b,       // Input B
    output wire sum,    // Output Sum (Sum = A ^ B)    
    output wire cout    // Output Carry (Cout = A & B)
    );
    
    // Continuous assignment for combinational logic
    assign sum = a ^ b;
    assign cout = a & b;
    
endmodule