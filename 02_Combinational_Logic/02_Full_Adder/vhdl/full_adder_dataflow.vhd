----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: full_adder_dataflow
-- Project Name: the_rtl_compendium
-- Description: 1-bit Full Adder using concurrent assignments (Dataflow).
--  * * Compendium Note: This module demonstrates dataflow modeling by 
--  * * mapping Boolean equations directly to concurrent signal assignments.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_dataflow is
    port ( a    : in  STD_LOGIC; -- Input A
           b    : in  STD_LOGIC; -- Input B
           cin  : in  STD_LOGIC; -- Input Carry In
           sum  : out STD_LOGIC; -- Output Sum
           cout : out STD_LOGIC  -- Output Carry Out
         );
end entity full_adder_dataflow;

architecture dataflow of full_adder_dataflow is
begin
    -- Concurrent assignment for combinational logic
    sum  <= a xor b xor cin;
    cout <= (a and b) or (cin and (a xor b));
end architecture dataflow;