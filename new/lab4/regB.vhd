LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity regB is
    generic(n: integer:= 8);
    port(
	     multiplier              : in  std_logic_vector(n-1 downto 0);
		  loadreg,shift           : in  std_logic;
	     input_regC_shift        : in  std_logic_vector(1 downto 0);
		  
		  output_proL		        : out std_logic_vector(n-1 downto 0);  
		  output_sel              : out std_logic_vector(2 downto 0)
	 );
    

end regB;

architecture mixed of regB is
signal internal_buffer: std_logic_vector(n downto 0);
begin
    process(loadreg,shift)
	 begin
	     if(loadreg='1') then
		      internal_buffer(n downto 1)<=multiplier;
				internal_buffer(0)<='0';
				output_sel<=multiplier(1 downto 0)&'0';
		      
	     elsif (shift='1') then
		      internal_buffer(n downto 0)<=input_regC_shift(1 downto 0)&internal_buffer(n downto 2);
				output_sel<=internal_buffer(2 downto 0); 
        end if;
	 end process;
    	 
    output_proL<=internal_buffer(n downto 1);


end mixed;