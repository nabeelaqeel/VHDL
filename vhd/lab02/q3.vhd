--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Q3 is
    port (
        a : in STD_LOGIC;
        b : in STD_LOGIC;
        c : in STD_LOGIC;
        x : out STD_LOGIC;
        y : out STD_LOGIC
    );
end entity Q3;

architecture dataflow of Q3 is
    
begin
    
    x <= ((not a) and (not b) and c) OR
         (a and (not b) and (not c));

    y <= ((not a) and (not b) and (not c)) OR
         (not a and b and (not c)) OR
         (a and b and c);
    
end architecture dataflow;