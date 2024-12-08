library ieee;
use ieee.std_logic_1164.all;

entity jkff is 
port(
    jin: in std_logic;
    kin: in std_logic;
    clk: in std_logic;
    rst: in std_logic;
    jkout : out std_logic
    );

end entity;

architecture behavioral of jkff is 

    signal q : std_logic := '0';

    begin

        process(jin,kin,clk,rst)

        begin

        if rst='1' then q<= '0' ;

        elsif (rising_edge(clk)) then 
            if jin = '1' then q <= '1' ;
            elsif kin ='1' then q <= '0';
            
            end if;
            end if;


        end process;

        jkout <= q;

        end architecture;