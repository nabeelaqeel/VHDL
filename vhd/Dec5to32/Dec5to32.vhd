LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dec5to32 IS
    PORT (
        w  : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
        En : IN  STD_LOGIC;
        y  : OUT STD_LOGIC_VECTOR(0 TO 31)
    );
END dec5to32;

ARCHITECTURE Structure OF dec5to32 IS

    COMPONENT dec2to4
        PORT (
            w  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
            En : IN  STD_LOGIC;
            y  : OUT STD_LOGIC_VECTOR(0 TO 3)
        );
    END COMPONENT;

    COMPONENT dec4to16
        PORT (
            w  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            En : IN  STD_LOGIC;
            y  : OUT STD_LOGIC_VECTOR(0 TO 15)
        );
    END COMPONENT;

    SIGNAL m : STD_LOGIC_VECTOR(0 TO 3);
    signal n : std_logic_vector(0 to 1);

BEGIN

    G1 : dec2to4 
    PORT MAP (w(4 DOWNTO 3), En, m);

    n(0) <= m(0) or m(1);
    n(1) <= m(2) or m(3);

    G0 : for i in 0 to 1 generate
    Dec_ri : dec4to16 
        PORT MAP (w(3 DOWNTO 0), n(i), y(i*16 TO i*16 + 15));
    end generate;

    
    
        

end Structure;