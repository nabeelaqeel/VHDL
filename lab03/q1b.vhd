library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity function_g is
    Port (
        s : in std_logic_vector(2 downto 0);
        g : out STD_LOGIC
    );
end function_g;

-- Conditional signal assignment architecture
architecture selected_arch of function_g is
    begin
        with s select
            g <= '1' when "000",  -- a=0, b=0, c=0
                 '0' when "001",  -- a=0, b=0, c=1
                 '1' when "010",  -- a=0, b=1, c=0
                 '0' when "011",  -- a=0, b=1, c=1
                 '0' when "100",  -- a=1, b=0, c=0
                 '1' when "101",  -- a=1, b=0, c=1
                 '1' when "110",  -- a=1, b=1, c=0
                 '0' when "111",  -- a=1, b=1, c=1
                 '0' when others;  -- default case (don't care)
    end selected_arch;
