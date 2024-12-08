library ieee;
use ieee.STD_LOGIC_1164.ALL;

entity q1 is 
    Port ( 
    a : in std_logic_vector (2 downto 0);
    b : in std_logic ;
    c : in std_logic_vector (1 downto 0);
    result : out std_logic ;
    );

end q1;

architecture gate_level of q1 is 
    SIGNAL  invert_A : std_logic_vector (2 downto 0);
    SIGNAL  invert_B : std_logic ;
    SIGNAL invert_C : std_logic_vector(1 downto 0);
    

begin 

    invert_A <= not a;
    invert_B <= not b;
    invert_C <= not c;

    result <= (invert_A(0) and invert_B ) or (invert_A (1) and c(0)) or (a(2) and invert_C(1));


end gate_level;