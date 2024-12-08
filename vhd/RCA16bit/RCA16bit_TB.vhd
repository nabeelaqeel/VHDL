--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RCA16bit_tb IS
END RCA16bit_tb;

ARCHITECTURE behavior OF RCA16bit_tb IS

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT RCA16bit
PORT(
A : IN std_logic_vector(15 downto 0);
B : IN std_logic_vector(15 downto 0);
Cin : IN std_logic;
S : OUT std_logic_vector(15 downto 0);
Cout : OUT std_logic
);
END COMPONENT;

--Inputs
signal A_tb : std_logic_vector(15 downto 0) := (others => '0');
signal B_tb : std_logic_vector(15 downto 0) := (others => '0');
signal Cin_tb : std_logic := '0';

--Outputs
signal S_tb : std_logic_vector(15 downto 0);
signal Cout_tb : std_logic;

BEGIN


dut: RCA16bit PORT MAP (
A => A_tb,
B => B_tb,
Cin => Cin_tb,
S => S_tb,
Cout => Cout_tb
);


stim_proc: process
begin

wait for 100 ns;
A_tb <= "0110000000000001";
B_tb <= "1100000000000000";
Cin_tb <= '0';

wait for 100 ns;
A_tb <= "0110000000000001";
B_tb <= "1100000000000001";
Cin_tb <= '0';

wait for 100 ns;
A_tb <= "0110000000000001";
B_tb <= "1100000000000011";
Cin_tb <= '0';

wait for 100 ns;
A_tb <= "0110000000000001";
B_tb <= "1100000000000011";
Cin_tb <= '0';

wait for 100 ns;
A_tb <= "0110000000000111";
B_tb <= "1100000000000001";
Cin_tb <= '0';

wait;

end process;

END;