`timescale 1ns / 1ps
/*
 * Author: Dwayne E. Rodrigues
 * Module Name: tb_half_adder
 * Project Name: the-rtl-compendium
 * Description: Self-checking testbench for SystemVerilog half_adder.
 * * Verification uses a 'for' loop to iterate through the truth table 
 * and the '.*' for clean port mapping.
 */

module tb_half_adder();

    // Internal signals
    logic a, b, sum, cout;

    // Instantiate the Unit Under Test (UUT)
    half_adder uut (.*);

    initial begin
        $display("---------------------------------------");
        $display("SystemVerilog Simulation: half_adder");
        $display("---------------------------------------");

        // Loop through all 4 combinations (00 to 11)
        for (int i = 0; i < 4; i++) begin
            {a, b} = i; // Concatenation assignment
            #10;
            $display("Time: %0t | A=%b, B=%b | Sum=%b, Carry=%b", $time, a, b, sum, cout);
        end

        $display("---------------------------------------");
        $display("Simulation Complete.");
        $display("---------------------------------------");
        $finish;
    end

endmodule