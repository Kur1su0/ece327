LIBRARY ieee;
USE ieee.std_logic_1164.all;
entity mux is
    generic(
        BUS_WID: integer := 16
        );
    port(
        R0,R1,R2,R3,R4,R5,R6,R7 : IN std_logic_vector(BUS_WID downto 0);
        DIN,G                   : IN std_logic_vector(BUS_WID downto 0);
        RXout_sel               : IN std_logic_vector(7 downto 0);
        Gout_sel,DINout_sel     : IN std_logic;
        Mux_out                 : OUT std_logic_vector(BUS_WID downto 0)
        );
end mux;
architecture struct of mux is
    signal internal_d: std_logic_vector(BUS_WID downto 0);
    
    begin
        with RXout_sel select
            Mux_out<= R7  when "10000000",
                      R6  when "01000000",
                      R5  when "00100000",
                      R4  when "00010000",
                      R3  when "00001000",
                      R2  when "01000100",
                      R1  when "01000010",
                      R0  when "01000001",
                      unaffected when others;
        
        
        
        with DINout_sel select
            Mux_out<= DIN when '1',
                      unaffected when others;
        with Gout_sel select
            Mux_out<= G when '1',
                      unaffected when others;



end struct;


