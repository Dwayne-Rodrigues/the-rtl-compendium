----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: nor_gate
-- Project Name: the-rtl-compendium
-- Description: Basic 2-input NOR logic primitive.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_gate is
    port ( a : in  STD_LOGIC; -- Input A
           b : in  STD_LOGIC; -- Input B
           y : out STD_LOGIC  -- Output Result (Y = NOT(A OR B))
         );
end entity nor_gate;

architecture dataflow of nor_gate is
begin
    -- Simple dataflow modeling
    y <= a nor b;
end architecture dataflow;