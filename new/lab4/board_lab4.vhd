LIBRARY ieee;
USE ieee.std_logic_1164.all;


entity board_lab4 is
    generic (n: integer :=4);
    port(
        SW   : in std_logic_vector(9 downto 0);
        KEY  : in std_logic_vector(3 downto 0);
        LEDR : out std_logic_vector(9 downto 0):=(others=>'0')

    );
end board_lab4;


architecture struct of board_lab4 is

component lab4
generic (n: integer :=8);
port(    start,rst,clk : in std_logic;
			multiplicand  : in std_logic_vector(n-1 downto 0);
         multiplier    : in std_logic_vector(n-1 downto 0);
		   
			busy, done    : out std_logic;
         result        : out std_logic_vector(2*n-1 downto 0)
	 );
end component;

begin


--- MAP HERE -----------------------------
map_lab4 : lab4
generic map(n)
port map(    

         start=>SW(9),rst=>SW(8),clk=>KEY(0),
			multiplicand=>SW(7 downto 4),
         multiplier=>SW(3 downto 0),
		   
			busy=>LEDR(9), done=>LEDR(8),
         result=>LEDR(7 downto 0)
	 );



end struct;