library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity q1_2 is
    Port ( x : in STD_LOGIC_VECTOR (2 downto 0);
           result : out STD_LOGIC);
end q1_2;

architecture gate_level of q1_2 is
begin
    result <= ( not x(1)) or (not x(1) and x(2)) or (x(0) and not x(2));
end gate_level;
