----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues 
-- Module Name: tb_xor_gate
-- Project Name: the-rtl-compendium
-- Description: Testbench for 2-input XOR gate logic.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_xor_gate is
--  Testbenches have no ports
end tb_xor_gate;

architecture behavioral of tb_xor_gate is

    -- Component Declaration for the UUT
    component xor_gate
        port ( a : in  STD_LOGIC;
               b : in  STD_LOGIC;
               y : out STD_LOGIC);
    end component;

    -- Signals to connect to UUT
    signal a : STD_LOGIC := '0';
    signal b : STD_LOGIC := '0';
    signal y : STD_LOGIC;
    
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: xor_gate port map (a => a, b => b, y => y);

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