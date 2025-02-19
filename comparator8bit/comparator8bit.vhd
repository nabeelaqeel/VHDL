library ieee;
use ieee.std_logic_1164.all;

entity comparator8bit is 

    port(
        a ,b : in std_logic_vector(7 downto 0);
        cmp_in : in std_logic_vector (1 downto 0);
        cmp_out : out std_logic_vector(1 downto 0)
    );

end entity;

architecture structure of comparator8bit is 

    component comparator1bit 
    port(
        x_in , y_in , a , b: in std_logic;
        x_out , y_out : out std_logic
    );
    end component;

    signal  int_x ,int_y: std_logic_vector (7 downto 1);

begin

    stage0 : comparator1bit port map (cmp_in(1),cmp_in(0),a(7),b(7),int_x(7),int_y(7));

    G0: for i in 6 downto 1 generate
     stage1 : comparator1bit port map (int_x(i + 1),int_y(i + 1),a(i),b(i),int_x(i),int_y(i));

    end generate;

    stage2 : comparator1bit port map (int_x(1),int_y(1),a(0),b(0),cmp_out(1),cmp_out(0));


end structure;