--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is 
    Port(
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        s : in std_logic_vector(2 downto 0);
        f : out std_logic_vector(3 downto 0)
    );
end alu;

architecture selected_arch of alu is 
    begin 
        with s select 
        f <="0000" when "000",  -- a=0, b=0, c=0
        b- a when "001",  -- a=0, b=0, c=1
        a - b when "010",  -- a=0, b=1, c=0
        a + b when "011", 
            a xor b when "100",  -- a=1, b=0, c=0
            a or b when "101",  -- a=1, b=0, c=1
            a and b when "110",  -- a=1, b=1, c=0
            "1111" when "111",  -- a=1, b=1, c=1
            "0000" when others;
    end selected_arch;