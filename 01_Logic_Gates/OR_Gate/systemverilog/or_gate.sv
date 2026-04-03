`timescale 1ns / 1ps
/*
 * Author: Dwayne E. Rodrigues
 * Module Name: or_gate
 * Project Name: the-rtl-compendium
 * Description: 2-input OR logic primitive.
 * * This module uses the SystemVerilog 'logic' type, which is a 4-state 
 * data type (0, 1, X, Z) that replaces the 'reg' and 'wire' ambiguity.
 */

module or_gate (
    input  logic a, // Logic Input A
    input  logic b, // Logic Input B
    output logic y  // Output Result (Y = A | B)
);

    // Continuous assignment for combinational logic
    assign y = a | b;

endmodule