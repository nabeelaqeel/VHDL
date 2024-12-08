--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Q4 is
    port (
        a : in STD_LOGIC;
        b : in STD_LOGIC;
        c : in STD_LOGIC;
        output : out STD_LOGIC
    );
end entity Q4;

architecture dataflow of Q4 is
    
begin
    
    output <= not (a and b and c);
    
    
end architecture dataflow;
