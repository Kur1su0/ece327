LIBRARY ieee;
USE ieee.std_logic_1164.all;


entity lab3 is
    generic (n: integer := 16);
	 port (
	 
	 clk,Run,Resetn : in std_logic;
    DIN            : in std_logic_vector(n-1 downto 0);
    Bus_out        : out std_logic_vector(n-1 downto 0);	 
    Done           : out std_logic
	
	 );
	 
end lab3;

ARCHITECTURE struct OF lab3 IS
    signal R0_in,R1_in,R2_in,R3_in,R4_in,R5_in,R6_in,R7_in : std_logic;
    signal R0_d,R1_d,R2_d,R3_d,R4_d,R5_d,R6_d,R7_d : std_logic_vector(n-1 downto 0);
    signal R0_q,R1_q,R2_q,R3_q,R4_q,R5_q,R6_q,R7_q :std_logic_vector(n-1 downto 0);
	 signal A_in,G_in,IR_in                              : std_logic;
	 signal DIN_signal,Bus_signal,G_q,G_d,A_q,A_d : std_logic_vector(n-1 downto 0);
	 signal out_sig_signal     : std_logic_vector(9 downto 0); 
	 signal in_sig_signal      : std_logic_vector(11 downto 0);
	 signal addsub_signal :std_logic;
	 signal ovf_signal : std_logic;
	 signal IR_q,IR_d : std_logic_vector(7 downto 0);
	
    component ff
	     generic(
            n: integer := 8
            );
        port( 
              clk: IN std_logic;
              XIN: IN std_logic; -- for select purpose;
              d: IN std_logic_vector(n-1 downto 0);
	           q: OUT std_logic_vector(n-1 downto 0)
         
         ); 
    end component;
	 
	 component addsub 
	     generic (n : integer := 8);
	     port(
	         a,b : in std_logic_vector(n-1 downto 0);
		      sub : in std_logic; -- sub when sub=1, add when sub=0.
		      s   : out std_logic_vector(n-1 downto 0); --result.
		      ovf : out std_logic -- 1 if overflow. 
	     );
    end component;
	 
	 component mux
	     generic(n: integer := 16  );
        port(
        R0,R1,R2,R3,R4,R5,R6,R7 : IN std_logic_vector(n-1 downto 0);
        DIN,G                   : IN std_logic_vector(n-1 downto 0);
        sel                     : IN std_logic_vector(9 downto 0);    
        Mux_out                 : OUT std_logic_vector(n-1 downto 0)
        ); 
    end component;
	 
	 component fsm
	     generic (n: integer := 16);
	     port (
	         IR          : in std_logic_vector(7 downto 0); --input: IIXXXYYY
			   Run,Resetn  : in std_logic;
			   clk         : in std_logic;
			   out_sig     : out std_logic_vector(9 downto 0); --           DINout/Gout/R7-0out
	         in_sig      : out std_logic_vector(11 downto 0);--/IRin/Addsub/Ain/Gin/R7-0in
			   Done        : out std_logic
        );
    end component;
	 
begin

   
--Create the device and map it to the appropriate pins
    R0 : ff 
	 generic map(n)
	 port map(clk, R0_in,Bus_signal(n-1 downto 0),R0_q(n-1 downto 0));
	 
	 R1 : ff 
	 generic map(n)
	 port map(clk, R1_in,Bus_signal(n-1 downto 0),R1_q(n-1 downto 0));
	 
	 R2 : ff 
	 generic map(n)
	 port map(clk, R2_in,Bus_signal(n-1 downto 0),R2_q(n-1 downto 0));
	 
	 R3 : ff 
	 generic map(n)
	 port map(clk, R3_in,Bus_signal(n-1 downto 0),R3_q(n-1 downto 0));
	 
	 R4 : ff 
	 generic map(n)
	 port map(clk, R4_in,Bus_signal(n-1 downto 0),R4_q(n-1 downto 0));
	 
	 R5 : ff 
	 generic map(n)
	 port map(clk, R5_in,Bus_signal(n-1 downto 0),R5_q(n-1 downto 0));
	 
	 R6 : ff 
	 generic map(n)
	 port map(clk, R6_in,Bus_signal(n-1 downto 0),R6_q(n-1 downto 0));
	 
	 R7 : ff 
	 generic map(n)
	 port map(clk, R7_in,Bus_signal(n-1 downto 0),R7_q(n-1 downto 0));

	 
	 RA : ff 
	 generic map(n)
	 port map(clk, A_in,Bus_signal(n-1 downto 0),A_q(n-1 downto 0));
	 
	 G : ff 
	 generic map(n)
	 port map(clk, G_in,G_d(n-1 downto 0),G_q(n-1 downto 0));

	 IR_ff : ff 
	 generic map(8)
	 port map(clk, IR_in,DIN(7 downto 0),IR_q(7 downto 0));

	 Add_sub: addsub
	 generic map(n )
	 port map(
	     A_q,Bus_signal,
		  addsub_signal, -- sub when sub=1, add when sub=0.
		  G_d,  --result
		  ovf_signal
		  
	 );
	 --SIGNAL out_sig_signal : std_logic_vector(9 downto 0); -- DINout/Gout/R7-0out
	 --SIGNAL in_sig_signal  : std_logic_vector(11 downto 0);--/IRin/Addsub/Ain/Gin/R7-0in
	 
    MUX_sel : mux
	 generic map(n)
    port map(
        R0_q,R1_q,R2_q,R3_q,R4_q,R5_q,R6_q,R7_q,
        DIN,G_q,
        out_sig_signal, 
        Bus_signal		  
        );
     
    state_machine: fsm
    generic map(n)
	 port map(
	       IR_q,
			 Run,Resetn,
			 clk, 
			 out_sig_signal,   --           DINout/Gout/R7-0out
	       in_sig_signal,--/IRin/Addsub/Ain/Gin/R7-0in
			 Done
 
	 );
    IR_in<=in_sig_signal(11);
	 addsub_signal<=in_sig_signal(10);
	 A_in<=in_sig_signal(9);
	 G_in<=in_sig_signal(8);
	 R7_in<=in_sig_signal(7);
	 R6_in<=in_sig_signal(6);
	 R5_in<=in_sig_signal(5);
	 R4_in<=in_sig_signal(4);
	 R3_in<=in_sig_signal(3);
	 R2_in<=in_sig_signal(2);
	 R1_in<=in_sig_signal(1);
	 R0_in<=in_sig_signal(0);
	 Bus_out<=Bus_signal;
	

end struct;