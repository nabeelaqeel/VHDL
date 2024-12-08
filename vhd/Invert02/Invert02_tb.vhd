LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY inver02_tb IS
END inver02_tb;
 
ARCHITECTURE behavior OF inver02_tb IS
 
 -- Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT invert02
 PORT(
    inv : in std_logic_vector(3 downto 0);
    cout : out std_logic_vector(3 downto 0)
 );
 END COMPONENT;

 signal inv_tb : std_logic_vector (3 downto 0);
 signal cout_tb : std_logic_vector(3 downto 0);

 BEGIN

 uut : invert02 PORT MAP (

inv => inv_tb,
cout => cout_tb

 );

 stim_proc : process
 begin

    inv_tb <= "0000";
    wait for 10 ns;
    inv_tb <= "0001";
    wait for 10 ns;
    inv_tb <= "0010";
    wait for 10 ns;
    inv_tb <= "0011";
    wait for 10 ns;
    inv_tb <= "0100";
    wait for 10 ns;
    inv_tb <= "0101";
    wait for 10 ns;
    inv_tb <= "0110";
    wait for 10 ns;
    inv_tb <= "0111";
    wait for 10 ns;
    inv_tb <= "1001";
    wait for 10 ns;
    inv_tb <= "1010";
    wait for 10 ns;
    inv_tb <= "1011";
    wait for 10 ns;
    inv_tb <= "1100";
    wait for 10 ns;
    inv_tb <= "1101";
    wait for 10 ns;
    inv_tb <= "1110";
    wait for 10 ns;
    inv_tb <= "1111";
    wait for 10 ns;

 end process;

 end;