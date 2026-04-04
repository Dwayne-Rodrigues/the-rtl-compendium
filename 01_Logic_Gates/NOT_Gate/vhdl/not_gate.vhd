----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: not_gate
-- Project Name: the-rtl-compendium
-- Description: Basic NOT logic primitive.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
    port ( a : in  STD_LOGIC; -- Input A
           y : out STD_LOGIC  -- Output Result (Y = not A)
         );
end entity not_gate;

architecture dataflow of not_gate is
begin
    -- Simple dataflow modeling
    y <= not a;
end architecture dataflow;