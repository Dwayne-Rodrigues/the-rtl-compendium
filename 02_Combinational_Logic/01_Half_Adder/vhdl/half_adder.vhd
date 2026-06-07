----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: half_adder
-- Project Name: the-rtl-compendium
-- Description: 1-bit Half Adder combinational logic circuit.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    port ( a : in STD_LOGIC; -- Input A
           b : in STD_LOGIC; -- Input B
           sum : out STD_LOGIC; -- Output Sum (Sum = A xor B)
           cout : out STD_LOGIC -- Output Carry (Cout = A and B)
         );
end entity half_adder;

architecture dataflow of half_adder is
begin
    -- Concurrent assignment for combinational logic
    sum <= a xor b;
    cout <= a and b;
end architecture dataflow;