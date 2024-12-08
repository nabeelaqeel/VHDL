--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 


library ieee;
use ieee.std_logic_1164.all;

entity invert02struct is 

    Port (
        a : in std_logic_vector (3 downto 0);
        y : out std_logic_vector(3 downto 0);
        Cout : out std_logic
    );

end entity;

architecture structure of invert02struct is
    
    component Invert02component
    port(
        a : in std_logic;
        b : in std_logic;
        cin : in std_logic;
        y : out std_logic;
        c : out std_logic
    );
    end component;

    
    signal c : std_logic_vector(2 downto 0);
begin 

    stage0 : Invert02component port map (a(0),'1','0',y(0),c(0));
    stage1 : Invert02component port map (a(1),'0',c(0),y(1),c(1));
    stage2 : Invert02component port map (a(2),'0',c(1),y(2),c(2));
    stage3 : Invert02component port map (a(3),'0',c(2),y(3),Cout);

    
end architecture;