LIBRARY ieee;
USE ieee.std_logic_1164.all;


entity lab3_board is
    generic (n: integer :=8);
    port(
        SW   : in std_logic_vector(9 downto 0);
        KEY  : in std_logic_vector(3 downto 0);
        LEDR : out std_logic_vector(9 downto 0)

    );
end lab3_board;


architecture struct of lab3_board is
component lab3
    generic (n: integer := 8);
    port (
	    clk,Run,Resetn : in std_logic;
        DIN            : in std_logic_vector(n-1 downto 0);
        Bus_out        : out std_logic_vector(n-1 downto 0);	 
        Done           : out std_logic
	
	 );
end component;
begin
   mapping: lab3
   generic map(n)
   port map(KEY(0), SW(9),SW(8),SW(7 downto 0), LEDR(7 downto 0),LEDR(9) );



end struct;
