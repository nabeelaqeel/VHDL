library ieee;
use ieee.std_logic_1164.all;

entity Parallel_adder is 
    port(
        Cin : in std_logic;
        x , y : in std_logic_vector(3 downto 0);
        s : out std_logic_vector (3 downto 0);
        Cout : out std_logic
    );

end entity;

architecture structure of Parallel_adder is 
    
    component FullAdder 
        
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Cin : in STD_LOGIC;
        S : out STD_LOGIC;
        Cout : out STD_LOGIC );
    
    end component;

    signal c : std_logic_vector(2 downto 0);

begin

    stage0 : FullAdder port map (x(0),y(0),Cin,s(0),c(0));
    stage1 : FullAdder port map (x(1),y(1),c(0),s(1),c(1));
    stage2 : FullAdder port map (x(2),y(2),c(1),s(2),c(2));
    stage3 : FullAdder port map (x(3),y(3),c(2),s(3),Cout);

end architecture;