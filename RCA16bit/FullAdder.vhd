--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 

library ieee;
use ieee.std_logic_1164.all;


    entity FullAdder is 

    Port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC );

    end entity;

architecture concurrent of FullAdder is 

begin 

S <= Cin xor (A xor B);
Cout <= (A and B) xor (Cin and (A xor B));

end architecture;