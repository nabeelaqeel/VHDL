library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab03_q1 is 
	Port (A : in STD_LOGIC_VECTOR ( 3 downto 0);
	      comp2nd : out STD_LOGIC_VECTOR ( 3 downto 0)
	);

end lab03_q1;   


architecture conditional_arch of lab03_q1 is
    SIGNAL comp1st : STD_LOGIC_VECTOR (3 downto 0);

begin
    -- Compute one's complement
    comp1st <= not A;

    -- Compute two's complement using conditional signal assignment
    comp2nd(0) <= (comp1st(0) xor '1') when '1' = '1' else '0';
    comp2nd(1) <= (comp1st(1) xor '1') when (comp1st(0) = '1') else comp1st(1);
    comp2nd(2) <= (comp1st(2) xor '1') when (comp1st(1) = '1' and comp1st(0) = '1') else comp1st(2);
    comp2nd(3) <= (comp1st(3) xor '1') when (comp1st(2) = '1' and comp1st(1) = '1' and comp1st(0) = '1') else comp1st(3);

end conditional_arch;

architecture selected_arch of lab03_q1 is
    SIGNAL comp1st : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL carry : STD_LOGIC_VECTOR (3 downto 0);
begin
    -- Compute one's complement
    comp1st <= not A;

    -- Compute two's complement using selected signal assignment
    with (comp1st) select
        comp2nd <= "0001" when "0000",
                   "0010" when "0001",
                   "0011" when "0010",
                   "0100" when "0011",
                   "0101" when "0100",
                   "0110" when "0101",
                   "0111" when "0110",
                   "1000" when "0111",
                   "1001" when "1000",
                   "1010" when "1001",
                   "1011" when "1010",
                   "1100" when "1011",
                   "1101" when "1100",
                   "1110" when "1101",
                   "1111" when "1110",
                   "0000" when "1111",
                   "0000" when others; -- Default case for safety
end selected_arch;
