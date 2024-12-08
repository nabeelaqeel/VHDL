library ieee;
use ieee.std_logic_1164.ALL;

entity q1_tb is
end q1_tb;

architecture behavior of q1_tb is

component q1
Port(
    x : in std_logic_vector (2 downto 0);
    result : out std_logic
);
end component;

signal A_tb : std_logic_vector (2 downto 0);
signal B_tb : std_logic;
signal C_tb : std_logic_vector(1 downto 0);
signal result_tb : std_logic;

begin

    uut : q1 PORT MAP (
        a => A_tb,
        b => B_tb,
        c => C_tb,
        result => result_tb
    );

stim_process : process
begin   

    A_tb <= "000";
    wait for 10 ns;
    A_tb <= "001";
    wait for 10 ns;
    A_tb <= "010";
    wait for 10 ns;
    A_tb <= "011";
    wait for 10 ns;
    A_tb <= "100";
    wait for 10 ns;
    A_tb <= "101";
    wait for 10 ns;
    A_tb <= "110";
    wait for 10 ns;
    A_tb <= "111";
    wait for 10 ns;
    B_tb <= '0';
    wait for 10 ns;
    B_tb <= '1';
    wait for 10 ns;
    C_tb <= "00";
    wait for 10 ns;
    C_tb <= "01";
    wait for 10 ns;
    C_tb <= "10";
    wait for 10 ns;
    C_tb <= "11";
    wait for 10 ns;

end process;

end;