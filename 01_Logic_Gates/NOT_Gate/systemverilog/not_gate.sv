`timescale 1ns / 1ps
/*
 * Author: Dwayne E. Rodrigues
 * Module Name: not_gate
 * Project Name: the-rtl-compendium
 * Description: NOT logic primitive.
 * * This module uses the SystemVerilog 'logic' type, which is a 4-state 
 * data type (0, 1, X, Z) that replaces the 'reg' and 'wire' ambiguity.
 */

module not_gate (
    input  logic a, // Logic Input A
    output logic y  // Output Result (Y = ~A)
);

    // Continuous assignment for combinational logic
    assign y = ~a;

endmodule