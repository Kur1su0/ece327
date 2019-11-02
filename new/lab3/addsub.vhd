LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity addsub is
    generic (n : integer := 16);
	 port(
	     a,b : in std_logic_vector(n-1 downto 0);
		  sub : in std_logic; -- sub when sub=1, add when sub=0.
		  s   : out std_logic_vector(n-1 downto 0); --result.
		  ovf : out std_logic -- 1 if overflow. 
	 );


end addsub;
architecture struc of addsub is 
    signal c1,c2 : std_logic; -- carry out of last two bits.
	 signal b_xor : std_logic_vector(n-1 downto 0);
	 COMPONENT Adder IS
	 generic (n: integer := 16);
       port (a,b : in std_logic_vector(n-1 downto 0);
	       cin : in std_logic;
			 cout: out std_logic;
			 s: out std_logic_vector(n-1 downto 0)
	
	 );
    END COMPONENT;

	 begin 
	--     ovf <=c1 xor c2; --ovf if signs don't match
		  --add non sign bit.
		  b_xor<= b(n-1 downto 0 ) xor (n-1 downto 0 => sub);
	 Ai : Adder generic map(n)
		   port map(a(n-1 downto 0 ),b_xor, 
		sub,c1,s(n-1 downto 0));
				
		  --add sign bit
--		  As: Adder generic map(n)
--		  port map(a(n-1 downto n-1),
--		           b(n-1 downto n-1) xor (0 downto 0 => sub),
--					  c1,c2,s(n-1 downto n-1));
					  
					  
		  
end struc;