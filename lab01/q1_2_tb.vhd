library ieee;
use ieee.std_logic_1164.ALL;

entity q1_2_tb is 
end q1_2_tb;

architecture gate_level of q1_2_tb is 

component q1_2
port(
    
    x : in std_logic_vector (2 downto 0);
    result : out std_logic
);

end component;

signal x_tb : std_logic_vector (2 downto 0);
signal result_tb : std_logic;

begin

    uut : q1_2 PORT MAP (
        x => x_tb,
        result => result_tb
    );

stim_process : process

begin

    x_tb <= "000";
    wait for 10 ns;
    x_tb <= "001";
    wait for 10 ns;
    x_tb <= "010";
    wait for 10 ns;
    x_tb <= "011";
    wait for 10 ns;
    x_tb <= "100";
    wait for 10 ns;
    x_tb <= "101";
    wait for 10 ns;
    x_tb <= "110";
    wait for 10 ns;
    x_tb <= "111";
    wait for 10 ns;


end process;

end;