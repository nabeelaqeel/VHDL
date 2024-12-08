
--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity invert02_When_else is
    port (
        inv : in std_logic_vector(3 downto 0);
        cout : out std_logic_vector(3 downto 0)
    );
end entity invert02_When_else;

architecture gate_level of invert02_When_else is

    signal comp1st : std_logic_vector(3 downto 0);
    signal carry : std_logic_vector(3 downto 0);

begin

    comp1st <= not inv;

    cout(0) <= '1' when comp1st(0) = '1' else '0';
        carry(0) <= '1' when comp1st(0) = '1' else '0';
        
        cout(1) <= carry(0) when comp1st(1) = '1' else '0';
        carry(1) <= carry(0) when comp1st(1) = '1' else '0';
        
        cout(2) <= carry(1) when comp1st(2) = '1' else '0';
        carry(2) <= carry(1) when comp1st(2) = '1' else '0';
        
        cout(3) <= carry(2) when comp1st(3) = '1' else '0';
        carry(3) <= carry(2) when comp1st(3) = '1' else '0';
    
    
end architecture gate_level;