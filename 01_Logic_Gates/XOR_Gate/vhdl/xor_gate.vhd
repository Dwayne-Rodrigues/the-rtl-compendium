----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: xor_gate
-- Project Name: the-rtl-compendium
-- Description: Basic 2-input XOR logic primitive.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    port ( a : in  STD_LOGIC; -- Input A
           b : in  STD_LOGIC; -- Input B
           y : out STD_LOGIC  -- Output Result (Y = A XOR B)
         );
end entity xor_gate;

architecture dataflow of xor_gate is
begin
    -- Simple dataflow modeling
    y <= a xor b;
end architecture dataflow;