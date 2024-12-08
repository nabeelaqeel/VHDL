library ieee;
use ieee.std_logic_1164.ALL;

entity q3 is
    Port(
        x : in std_logic_vector (3 downto 0);
        f1 : out std_logic;
        f2 : out std_logic
    );

end q3;

architecture gate_level of q3 is 
begin
    f1 <= (x(0) and x(2)) or (not x(0) and not x(2)) or (x(1) and x(3)) or (not  x(1) and not x(3));

    f2 <= (x(0) and x(1) and not x(2) and not x(3)) or (not x(0) and not x(1) and x(2) and x(3)) or (x(0) and not x(1) and not x(2) and x(3)) or (not x(0) and x(1) and x(2)and not x(3));

end gate_level;
