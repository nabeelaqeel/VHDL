library ieee;
use ieee.std_logic_1164.all;

package fulladd_package

    component fulladd

    Port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC);

    end component;

end fulladd_package