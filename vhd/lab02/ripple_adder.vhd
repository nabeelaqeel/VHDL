library ieee;
use ieee.std_logic_1164.all;
use work.fulladd_package.all;

entity ripple_adder is 

Port (
    A : in STD_LOGIC_VECTOR (15 downto 0);
    B : in STD_LOGIC_VECTOR (15 downto 0);
    Cin : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR(15 downto 0);
    Cout : out STD_LOGIC

);

end ripple_adder;



Architecture structure of ripple_adder is 
    signal c : std_logic_vector (1 to 15);

begin 
    stage0 : FullAdder port map ( Cin , A(0), B(0) , S(0) , c(1));
    stage1 : FullAdder port map ( C(1) , A(1), B(1) , S(1) , c(2));
    stage2 : FullAdder port map ( C(2) , A(2), B(2) , S(2) , c(3));
    stage3 : FullAdder port map ( C(3) , A(3), B(3) , S(3) , c(4));
    stage4 : FullAdder port map ( C(4) , A(4), B(4) , S(4) , c(5));
    stage5 : FullAdder port map ( C(5) , A(5), B(5) , S(5) , c(6));
    stage6 : FullAdder port map ( C(6) , A(6), B(6) , S(6) , c(7));
    stage7 : FullAdder port map ( C(7) , A(7), B(7) , S(7) , c(8));
    stage8 : FullAdder port map ( C(8) , A(8), B(8) , S(8) , c(9));
    stage9 : FullAdder port map ( C(9) , A(9), B(9) , S(9) , c(10));
    stage10 : FullAdder port map ( C(10) , A(10), B(10) , S(10) , c(11));
    stage11 : FullAdder port map ( C(11), A(11), B(11) , S(11) , c(12));
    stage12 : FullAdder port map ( C(12), A(12), B(12) , S(12) , c(13));
    stage13 : FullAdder port map ( C(13), A(13), B(13) , S(13) , c(14));
    stage14 : FullAdder port map ( C(14), A(14), B(14) , S(14) , c(15));
    stage15 : FullAdder port map ( C(15), A(15), B(15) , S(15) , Cout);

end structure;