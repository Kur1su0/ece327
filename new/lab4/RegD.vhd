LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity regD is

	 generic (n: integer := 8);
    port( 
          clk           : IN std_logic;
          load_Reg      : IN std_logic;
			 count_flag    : IN std_logic;
          is_finished   : OUT std_logic
          
          
         
        );
end regD;
architecture mixed of regD is
    --signal not_val: std_logic_vector( (n/2)-1 downto 0):=('1',others=>'0');
    
	 --FOR 8-bit input OLNY  .........Change 1 downto 0 FOR 4-bit inpit.
	 signal count_val : integer;
	 
	 
	 begin
    
    process(clk, load_Reg, count_flag)
        begin
        if(rising_edge(clk) ) then
        	 if (load_reg='1') then count_val<=(n/2);
			 
			 else
			     if(count_val=0) then is_finished<='1';
	           else 
				      if(count_flag='1')then
				          count_val<=count_val-1;
						    is_finished<='0';
						end if;
				  end if;
			 
			  end if;
				
        end if;
    end process;
	 
   
end mixed;