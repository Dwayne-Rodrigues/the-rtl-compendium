----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: nand_gate
-- Project Name: the-rtl-compendium
-- Description: Basic 2-input NAND logic primitive.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is
    port ( a : in  STD_LOGIC; -- Input A
           b : in  STD_LOGIC; -- Input B
           y : out STD_LOGIC  -- Output Result (Y = A AND B)
         );
end entity nand_gate;

architecture dataflow of nand_gate is
begin
    -- Simple dataflow modeling
    y <= not (a and b);
end architecture dataflow;