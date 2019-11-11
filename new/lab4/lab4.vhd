LIBRARY ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity lab4 is 
    generic (n: integer :=8);
	 port(
	      start,rst,clk : in std_logic;
			multiplicand  : in std_logic_vector(n-1 downto 0);
         multiplier    : in std_logic_vector(n-1 downto 0);
		   
			busy, done    : out std_logic;
         result        : out std_logic_vector(2*n-1 downto 0)
         

	 );



end entity;


architecture struc of lab4 is 

signal sig_zero                               : std_logic_vector(n downto 0);
signal sig_sel                                : std_logic_vector(2 downto 0);
signal sig_sel_from_fsm                                : std_logic_vector(2 downto 0);
signal sig_load_reg, sig_add_reg,sig_shift_reg : std_logic;
signal sig_prod                               : std_logic_vector(2*n-1 downto 0);
signal sig_prodH,sig_prodL                    : std_logic_vector(n-1 downto 0);
signal sig_neg1,sig_neg2,sig_pos1,sig_pos2    : std_logic_vector(n downto 0);
signal sig_mux_out                            : std_logic_vector(n downto 0);
signal sig_2_1_mux_out                        :std_logic_vector(n downto 0);
signal sig_carrier                            :std_logic;
signal sig_regC_out_adder                     :std_logic_vector(n downto 0);
signal sig_regC_out_regB                      :std_logic_vector(1 downto 0);
signal sig_is_done                            :std_logic;
signal sig_count                              :std_logic;



signal sig_adder_out :std_logic_vector(n downto 0);




component regA
    generic(n :integer := 8);
    port( 
          clk           : IN std_logic;
          load_Reg      : IN std_logic;
          multiplicand  : IN std_logic_vector(n-1 downto 0);
          
          neg1          : OUT std_logic_vector(n downto 0);
          neg2          : OUT std_logic_vector(n downto 0);
          pos1          : OUT std_logic_vector(n downto 0);
          pos2          : OUT std_logic_vector(n downto 0)
         
        );
end component;

component regB
    generic(n :integer := 8);
    port(
	      clk                     : in std_logic;
	     multiplier           : in  std_logic_vector(n-1 downto 0);
		 loadreg,shift        : in  std_logic;
	     input_regC_shift     : in  std_logic_vector(1 downto 0);
		  
		 output_proL		  : out std_logic_vector(n-1 downto 0);  
		 output_sel           : out std_logic_vector(2 downto 0)
	 );
    
end component;

component regC
    generic(n: integer:= 8);
    port(
	     carrier,clk             : in  std_logic;
		 loadreg,shift,addreg    : in  std_logic;
	     input                   : in  std_logic_vector(n downto 0);
		  
		 output_adder            : out std_logic_vector(n downto 0);
		 output_regB             : out std_logic_vector(1 downto 0);
		 output_prodH            : out std_logic_vector(n-1 downto 0)
	 );
    
end component;

component regD
    generic(n :integer := 8);
    port( 
          clk           : IN std_logic;
          load_reg      : IN std_logic;
	      count_flag    : IN std_logic;
          is_finished   : OUT std_logic
        );
end component;

component mux
    generic( n: integer := 8);
    port(
        neg2,neg1,pos1,pos2,zero : IN std_logic_vector(n downto 0);
        sel                      : IN std_logic_vector(2 downto 0);    
        mux_out                  : OUT std_logic_vector(n downto 0)
        );
end component;

component two_one_mux
  generic (n: integer := 8);
  port( load_reg:    IN std_logic;
        input:		IN std_logic_vector(n downto 0);
        output:		OUT std_logic_vector(n downto 0)
			);   
end component;

component real_adder
    generic (n : integer := 9); ---n +1
	port(
	     a,b : in std_logic_vector(n-1 downto 0);
		 s   : out std_logic_vector(n-1 downto 0); --result.
		 ovf : out std_logic -- 1 if overflow. 
	 );
end component;


component fsm
    generic (n: integer := 8);
	port ( 
	     is_done,start,rst,clk : in std_logic;
		  sel                  : in std_logic_vector(2 downto 0);
		  busy                               : out std_logic;
		  loadreg,shiftreg,addreg,count,done : out std_logic;
		  sel_out              : out std_logic_vector(2 downto 0)
	 );
	 
end component;

begin
sig_zero<="000000000";

--- MAP HERE -----------------------------
map_regA : regA
generic map(n)
port map(clk,sig_load_reg, multiplicand,sig_neg1,sig_neg2,sig_pos1,sig_pos2);

map_mux : mux
generic map(n)
port map(   sig_neg2,sig_neg1,sig_pos1,sig_pos2,sig_zero,
        sig_sel_from_fsm,
        sig_mux_out
    );

map_2_1_mux : two_one_mux
generic map(n)
port map (sig_load_reg,sig_adder_out,sig_2_1_mux_out);

map_regC : regC
generic map(n)
port map(
	     sig_carrier,clk,
         sig_load_reg,sig_shift_reg,sig_add_reg,
	     sig_2_1_mux_out,
		 sig_regC_out_adder,
		 sig_regC_out_regB,
		 sig_prodH
	 );

map_adder : real_adder
generic map(n+1)
port map(
	     sig_regC_out_adder,sig_mux_out,
		 sig_adder_out,
		 sig_carrier
	 );

map_regB : regB
generic map(n)
port map(
        clk,
	     multiplier,
		 sig_load_reg,sig_shift_reg,
	     sig_regC_out_regB,
		 sig_prodL,
		 sig_sel
	 );

map_fsm : fsm
generic map(n)
	port map( 
	     sig_is_done,start,rst,clk,
		  sig_sel,
		  busy,
          sig_load_reg,sig_shift_reg,sig_add_reg,sig_count,done,
		  sig_sel_from_fsm
	 );

map_regD : regD
generic map(n)
port map( 
          clk,
          sig_load_reg,
	      sig_count,
          sig_is_done
        );


result(2*n-1 downto 0)<=sig_prodH(n-1 downto 0)&sig_prodL(n-1 downto 0);



end struc;
