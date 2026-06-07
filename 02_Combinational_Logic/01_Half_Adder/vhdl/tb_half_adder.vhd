----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues 
-- Module Name: tb_half_adder
-- Project Name: the-rtl-compendium
-- Description: Testbench for 1-bit Half Adder combinational logic circuit.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_half_adder is
--  Testbenches have no ports
end tb_half_adder;

architecture behavioral of tb_half_adder is

    -- Component Declaration for the UUT
    component half_adder
        port ( a : in  STD_LOGIC;
               b : in  STD_LOGIC;
               sum : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;

    -- Signals to connect to UUT
    signal a : STD_LOGIC := '0';
    signal b : STD_LOGIC := '0';
    signal sum : STD_LOGIC;
    signal cout : STD_LOGIC;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: half_adder port map (a => a, b => b, sum => sum, cout => cout);

    -- Stimulus process
    stim_proc: process
    begin		
        a <= '0'; b <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; wait for 10 ns;
        
        report "Simulation Finished" severity note;
        wait; -- Stop simulation
    end process;

end behavioral;