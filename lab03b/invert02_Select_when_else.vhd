--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity invert02 is
    port (
        inv : in std_logic_vector(3 downto 0);
        cout : out std_logic_vector(3 downto 0)
    );
end entity invert02;

architecture selected of invert02 is
    signal comp1st : std_logic_vector(3 downto 0);
    signal carry : std_logic_vector(3 downto 0);
begin
    -- First, invert the input bits
    comp1st <= not inv;

    -- Define cout(0) and carry(0)
    with comp1st(0) select
        cout(0) <= '1' when '1',
                   '0' when others;
    with comp1st(0) select
        carry(0) <= '1' when '1',
                    '0' when others;

    -- Define cout(1) and carry(1)
    with comp1st(1) select
        cout(1) <= carry(0) when '1',
                   '0' when others;
    with comp1st(1) select
        carry(1) <= carry(0) when '1',
                    '0' when others;

    -- Define cout(2) and carry(2)
    with comp1st(2) select
        cout(2) <= carry(1) when '1',
                   '0' when others;
    with comp1st(2) select
        carry(2) <= carry(1) when '1',
                    '0' when others;

    -- Define cout(3) and carry(3)
    with comp1st(3) select
        cout(3) <= carry(2) when '1',
                   '0' when others;
    with comp1st(3) select
        carry(3) <= carry(2) when '1',
                    '0' when others;

end architecture selected;
