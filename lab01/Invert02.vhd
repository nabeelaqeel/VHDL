--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity invert02 is 
	Port (A : in STD_LOGIC_VECTOR ( 3 downto 0);
	      comp2nd : out STD_LOGIC_VECTOR ( 3 downto 0)
	);

end invert02;

architecture gate_level of invert02 is 
	SIGNAL comp1st : STD_LOGIC_VECTOR (3 downto 0);
	SIGNAL carry : STD_LOGIC_VECTOR ( 3 downto 0);
begin

	comp1st <= not A;
	
	comp2nd (0) <= (comp1st (0) xor '1') xor '0';
	carry (0) <= (comp1st (0) and '1') xor ((comp1st (1) xor '1') and '0');

	comp2nd (1) <= (comp1st (1) xor '1') xor carry(0);
	carry (1) <= (comp1st (1) and '1') xor ((comp1st (1) xor '1') and carry (0));


	comp2nd (2) <= (comp1st (2) xor '1') xor carry(1);
	carry (2) <= (comp1st (2) and '1') xor ((comp1st (2) xor '1') and carry (1));

	comp2nd (3) <= (comp1st (3) xor '1') xor carry(2);
	carry (3) <= (comp1st (3) and '1') xor ((comp1st (3) xor '1') and carry (2));

end gate_level;