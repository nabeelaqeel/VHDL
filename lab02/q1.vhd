--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


library ieee;
use ieee.std_logic_1154.ALL;

entity mux is 
    port (
        a : in std_logic;
        b : in std_logic;
        s : in std_logic;
        c : out std_logic
    );

end mux;

architecture dataflow of mux is

begin 

    c <= (not s and a) or (s and b);

end dataflow;