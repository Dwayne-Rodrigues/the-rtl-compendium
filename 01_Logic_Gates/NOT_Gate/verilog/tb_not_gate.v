`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Author: Dwayne E. Rodrigues
// Module Name: tb_not_gate
// Project Name: the-rtl-compendium
// Description: Testbench for NOT gate logic.
//////////////////////////////////////////////////////////////////////////////////


module tb_not_gate();

    // Input (Reg type because we are driving it)
    reg a;

    // Output (Wire type because we are observing it)
    wire y;

    // Instantiate the Unit Under Test (UUT)
    not_gate uut (
        .a(a),
        .y(y)
    );

    initial begin
        // Initialize Inputs
        $display("Starting Simulation...");
        
        a = 0; #10;
        $display("A=%b | Y=%b", a, y);
        
        a = 1; #10;
        $display("A=%b | Y=%b", a, y);

        $display("Simulation Complete.");
        $finish; // Stop the simulator
    end
    
endmodule