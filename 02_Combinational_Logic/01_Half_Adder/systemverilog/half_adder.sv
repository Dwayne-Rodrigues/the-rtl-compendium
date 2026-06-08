`timescale 1ns / 1ps
/*
 * Author: Dwayne E. Rodrigues
 * Module Name: half_adder
 * Project Name: the-rtl-compendium
 * Description: 1-bit Half Adder combinational logic circuit.
 * * This module uses the SystemVerilog 'logic' type, which is a 4-state 
 * data type (0, 1, X, Z) that replaces the 'reg' and 'wire' ambiguity.
 */

module half_adder(
    input logic a, // Logic Input A
    input logic b, // Logic Input B
    output logic sum, // Logic Sum (Sum = A ^ B)
    output logic cout // Logic Carry (Cout = A & B)
    );

    // Continuous assignment for combinational logic
    assign sum = a ^ b;
    assign cout = a & b;

endmodule