----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: or_gate
-- Project Name: the-rtl-compendium
-- Description: Basic 2-input OR logic primitive.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    port ( a : in  STD_LOGIC; -- Input A
           b : in  STD_LOGIC; -- Input B
           y : out STD_LOGIC  -- Output Result (Y = A OR B)
         );
end entity or_gate;

architecture dataflow of or_gate is
begin
    -- Simple dataflow modeling
    y <= a or b;
end architecture dataflow;
