library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder is
    Port (
        s : in std_logic_vector( 3 downto 0);
        a : out std_logic_vector( 1 downto 0);
        v : out STD_LOGIC
    );
end priority_encoder;


architecture selected_arch of priority_encoder is
  
  begin
        with s select
            v <= '0' when "0000",  
                 '1' when "---1", 
                 '1' when "--10", 
                 '1' when "-100", 
                 '1' when "1000",
                 '0' when others;

        with s select 
        a <= "--" when "0000",
             "00" when "---1",  
             "01" when "--10",  
             "10" when "-100",  
             "11" when "1000",
             "00" when others;

end selected_arch;
    
    