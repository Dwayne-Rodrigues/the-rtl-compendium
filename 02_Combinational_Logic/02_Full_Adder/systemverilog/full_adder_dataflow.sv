`timescale 1ns / 1ps
/*
 * Author: Dwayne E. Rodrigues
 * Module Name: full_adder_dataflow
 * Project Name: the_rtl_compendium
 * Description: 1-bit Full Adder using continuous assignments (Dataflow).
 * * * Compendium Note: This module demonstrates dataflow modeling by mapping 
 * * * Boolean equations directly to continuous assignments using SV 'logic'.
*/

module full_adder_dataflow(
    input  logic a,
    input  logic b,
    input  logic cin,
    output logic sum,
    output logic cout
    );

    // Continuous assignment for combinational logic
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));

endmodule