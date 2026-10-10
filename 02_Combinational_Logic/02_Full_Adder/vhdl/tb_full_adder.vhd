----------------------------------------------------------------------------------
-- Author: Dwayne E. Rodrigues
-- Module Name: tb_full_adder
-- Project Name: the_rtl_compendium
-- Description: Common testbench to verify both Dataflow and Structural models.
--  * * Compendium Note: Instantiates both architectures side-by-side to 
--  * * prove logical equivalence across different modeling techniques.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_full_adder is
-- Testbenches have no ports
end tb_full_adder;

architecture behavioral of tb_full_adder is

    -- Component Declarations
    component full_adder_dataflow is
        port ( a    : in  STD_LOGIC;
               b    : in  STD_LOGIC;
               cin  : in  STD_LOGIC;
               sum  : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;

    component full_adder_structural is
        port ( a    : in  STD_LOGIC;
               b    : in  STD_LOGIC;
               cin  : in  STD_LOGIC;
               sum  : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;

    -- Stimulus Signals
    signal a   : STD_LOGIC := '0';
    signal b   : STD_LOGIC := '0';
    signal cin : STD_LOGIC := '0';

    -- Output Signals (Dataflow)
    signal sum_df  : STD_LOGIC;
    signal cout_df : STD_LOGIC;

    -- Output Signals (Structural)
    signal sum_st  : STD_LOGIC;
    signal cout_st : STD_LOGIC;

begin
    -- Instantiate Dataflow Module
    UUT_DF: full_adder_dataflow
        port map (
            a    => a,
            b    => b,
            cin  => cin,
            sum  => sum_df,
            cout => cout_df
        );

    -- Instantiate Structural Module
    UUT_ST: full_adder_structural
        port map (
            a    => a,
            b    => b,
            cin  => cin,
            sum  => sum_st,
            cout => cout_st
        );

    -- Stimulus Process
    stim_proc: process
        variable temp_vec : unsigned(2 downto 0);
    begin    
        -- Sweep through all 8 input combinations (2^3)
        for i in 0 to 7 loop
            temp_vec := to_unsigned(i, 3);
            
            -- Assign bits from the unsigned vector to our individual input signals
            a   <= temp_vec(2);
            b   <= temp_vec(1);
            cin <= temp_vec(0);
            
            wait for 10 ns;
        end loop;
        
        report "Simulation Complete" severity note;
        wait; -- Halts the process indefinitely
    end process;

end behavioral;