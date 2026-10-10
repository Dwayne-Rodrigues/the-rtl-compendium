`timescale 1ns / 1ps
/*
 * Author: Dwayne E. Rodrigues
 * Module Name: tb_full_adder
 * Project Name: the_rtl_compendium
 * Description: Common testbench to verify both Dataflow and Structural models.
 * * * Compendium Note: Instantiates both architectures side-by-side to 
 * * * prove logical equivalence across different modeling techniques.
*/

module tb_full_adder();

    // Stimulus Signals
    logic a, b, cin;

    // Output Signals (Dataflow)
    logic sum_df, cout_df;

    // Output Signals (Structural)
    logic sum_st, cout_st;

    // Instantiate Dataflow Module
    full_adder_dataflow uut_df (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum_df),
        .cout(cout_df)
    );

    // Instantiate Structural Module
    full_adder_structural uut_st (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum_st),
        .cout(cout_st)
    );

    // Stimulus Block
    initial begin
        $display("-------------------------------------------------------------");
        $display("--------- SystemVerilog Full Adder Equivalence Test ---------");
        $display("-------------------------------------------------------------");
        $display(" Time | A B Cin | Dataflow (Sum Cout) | Structural (Sum Cout)");
        
        // Algorithmic stimulus generation
        for (int i = 0; i < 8; i++) begin
            {a, b, cin} = i; // Concatenation assignment
            #10;            
            $display("%0t | %b %b  %b  |           %b    %b    |             %b    %b", 
                     $time, a, b, cin, sum_df, cout_df, sum_st, cout_st);
        end
        
        $display("-------------------------------------------------------------");
        $display("-------------------- Simulation Complete --------------------");
        $display("-------------------------------------------------------------");
        $finish;
    end

endmodule