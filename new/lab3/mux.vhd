LIBRARY ieee;
USE ieee.std_logic_1164.all;
entity mux is
    generic(
        n: integer := 16
        );
    port(
        R0,R1,R2,R3,R4,R5,R6,R7 : IN std_logic_vector(n-1 downto 0);
        DIN,G                   : IN std_logic_vector(n-1 downto 0);
        sel                     : IN std_logic_vector(9 downto 0);    
        Mux_out                 : OUT std_logic_vector(n-1 downto 0)
        );
end mux;
architecture struct of mux is
    --signal internal_Mux_out: std_logic_vector(n-1 downto 0);
    
    begin
        with sel select
            Mux_out<= R7  when "0010000000",
                      R6  when "0001000000",
                      R5  when "0000100000",
                      R4  when "0000010000",
                      R3  when "0000001000",
                      R2  when "0000000100",
                      R1  when "0000000010",
                      R0  when "0000000001",
							 DIN when "1000000000",
							 G   when "0100000000",
                      DIN when others;
        
        
end struct;


