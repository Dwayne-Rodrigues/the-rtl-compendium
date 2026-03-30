`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Author: Dwayne E. Rodrigues
// Module Name: tb_and_gate
// Project Name: the-rtl-compendium
// Description: Testbench for 2-input AND gate logic.
//////////////////////////////////////////////////////////////////////////////////


module tb_and_gate();

    // Inputs (Reg type because we are driving them)
    reg a;
    reg b;

    // Output (Wire type because we are observing it)
    wire y;

    // Instantiate the Unit Under Test (UUT)
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        // Initialize Inputs
        $display("Starting Simulation...");
        
        a = 0; b = 0; #10;
        $display("A=%b, B=%b | Y=%b", a, b, y);
        
        a = 0; b = 1; #10;
        $display("A=%b, B=%b | Y=%b", a, b, y);
        
        a = 1; b = 0; #10;
        $display("A=%b, B=%b | Y=%b", a, b, y);
        
        a = 1; b = 1; #10;
        $display("A=%b, B=%b | Y=%b", a, b, y);

        $display("Simulation Complete.");
        $finish; // Stop the simulator
    end
    
endmodule
