LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity regB is
    generic(n: integer:= 8);
    port(
	     multiplier              : in  std_logic;
		  loadreg,shift           : in  std_logic;
	     input_regC_shift        : in  std_logic_vector(1 downto 0);
		  
		  output_proL		        : buffer std_logic_vector(n-1 downto 0);  
		  output_sel              : out std_logic_vector(2 downto 0)
	 );
    

end regB;

architecture mixed of regB is
begin
    process(loadreg,shift)
	     if(loadreg='1') then
		      output_proL<=multiplier;
				output_sel<=multiplier(1 downto 0)&'0';
		      
	     elsif (shift='1') then
		      output_proL(n-1 downto 0)<=input_regC_shift(1 downto 0)&output_proL(n-1 downto 2);
				output_sel<=(4 downto 2); 
				
		  
	 
	 end process;
	 



end mixed;