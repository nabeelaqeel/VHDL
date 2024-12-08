--name : MUHAMMAD NABEEL AQEEL BIN MOHAMMAD NASSER
--matrix number : 22002071/2 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity De2421toBCD_tb is 
end De2421toBCD_tb;

architecture selected_arch of De2421toBCD_tb is 

component De2421toBCD
    Port(
        a : in std_logic_vector (3 downto 0);
        y : out std_logic_vector (3 downto 0)
    );
end component;

signal a_tb :  std_logic_vector (3 downto 0) := (others => '0');
signal y_tb :  std_logic_vector (3 downto 0) ;


begin

    uut : De2421toBCD port map (

        a => a_tb,
        y => y_tb
    );

stim_proc : process
begin 

    a_tb <= "0000";
    wait for 10 ns;
    a_tb <= "0001";
    wait for 10 ns;
    a_tb <= "0010";
    wait for 10 ns;
    a_tb <= "0011";
    wait for 10 ns;
    a_tb <= "0100";
    wait for 10 ns;
    a_tb <= "1011";
    wait for 10 ns;
    a_tb <= "1100";
    wait for 10 ns;
    a_tb <= "1101";
    wait for 10 ns;
    a_tb <= "1110";
    wait for 10 ns;
    a_tb <= "1111";
    wait for 10 ns;

    wait;

    end process;

    end selected_arch;
    