--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity De2421toBCD is 
    port (
        a : in std_logic_vector (3 downto 0);
        y : out std_logic_vector (3 downto 0)
    );

end entity De2421toBCD;

architecture selected_arch of De2421toBCD is 

    begin 

    with a select 

        y <= "0000" when "0000",
             "0001" when "0001",
             "0010" when "0010",
             "0011" when "0011",
             "0100" when "0100",
             "0101" when "1011",
             "0110" when "1100",
             "0111" when "1101",
             "1000" when "1110",
             "1001" when "1111",
	     "0000" when others;
             
    end selected_arch;
