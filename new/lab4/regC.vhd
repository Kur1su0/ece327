LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity regC is
    generic(n: integer:= 8);
    port(
	     carrier,clk             : in  std_logic;
		  loadreg,shift,addreg    : in  std_logic;
	     input                   : in  std_logic_vector(n downto 0);
		  
		  output_adder            : out std_logic_vector(n downto 0);
		  output_regB             : out std_logic_vector(1 downto 0);
		  output_prodH            : out std_logic_vector(n-1 downto 0)
	 );
    



end regC;

architecture struc of regC is


begin    
	 process(loadreg,shift,addreg,clk)
	 begin
	     if(rising_edge(clk)) then
		      if (loadreg='1') then
				    output_adder(n downto 0)<=(others=>'0');
					 
					
					 
			    elsif(addreg='1') then
					 output_adder<=input;
					 
				 elsif(shift='1') then
				     output_regB<=input(1 downto 0);
					  if(carrier='1') then
					      output_adder<=input(n)&carrier&input(n downto 2);
					  else 
					      output_adder<=input(n)&input(n)&input(n downto 2);   
					  end if;
				end if;
				
					  
				     
				
		  
		  end if;
	 
	 
	 end process;
        output_prodH<=input(n-1 downto 0);



end struc;