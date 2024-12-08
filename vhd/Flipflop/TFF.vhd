library ieee;
use ieee.std_logic_1164.all;

entity tff is 
    port(
    tin: in std_logic;
    clk: in std_logic;
    rst: in std_logic;
    tout: out std_logic
    );

end entity;

architecture behavioral of tff is

    signal q : std_logic := '0';

    begin

        process(tin,clk,rst)

        begin

            if rst='1' then q<= '0' ;

            elsif (rising_edge(clk)) then 
                if tin='1' then
            q <= (not q);

            end if;
            end if;



        end process;

        tout <= q;

    end architecture;