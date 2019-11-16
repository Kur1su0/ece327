LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity Adder is
    generic (n: integer := 16);
	 port (a,b : in std_logic_vector(n-1 downto 0);
	       cin : in std_logic;
			 cout: out std_logic;
			 s: out std_logic_vector(n-1 downto 0)
	 
 
	 );
	 
end Adder;

architecture struc of Adder is
    signal sum: std_logic_vector(n downto 0 );
	 -- signal sum1 : std_logic_vector(n downto 0 );
	 begin 
	 
	     sum<=('0' & a) + ('0'& b) + cin;
		  
		  cout <= sum(n);
		  
		  
		  s <= sum(n-1 downto 0);

end struc;