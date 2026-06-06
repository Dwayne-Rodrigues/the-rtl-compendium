`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Author: Dwayne E. Rodrigues
// Module Name: tb_half_adder
// Project Name: the-rtl-compendium
// Description: Testbench for 1-bit Half Adder combinational logic circuit.
//////////////////////////////////////////////////////////////////////////////////


module tb_half_adder();

    // Inputs (Reg type because we are driving them)
    reg a;
    reg b;

    // Output (Wire type because we are observing it)
    wire sum;
    wire cout;

    // Instantiate the Unit Under Test (UUT)
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Initialize Inputs
        $display("Starting Simulation...");
        
        a = 0; b = 0; #10;
        $display("A=%b, B=%b | Sum=%b, Carry=%b", a, b, sum, cout);
        
        a = 0; b = 1; #10;
        $display("A=%b, B=%b | Sum=%b, Carry=%b", a, b, sum, cout);
        
        a = 1; b = 0; #10;
        $display("A=%b, B=%b | Sum=%b, Carry=%b", a, b, sum, cout);
        
        a = 1; b = 1; #10;
        $display("A=%b, B=%b | Sum=%b, Carry=%b", a, b, sum, cout);

        $display("Simulation Complete.");
        $finish; // Stop the simulator
    end
    
endmodule