`timescale 1ns / 1ps
/*
 * Author: Dwayne E. Rodrigues
 * Module Name: tb_not_gate
 * Project Name: the-rtl-compendium
 * Description: Self-checking testbench for SystemVerilog not_gate.
 * * Verification uses a 'for' loop to iterate through the truth table 
 * and the '.*' for clean port mapping.
 */

module tb_not_gate();

    // Internal signals
    logic a, y;

    // Instantiate the Unit Under Test (UUT)
    not_gate uut (.*);

    initial begin
        $display("---------------------------------------");
        $display("SystemVerilog Simulation: not_gate");
        $display("---------------------------------------");

        // Loop through all 4 combinations (00 to 11)
        for (int i = 0; i < 2; i++) begin
            {a} = i; // Concatenation assignment
            #10;
            $display("Time: %0t | A=%b | Output Y=%b", $time, a, y);
        end

        $display("---------------------------------------");
        $display("Simulation Complete.");
        $display("---------------------------------------");
        $finish;
    end

endmodule