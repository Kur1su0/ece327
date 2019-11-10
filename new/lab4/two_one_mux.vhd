LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


entity two_one_mux is
  generic (n: integer := 8);
  port( load_reg:    IN std_logic;
        input:		IN std_logic_vector(n downto 0);
        output:		OUT std_logic_vector(n downto 0)
			);   


end two_one_mux;


architecture struc of two_one_mux is 
begin 
    process(load_reg, input)
	 begin
	     if(load_reg='0') then 
		      output<=input;
			else
			    output<=(others=>'0');
		  end if;
	 
	 end process;
	 
	 
	 
end struc;
