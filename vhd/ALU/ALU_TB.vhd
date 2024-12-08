--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE selected_arch OF ALU_TB IS
 
 -- Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT ALU
 Port(
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        s : in std_logic_vector(2 downto 0);
        f : out std_logic_vector(3 downto 0)
    );
 END COMPONENT;

   -- Signals to connect to the UUT
   signal a_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal b_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal s_tb : std_logic_vector(2 downto 0) := (others => '0');
   signal f_tb : std_logic_vector(3 downto 0);


 BEGIN

 uut : ALU PORT MAP (

a => a_tb,
b => b_tb,
s => s_tb,
f => f_tb

 );

 stim_proc : process
 begin

    a_tb <= "1111";
    b_tb <= "1100";
    s_tb <= "000";
    wait for 10 ns;
    a_tb <= "0010";
    b_tb <= "0010";
    s_tb <= "001";
    wait for 10 ns;
    a_tb <= "0010";
    b_tb <= "0010";
    s_tb <= "010";
    wait for 10 ns;
    a_tb <= "0010";
    b_tb <= "0010";
    s_tb <= "011";
    wait for 10 ns;
    a_tb <= "0010";
    b_tb <= "0010";
    s_tb <= "100";
    wait for 10 ns;
    a_tb <= "0010";
    b_tb <= "0010";
    s_tb <= "101";
    wait for 10 ns;
    a_tb <= "0010";
    b_tb <= "0010";
    s_tb <= "110";
    wait for 10 ns;
    a_tb <= "0001";
    b_tb <= "0010";
    s_tb <= "111";
    wait for 10 ns;


    wait;


 end process;

 end selected_arch;