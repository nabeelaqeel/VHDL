--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 

library ieee;
use ieee.std_logic_1164.all;

entity Invert02component is
    port (
        a    : in  std_logic;
        b    : in std_logic;
        cin  : in  std_logic;
        y    : out std_logic;
        c    : out std_logic
    );
end entity Invert02component;

architecture Behavioral of Invert02component is
begin
   
    y <= cin xor (b xor (not a));
    c <= (cin and (b xor (not a))) xor (b and (not a));


end architecture Behavioral;