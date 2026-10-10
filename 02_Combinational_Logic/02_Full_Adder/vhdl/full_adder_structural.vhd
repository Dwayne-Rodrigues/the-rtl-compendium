----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: full_adder_structural
-- Project Name: the_rtl_compendium
-- Description: 1-bit Full Adder using structural hierarchy (Instantiations).
--  * * Compendium Note: This module demonstrates structural hierarchy by 
--  * * instantiating and connecting lower-level components (half_adder).
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_structural is
    port ( a    : in  STD_LOGIC; -- Input A
           b    : in  STD_LOGIC; -- Input B
           cin  : in  STD_LOGIC; -- Input Carry In
           sum  : out STD_LOGIC; -- Output Sum
           cout : out STD_LOGIC  -- Output Carry Out
         );
end entity full_adder_structural;

architecture structural of full_adder_structural is

    -- Declare the half_adder component
    component half_adder is
        port ( a    : in  STD_LOGIC;
               b    : in  STD_LOGIC;
               sum  : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;

    -- Internal signals for wiring
    signal w_sum1   : STD_LOGIC;
    signal w_carry1 : STD_LOGIC;
    signal w_carry2 : STD_LOGIC;

begin

    -- Instantiate the First Half Adder (adds A and B)
    HA1: half_adder
        port map (
            a    => a,
            b    => b,
            sum  => w_sum1,
            cout => w_carry1
        );

    -- Instantiate the Second Half Adder (adds HA1_Sum and Cin)
    HA2: half_adder
        port map (
            a    => w_sum1,
            b    => cin,
            sum  => sum,
            cout => w_carry2
        );

    -- Final OR gate for the Carry Out
    cout <= w_carry1 or w_carry2;

end architecture structural;