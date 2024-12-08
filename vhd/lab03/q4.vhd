library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity two_out_tt is
    Port (
        s : in std_logic_vector(2 downto 0);
        x : out std_logic;
        y : out std_logic
    );
end two_out_tt;

architecture table_lookup of two_out_tt is
    type table is array (0 to 7) of std_logic_vector(1 downto 0);
    constant outputs : table := (
        "10",  -- 000
        "0-",  -- 001
        "10",  -- 010
        "0-",  -- 011
        "00",  -- 100
        "-1",  -- 101
        "00",  -- 110
        "11"   -- 111
    );
begin
    process(s)
    begin
        x <= outputs(to_integer(unsigned(s)))(1);
        y <= outputs(to_integer(unsigned(s)))(0);
    end process;
end table_lookup;