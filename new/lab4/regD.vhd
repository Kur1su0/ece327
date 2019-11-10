LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity regD is

	 generic (n: integer := 8);
    port( 
          clk           : IN std_logic;
          load_reg      : IN std_logic;
			 count_flag    : IN std_logic;
          is_finished   : OUT std_logic
          
          
         
        );
end regD;
architecture mixed of regD is

	 signal count_val : integer;
	 
	 
	 begin
    
    process(clk, load_reg, count_flag)
        begin
        if(rising_edge(clk) ) then
        	 if (load_reg='1') then count_val<=(n/2);
			 else
			     if(count_val=0) then is_finished<='1';
	           
				  elsif(count_flag='1')then
				          count_val<=count_val-1;
						    is_finished<='0';
						
				 
			     end if;
			  end if;
				
        end if;
    end process;
	 
   
end mixed;