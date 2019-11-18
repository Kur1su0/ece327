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
signal sig_output_adder : std_logic_vector(n downto 0):=(others=>'0');
signal sig_out_B: std_logic_vector(1 downto 0):="00";
--signal sig_input : std_logic_vector(n downto 0);

begin    
	 process(loadreg,shift,addreg,clk)
	 begin
	     if(rising_edge(clk)) then
		      if (loadreg='1') then
					  sig_output_adder<=input;
					
					 
			    elsif(addreg='1') then
					 sig_output_adder<=input;
					 sig_out_B<=input(1 downto 0);
					 
				 elsif(shift='1') then
							sig_output_adder<=sig_output_adder(n)&sig_output_adder(n)&sig_output_adder(n downto 2);
							
					  
				end if;
		  
		  end if;
	 
	 
	 end process;
	 
	 
	    -- output_adder<=sig_output_adder(n)&sig_output_adder(n) & sig_output_adder(n downto 2);
		 output_regB<=sig_out_B;
		 output_adder<= sig_output_adder;
		 
       output_prodH<=sig_output_adder(n-1 downto 0);
       --output_prodH<=sig_output_adder(n downto 1);
		



end struc;