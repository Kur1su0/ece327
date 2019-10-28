LIBRARY ieee;
USE ieee.std_logic_1164.all;
entity ff is
    generic(
        n: integer := 8
        );
    port( 
          clk: IN std_logic;
          XIN: IN std_logic; -- for select purpose;
          d: IN std_logic_vector(n-1 downto 0);
	       q: OUT std_logic_vector(n-1 downto 0)
         
        );
end ff;
architecture mixed of ff is
    signal internal_d: std_logic_vector(n-1 downto 0);

	 begin
    --You should expect a comment explaining the process in your own code.
    --However, this is omitted here so you can figure it out!
    process(clk,XIN)
        begin
        if(rising_edge(clk) and XIN='1') then
            internal_d <= d;
        else
		      internal_d <= internal_d;
        end if;
    end process;
	 
    q <= internal_d;
end mixed;
