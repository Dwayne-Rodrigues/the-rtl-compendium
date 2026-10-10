`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Dwayne E. Rodrigues
// Module Name: full_adder_structural
// Project Name: the_rtl_compendium
// Description: 1-bit Full Adder using structural hierarchy (Instantiations).
// * * Compendium Note: This module demonstrates structural hierarchy by 
// * * instantiating and connecting lower-level primitives (half_adder).
//////////////////////////////////////////////////////////////////////////////////

module full_adder_structural(
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);

    // Internal wires to connect the modules together
    wire w_sum1;
    wire w_carry1;
    wire w_carry2;

    // Instantiate the First Half Adder (adds A and B)
    half_adder HA1 (
        .a(a),
        .b(b),
        .sum(w_sum1),
        .cout(w_carry1)
    );

    // Instantiate the Second Half Adder (adds HA1_Sum and Cin)
    half_adder HA2 (
        .a(w_sum1),
        .b(cin),
        .sum(sum),
        .cout(w_carry2)
    );

    // Final OR gate for the Carry Out
    assign cout = w_carry1 | w_carry2;

endmodule