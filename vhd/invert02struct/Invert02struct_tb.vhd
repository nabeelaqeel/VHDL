--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Invert02struct_tb is
end entity Invert02struct_tb;

architecture structural of Invert02struct_tb is

component Invert02struct

Port (
    a : in std_logic_vector (3 downto 0);
    y : out std_logic_vector(3 downto 0);
    Cout : out std_logic
);

end component;

signal a_tb : std_logic_vector (3 downto 0) := (others => '0');
signal y_tb : std_logic_vector(3 downto 0);
signal Cout_tb : std_logic;

begin 

dut : Invert02struct Port map (

a => a_tb,
y => y_tb,
Cout => Cout_tb
);

stim_proc : process

begin 

a_tb <= "0000";
wait for 10 ns;
a_tb <= "0010";
wait for 10 ns;
a_tb <= "1010";
wait for 10 ns;
a_tb <= "0100";
wait for 10 ns;

wait;

end process;

end;