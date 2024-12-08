library ieee;
use ieee.std_logic_1164.ALL;

entity q3_tb is
end q3_tb;

architecture gate_level of q3_tb is 

component q3 is 
    Port(
        x : in std_logic_vector (3 downto 0);
        f1 : out std_logic;
        f2 : out std_logic
    );

end component;

signal x_tb : std_logic_vector (3 downto 0);
signal f1_tb : std_logic;
signal f2_tb : std_logic;

begin 

    uut : q3 port map (
        x => x_tb,
        f1 => f1_tb,
        f2 => f2_tb
    );



stim_process : process

begin

x_tb <= "0000";
wait for 10 ns;
x_tb <= "0001";
wait for 10 ns;
x_tb <= "0010";
wait for 10 ns;
x_tb <= "0011";
wait for 10 ns;
x_tb <= "0101";
wait for 10 ns;
x_tb <= "0110";
wait for 10 ns;
x_tb <= "0111";
wait for 10 ns;
x_tb <= "1000";
wait for 10 ns;
x_tb <= "1001";
wait for 10 ns;
x_tb <= "1010";
wait for 10 ns;
x_tb <= "1011";
wait for 10 ns;
x_tb <= "1100";
wait for 10 ns;
x_tb <= "1101";
wait for 10 ns;
x_tb <= "1110";
wait for 10 ns;
x_tb <= "1111";
wait for 10 ns;

end process;

end;

    
