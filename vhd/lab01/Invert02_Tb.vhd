--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY Testbench_invert02 is 
END Testbench_invert02;

ARCHITECTURE behavior of Testbench_invert02 is

COMPONENT invert02
PORT(

	A: in std_logic_vector ( 3 downto 0 ) ;
	comp2nd : out std_logic_vector (3 downto 0)
);
END COMPONENT;

signal A_tb : std_logic_vector ( 3 downto  0 );
signal comp2nd_tb : std_logic_vector (3 downto 0);

BEGIN

uut : invert02 PORT MAP (
	A => A_tb,
	comp2nd => comp2nd_tb
);


stim_process :  process
begin

    A_tb <= "0000";
    wait for 10 ns;
    A_tb <= "0001";
    wait for 10 ns;
    A_tb <= "0010";
    wait for 10 ns;
    A_tb <= "0011";
    wait for 10 ns;
    A_tb <= "0100";
    wait for 10 ns;
    A_tb <= "0101";
    wait for 10 ns;
    A_tb <= "0110";
    wait for 10 ns;
    A_tb <= "0111";
    wait for 10 ns;
    A_tb <= "1000";
    wait for 10 ns;
    A_tb <= "1001";
    wait for 10 ns;
    A_tb <= "1010";
    wait for 10 ns;
    A_tb <= "1011";
    wait for 10 ns;
    A_tb <= "1100";
    wait for 10 ns;
    A_tb <= "1101";
    wait for 10 ns;
    A_tb <= "1110";
    wait for 10 ns;
    A_tb <= "1111";
    wait for 10 ns;

 end process;

 end;

