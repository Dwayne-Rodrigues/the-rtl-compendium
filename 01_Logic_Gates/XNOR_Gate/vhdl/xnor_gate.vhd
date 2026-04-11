----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: xnor_gate
-- Project Name: the-rtl-compendium
-- Description: Basic 2-input XNOR logic primitive.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xnor_gate is
    port ( a : in  STD_LOGIC; -- Input A
           b : in  STD_LOGIC; -- Input B
           y : out STD_LOGIC  -- Output Result (Y = A XNOR B)
         );
end entity xnor_gate;

architecture dataflow of xnor_gate is
begin
    -- Simple dataflow modeling
    y <= a xnor b;
end architecture dataflow;