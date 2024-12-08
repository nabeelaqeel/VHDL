library ieee;
use ieee.std_logic_1164.all;

entity tff_tb  is
end entity;

architecture behavioral of tff_tb is 

component tff
port(
    tin: in std_logic;
    clk: in std_logic;
    rst: in std_logic;
    tout: out std_logic
    );
end component;

signal tin_tb : std_logic := '0';
signal clk_tb : std_logic := '0';
signal rst_tb : std_logic := '1';
signal tout_tb :  std_logic;


constant clk_period : time := 10 ns;

begin

    uut : tff port map (tin_tb,clk_tb,rst_tb,tout_tb);

    clk_process :process
    begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
    end process;
  
    stim_proc: process
    begin  
  
    rst_tb <= '1';
    wait for 50 ns; 
  
    rst_tb <= '0';
    tin_tb <= '0';
    wait for 50 ns;
    
    rst_tb <= '0';
    tin_tb <= '1';  
    wait;
    
    end process;
  
  END;

