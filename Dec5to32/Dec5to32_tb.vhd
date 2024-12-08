library ieee;
use ieee.std_logic_1164.all;

entity dec5to32_tb is
end entity ;

architecture structural of dec5to32_tb is 

component dec5to32

PORT (
        w  : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
        En : IN  STD_LOGIC;
        y  : OUT STD_LOGIC_VECTOR(0 TO 31)
    );

end component;

signal w_tb  :  STD_LOGIC_VECTOR(4 DOWNTO 0):= (others => '0');
signal En_tb :  STD_LOGIC ;
signal y_tb  :  STD_LOGIC_VECTOR(0 TO 31);


begin

    dut : dec5to32 port map(

        w => w_tb,
        En => En_tb,
        y => y_tb
    );

stim_proc : process

begin

w_tb <= "10000";
En_tb <= '1';
wait for 10 ns;
w_tb <= "10010";
En_tb <= '0';
wait for 10 ns;
w_tb <= "10011";
En_tb <= '1';
wait for 10 ns;
w_tb <= "11111";
En_tb <= '1';
wait for 10 ns;

wait;

end process;
end;



