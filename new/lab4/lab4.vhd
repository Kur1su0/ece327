LIBRARY ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity lab4 is 
    generic (n: integer :=8);
	 port(
	     start,rst  : in std_logic;
		  busy, done : out std_logic;
		  prodH,prodL: out std_logic_vector(n-1 downto 0)
	 );



end entity;


architecture struc of lab4 is 

signal ;


component regA
    generic(n :integer := 8);
    port()
end component;

component regB
    generic(n :integer := 8);
    port()
end component;

component regC
    generic(n :integer := 8);
    port()
end component;

component regD
    generic(n :integer := 8);
    port()
end component;

end struc;
