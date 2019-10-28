LIBRARY ieee;
USE ieee.std_logic_1164.all;
 

entity fsm is
    generic (n: integer := 16);
	 port (
	       IR          : in std_logic_vector(7 downto 0); --input: IIXXXYYY
			 Run,Resetn  : in std_logic;
			 clk         : in std_logic;
			 
			 out_sig     : out std_logic_vector(9 downto 0); --           DINout/Gout/R7-0out
	       in_sig      : out std_logic_vector(11 downto 0);--/IRin/Addsub/Ain/Gin/R7-0in
			 Done        : out std_logic

	 
 
	 );
	 
end fsm;

ARCHITECTURE struct OF fsm IS
    --TYPE fsm_state IS (init,mv,mvi,add1,add2,add3,sub1,sub2,sub3);
	 TYPE fsm_state IS (init,mv,mvi,add1,add2,add3,sub1,sub2,sub3);
    SIGNAL state:fsm_state;
	 SIGNAL reg_x, reg_y   : std_logic_vector(7 downto 0);
	 SIGNAL ins            : std_logic_vector(1 downto 0);
	 SIGNAL out_sig_signal : std_logic_vector(9 downto 0);
	 SIGNAL in_sig_signal  : std_logic_vector(11 downto 0);
	 SIGNAL DONE_signal    : std_logic;
begin
    process(clk,Resetn) begin
	     if Resetn='0' then state<=init;
		      else if rising_edge(clk)  then
		          case state is
					     when init=>
						      if Run='1' then
						          if    ins="00" then state<=mv;
								    elsif ins="01" then state<=mvi;
								    elsif ins="10" then state<=add1;
								    elsif ins="11" then state<=sub1;
								    end if;
							   end if;
						  
						  when mv=>
						      state<=init;
						  when mvi=>
						      state<=init;
						 
						  when add1=>
						      if ins="10" then state<=add2;
								end if;
						  when add2=>
						      if ins="10" then state<=add3;
								end if;
						  when add3=>
						      state<=init;
						  
						  when sub1=>
						      if ins="11" then state<=sub2;
								end if;
						  when sub2=>
						      if ins="11" then state<=sub3;
								end if;
						  when sub3=>
						      state<=init;
				    end case;
				
				end if; --clk & ivalid
		  end if;--rst		  
		  
	 end process;
	 
	 process(IR) begin
	 -- analysis regs
    	 case IR(5 downto 3) is
		      when "000"=> reg_x<="00000001";
				when "001"=> reg_x<="00000010";
				when "010"=> reg_x<="00000100";
				when "011"=> reg_x<="00001000";
				when "100"=> reg_x<="00010000";
				when "101"=> reg_x<="00100000";
				when "110"=> reg_x<="01000000";
				when "111"=> reg_x<="10000000";
				when others => reg_x<="00000000";
				
		  end case;  
		  
		  case IR(2 downto 0) is
		      when "000"=> reg_y<="00000001";
				when "001"=> reg_y<="00000010";
				when "010"=> reg_y<="00000100";
				when "011"=> reg_y<="00001000";
				when "100"=> reg_y<="00010000";
				when "101"=> reg_y<="00100000";
				when "110"=> reg_y<="01000000";
				when "111"=> reg_y<="10000000";
				when others => reg_y<="00000000";
				

		  end case; 
		  
		  ins<= IR(7 downto 6);
	end process;
	     
	process(ins, state, reg_x, reg_y) begin
	 --SIGNAL out_sig_signal : std_logic_vector(9 downto 0); --           DINout/Gout/R7-0out
	 --SIGNAL in_sig_signal  : std_logic_vector(11 downto 0);--/IRin/Addsub/Ain/Gin/R7-0in
	 --DONE_signal<='0';
	    case state is
		     when init   =>in_sig_signal<="100000000000";
			                out_sig_signal<="0000000000";
								  DONE_signal<='0';
			      
			  
			  
		
			  -- instruvtion comdition if 00 01 10 11
			  
			  
			  when mv=> if ins="00" then
			                in_sig_signal<="000000000000";out_sig_signal<="0000000000";
			                out_sig_signal(7 downto 0)<=reg_y; --RYout
			                in_sig_signal(7 downto 0)<=reg_x; -- RXin
								 DONE_signal<='1';
								 
							end if;
							
			  when mvi=> if ins="01" then
			                 in_sig_signal<="000000000000";out_sig_signal<="0000000000";
			                 out_sig_signal(9)<='1'; --(din_out)
							     in_sig_signal(7 downto 0)<=reg_x;
								  Done_signal<='1';
							 end if;
			                 
			  when add1=> if ins="10" then
			                  in_sig_signal<="000000000000";out_sig_signal<="0000000000";
			                  out_sig_signal(7 downto 0)<=reg_x;
							      in_sig_signal(9)<='1';	
								    DONE_signal<='0';	
							  
							  end if;
			  when add2=> if ins="10" then
			                  --clear
									in_sig_signal(9)<='0';
									
			                  out_sig_signal(7 downto 0)<=reg_y;
							      in_sig_signal(8)<='1';
							      in_sig_signal(10)<='0';	--ADD	
							       DONE_signal<='0';
							  end if;
			  
			  
			  when add3=>  if ins="10" then
			                  --clear RYout&Gin
									out_sig_signal(7 downto 0)<="00000000";
									in_sig_signal(8)<='0';
									
			                  out_sig_signal(8)<='1';
			                  in_sig_signal(7 downto 0)<=reg_x;
							     	Done_signal<='1';
							      
							  end if;
			  
			  when sub1=>
			              if ins="11" then
							      in_sig_signal<="000000000000";out_sig_signal<="0000000000";
			                  out_sig_signal(7 downto 0)<=reg_x;
			                  in_sig_signal(9)<='1';
									 DONE_signal<='0';
							  end if;
			  
			  
			  when sub2=>
			              if ins="11" then
							      --clear Ain.
									in_sig_signal(9)<='0';
							   
			                  out_sig_signal(7 downto 0)<=reg_y;
			                  in_sig_signal(8)<='1';
									in_sig_signal(10)<='1';--SUB
									 DONE_signal<='0';
							  end if;
							  
			  when sub3=>
			              if ins="11" then
							  --clear RYout&Gin
									out_sig_signal(7 downto 0)<="00000000";
									in_sig_signal(8)<='0';
									
									
			                  out_sig_signal(8)<='1';
			                  in_sig_signal(7 downto 0)<=reg_x;
							     	Done_signal<='1';
							  end if;
			  
			  
			  end case;
	end process;
	
	 out_sig<=out_sig_signal;
	 in_sig<=in_sig_signal;
	 Done<=Done_signal;
	 
end struct;
