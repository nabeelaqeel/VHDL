library ieee;
use ieee.std_logic_1164.all;

entity hex_7seg is 
    port (
        bi_bar : in std_logic; -- blanking input
        lt_bar : in std_logic; -- lamp test input
        dcba : in std_logic_vector (3 downto 0); -- Hexadecimal input
        seg : out std_logic_vector(6 downto 0) -- segments in order from a to g
    );
end hex_7seg;

architecture conditional of hex_7seg is
begin
    seg <= "1111111" when bi_bar = '0' else
           "0000000" when lt_bar = '0' else
           "0000001" when (dcba = "0000") else -- 0
           "1001111" when (dcba = "0001") else -- 1
           "0010010" when (dcba = "0010") else -- 2
           "0000110" when (dcba = "0011") else -- 3
           "1001100" when (dcba = "0100") else -- 4
           "0100100" when (dcba = "0101") else -- 5
           "1100000" when (dcba = "0110") else -- 6
           "0001111" when (dcba = "0111") else -- 7
           "0000000" when (dcba = "1000") else -- 8
           "0001100" when (dcba = "1001") else -- 9
           "0001000" when (dcba = "1010") else -- A
           "1100000" when (dcba = "1011") else -- B
           "0110001" when (dcba = "1100") else -- C
           "1000010" when (dcba = "1101") else -- D
           "0110000" when (dcba = "1110") else -- E
           "0111000" when (dcba = "1111") else -- F
           "1111111"; -- Default for invalid input

end conditional;
