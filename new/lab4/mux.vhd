LIBRARY ieee;
USE ieee.std_logic_1164.all;
entity mux is
    generic(
        n: integer := 8
        );
    port(
        neg2,neg1,pos1,pos2,zero : IN std_logic_vector(n downto 0);
        sel                      : IN std_logic_vector(2 downto 0);    
        mux_out                      : OUT std_logic_vector(n downto 0)
        );
end mux;
architecture struct of mux is
    signal internal_Mux_out: std_logic_vector(n-1 downto 0);
    
    begin
        with sel select
		  mux_out <=
           zero when "000",
			  pos1 when "001",
			  pos1 when	"010", 
			  pos2 when "011",
		     neg2 when "100",
			  neg1 when "101",
			  neg1 when "110",
			  zero when "111",
			  zero when others;
				
   
end struct;


