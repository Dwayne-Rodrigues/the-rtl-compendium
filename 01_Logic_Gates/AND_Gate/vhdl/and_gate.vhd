----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: and_gate
-- Project Name: the-rtl-compendium
-- Description: Basic 2-input AND logic primitive.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    port ( a : in  STD_LOGIC; -- Input A
           b : in  STD_LOGIC; -- Input B
           y : out STD_LOGIC  -- Output Result (Y = A AND B)
         );
end entity and_gate;

architecture dataflow of and_gate is
begin
    -- Simple dataflow modeling
    y <= a and b;
end architecture dataflow;
