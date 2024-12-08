library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity invert02 is
    port (
        inv : in std_logic_vector(3 downto 0);
        cout : out std_logic_vector(3 downto 0)
    );
end entity invert02;

architecture gate_level of invert02 is
    signal comp1st : std_logic_vector(3 downto 0);
    signal carry : std_logic_vector(3 downto 0);
begin

    comp1st <= not inv;

    cout(0) <= '0' xor ('1' xor comp1st(0));
    carry(0) <= '1' and comp1st(0);

    cout(1) <= carry(0) xor ('0' xor comp1st(1));
    carry(1) <= carry(0) and comp1st(1);

    cout(2) <= carry(1) xor ('0' xor comp1st(2));
    carry(2) <= carry(1) and comp1st(2);

    cout(3) <= carry(2) xor ('0' xor comp1st(3));
    carry(3) <= carry(2) and comp1st(3);

end architecture gate_level;
