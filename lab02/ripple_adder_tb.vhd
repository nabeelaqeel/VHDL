LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ripple_adder_tb IS
END ripple_adder_tb;

ARCHITECTURE behavior OF ripple_adder_tb IS

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT ripple_adder
PORT(
A : IN std_logic_vector(15 downto 0);
B : IN std_logic_vector(15 downto 0);
Cin : IN std_logic;
S : OUT std_logic_vector(15 downto 0);
Cout : OUT std_logic
);
END COMPONENT;

--Inputs
signal A : std_logic_vector(15 downto 0) := (others => '0');
signal B : std_logic_vector(15 downto 0) := (others => '0');
signal Cin : std_logic := '0';

--Outputs
signal S : std_logic_vector(15 downto 0);
signal Cout : std_logic;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: ripple_adder PORT MAP (
A => A,
B => B,
Cin => Cin,
S => S,
Cout => Cout
);

-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
A <= "0110000000000001";
B <= "1100000000000000";
Cin =< '0';

wait for 100 ns;
A <= "0110000000000001";
B <= "1100000000000001";
Cin =< '0';

wait for 100 ns;
A <= "0110000000000001";
B <= "1100000000000011";
Cin =< '0';

wait for 100 ns;
A <= "0110000000000001";
B <= "1100000000000011";
Cin =< '0';

wait for 100 ns;
A <= "0110000000000111";
B <= "1100000000000001";
Cin =< '0';

wait;

end process;

END;