library ieee;
use ieee.std_logic_1164.all;

entity Voting_6 is 
    port (
        a : in std_logic_vector(5 downto 0);
        y : out std_logic_vector(3 downto 0)
    );
end entity;

architecture structure of Voting_6 is

    component FullAdder 
    Port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC );
    
    end component;

    component Parallel_adder 
    port(
        Cin : in std_logic;
        x , y : in std_logic_vector(3 downto 0);
        s : out std_logic_vector (3 downto 0);
        Cout : out std_logic
    );

    end component;

    signal sum : std_logic_vector(1 downto 0);
    signal cfull : std_logic_vector(1 downto 0);
    signal a_parallel : std_logic_vector(7 downto 0);
    signal cout_parallel : std_logic;

begin

    G1 : for i in 0 to 1 generate
        left : FullAdder port map (a(i*3),a(i*3+1),a(i*3+2),sum(i),cfull(i));

        end generate;
    a_parallel(0) <= sum(0);
    a_parallel(1) <= cfull(0);
    a_parallel(2) <= '0';
    a_parallel(3) <= '0';
    a_parallel(4) <= sum(1);
    a_parallel(5) <= cfull(1);
    a_parallel(6) <= '0';
    a_parallel(7) <= '0';

     right : Parallel_Adder port map ('0',a_parallel(3 downto 0),a_parallel(7 downto 4),y,cout_parallel); 

end architec
 