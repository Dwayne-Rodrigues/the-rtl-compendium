`timescale 1ns / 1ps
/*
 * Author: Dwayne E. Rodrigues
 * Module Name: full_adder_structural
 * Project Name: the_rtl_compendium
 * Description: 1-bit Full Adder using structural hierarchy (Instantiations).
 * * * Compendium Note: This module demonstrates structural hierarchy by 
 * * * instantiating and connecting lower-level primitives (half_adder).
*/

module full_adder_structural(
    input  logic a,
    input  logic b,
    input  logic cin,
    output logic sum,
    output logic cout
);

    // Internal routing signals declared as 'logic'
    logic w_sum1;
    logic w_carry1;
    logic w_carry2;

    // Instantiate the First Half Adder
    half_adder HA1 (
        .a(a),
        .b(b),
        .sum(w_sum1),
        .cout(w_carry1)
    );

    // Instantiate the Second Half Adder
    half_adder HA2 (
        .a(w_sum1),
        .b(cin),
        .sum(sum),
        .cout(w_carry2)
    );

    // Final OR gate for Carry Out
    assign cout = w_carry1 | w_carry2;

endmodule