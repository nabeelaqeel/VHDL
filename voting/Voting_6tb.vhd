library ieee;
use ieee.std_logic_1164.all;

entity Voting_6tb is 
end entity Voting_6tb;

architecture structural of Voting_6tb is

    component Voting_6
    port (
        a : in std_logic_vector(5 downto 0);
        y : out std_logic_vector(3 downto 0)
    );

    end component;

signal a_tb : std_logic_vector(5 downto 0) := (others => '0');
signal y_tb : std_logic_vector(3 downto 0);

begin

    dut : Voting_6 port map(a_tb,y_tb);

    stim_process : process

    begin

    
a_tb <= "000000";
wait for 10 ns;
a_tb <= "001000";
wait for 10 ns;
a_tb <= "101000";
wait for 10 ns;
a_tb <= "011110";
wait for 10 ns;

wait;

    end process;
    end;