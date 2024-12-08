--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 

library ieee;
use ieee.std_logic_1164.all;

entity twobytwo is
    Port (
        a , b : in std_logic_vector (1 downto 0);
        p : out std_logic_vector (3 downto 0)
    );
end twobytwo;

architecture conditional of twobytwo is 

    begin 
        p <= "0000" when a = "00" or b = "00" else
            "00" & a when b = "01" else
            "00" & b when a = "01" else
            "0100" when b = "10" and a = "10" else
            "0110" when (b = "11" and a = "10" ) or (a = "11" and b = "10") else
            "1001" ;


    end conditional;
            
            


