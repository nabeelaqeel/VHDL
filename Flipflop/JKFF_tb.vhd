library ieee;
use ieee.std_logic_1164.all;

entity jkff_tb is 
end entity;

architecture behavioral of jkff_tb is 

component jkff 
port(
    jin: in std_logic;
    kin: in std_logic;
    clk: in std_logic;
    rst: in std_logic;
    jkout : out std_logic
    );
end component;


signal jin, kin, clk: std_logic := '0';
signal rst : std_logic := '1' ;
signal jkout : std_logic;


constant clk_period : time := 10 ns;

begin
    uut : jkff port map (jin,kin,clk,rst,jkout);

    
  clk_process :process
  begin
  clk <= '0';
  wait for clk_period/2;
  clk <= '1';
  wait for clk_period/2;
  end process;

  stim_proc: process
  begin  

  rst <= '1';
  wait for 50 ns; 

  rst <= '0';
  jin <= '0';
  kin <= '0';
  wait for 50 ns;
  rst <= '0';
  jin <= '0';
  kin <= '1';
  wait for 50 ns;
  rst <= '0';
  jin <= '1';
  kin <= '0';
  wait;
  
  end process;

END;

