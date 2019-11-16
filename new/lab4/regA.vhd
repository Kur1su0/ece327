LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity regA is

	 generic (n: integer := 8);
    port( 
          clk           : IN std_logic;
          load_Reg      : IN std_logic;
          multiplicand  : IN std_logic_vector(n-1 downto 0);
          
          neg1          : BUFFER std_logic_vector(n downto 0);
          neg2          : OUT std_logic_vector(n downto 0);
          pos1          : OUT std_logic_vector(n downto 0);
          pos2          : OUT std_logic_vector(n downto 0)
         
        );
end regA;
architecture mixed of regA is
    --signal not_val: std_logic_vector(n-1 downto 0);
	 --signal sig_neg1: std_logic;

	 begin
    --You should expect a comment explaining the process in your own code.
    --However, this is omitted here so you can figure it out!
    process(clk, load_Reg, multiplicand)
        begin
        if(rising_edge(clk) and load_Reg='1') then
            ---2's comp  
            --not_val <= not(multiplicand) + 1;
            --sig_neg1(n-1 downto 0) <= not(multiplicand) + 1;
           
			 
			   neg1(n-1 downto 0) <= not(multiplicand) + 1;
            --neg1(n) <= not(multiplicand(n-1));
				--sig_neg1(n) <= sig_neg1(n-1);
				--neg1(n)<=neg1(n-1)
            
				
				

            neg2(n downto 1) <= not(multiplicand) + 1;
            neg2(0) <= '0';

            pos1(n-1 downto 0) <= multiplicand;
            pos1(n) <= multiplicand(n-1);
            
            pos2(n downto 1) <= multiplicand;
            pos2(0) <= '0';



        end if;
    end process;
	 
neg1(n) <= neg1(n-1);
 
end mixed;
