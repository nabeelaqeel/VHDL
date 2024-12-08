


library ieee;
 use ieee.std_logic_1164.all;

 entity comparator1bit_tb is 
 end entity comparator1bit_tb;

architecture structure of comparator1bit_tb is 

component comparator1bit
port(
    x_in , y_in , a , b: in std_logic;
    x_out , y_out : out std_logic
);
end component;

signal x_in_tb ,y_in_tb ,a_tb ,b_tb ,x_out_tb ,y_out_tb : std_logic;

begin 
dut : comparator1bit port map ( x_in_tb ,y_in_tb ,a_tb ,b_tb ,x_out_tb ,y_out_tb);


stim_proc : process

begin

x_in_tb <= '0';
y_in_tb <= '0';
a_tb <= '0';
b_tb <= '0';
wait for 10 ns;
x_in_tb <= '0';
y_in_tb <= '0';
a_tb <= '1';
b_tb <= '0';
wait for 10 ns;
x_in_tb <= '0';
y_in_tb <= '0';
a_tb <= '0';
b_tb <= '1';
wait for 10 ns;
x_in_tb <= '1';
y_in_tb <= '0';
a_tb <= '0';
b_tb <= '1';
wait for 10 ns;
x_in_tb <= '1';
y_in_tb <= '0';
a_tb <= '1';
b_tb <= '0';
wait for 10 ns;
x_in_tb <= '1';
y_in_tb <= '1';
a_tb <= '1';
b_tb <= '0';
wait for 10 ns;
x_in_tb <= '0';
y_in_tb <= '1';
a_tb <= '1';
b_tb <= '0';
wait for 10 ns;

wait;

end process;
end;

