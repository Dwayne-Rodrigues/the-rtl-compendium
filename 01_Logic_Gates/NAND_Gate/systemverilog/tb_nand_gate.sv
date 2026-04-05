`timescale 1ns / 1ps
/*
 * Author: Dwayne E. Rodrigues
 * Module Name: tb_nand_gate
 * Project Name: the-rtl-compendium
 * Description: Self-checking testbench for SystemVerilog nand_gate.
 * * Verification uses a 'for' loop to iterate through the truth table 
 * and the '.*' for clean port mapping.
 */

module tb_nand_gate();

    // Internal signals
    logic a, b, y;

    // Instantiate the Unit Under Test (UUT)
    nand_gate uut (.*);

    initial begin
        $display("---------------------------------------");
        $display("SystemVerilog Simulation: nand_gate");
        $display("---------------------------------------");

        // Loop through all 4 combinations (00 to 11)
        for (int i = 0; i < 4; i++) begin
            {a, b} = i; // Concatenation assignment
            #10;
            $display("Time: %0t | A=%b, B=%b | Output Y=%b", $time, a, b, y);
        end

        $display("---------------------------------------");
        $display("Simulation Complete.");
        $display("---------------------------------------");
        $finish;
    end

endmodule