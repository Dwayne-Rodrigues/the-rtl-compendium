`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Author: Dwayne E. Rodrigues
// Module Name: tb_full_adder
// Project Name: the-rtl-compendium
// Description: Common testbench to verify both Dataflow and Structural models.
//  * * Compendium Note: Instantiates both architectures side-by-side to 
//  * * prove logical equivalence across different modeling techniques.
//////////////////////////////////////////////////////////////////////////////////


module tb_full_adder();

    // Shared Inputs (Reg type because we are driving them)
    reg a;
    reg b;
    reg cin;

    // Distinct Outputs for the Dataflow Module (Wire type because we are observing it)
    wire sum_df;
    wire cout_df;

    // Distinct Outputs for the Structural Module (Wire type because we are observing it)
    wire sum_st;
    wire cout_st;

    // Instantiate the Dataflow Full Adder
    full_adder_dataflow uut_df(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum_df),
        .cout(cout_df)
    );

    // Instantiate the Structural Full Adder
    full_adder_structural uut_st(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum_st),
        .cout(cout_st)
    );

    // Stimulus Process
    integer i;

    initial begin
        $display("Starting Simulation...");
        $display("A B Cin | Dataflow (Sum Cout) | Structural (Sum Cout)");
        
        // Sweep through all 8 combinations (2^3)
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i; 
            #10;
            
            // Print both results side-by-side
            $display("%b %b  %b  |        %b    %b       |          %b    %b", 
                     a, b, cin, sum_df, cout_df, sum_st, cout_st);
        end
        
        $display("Simulation Complete.");
        $finish; // Stop the simulator
    end

endmodule
