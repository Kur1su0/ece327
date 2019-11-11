LIBRARY ieee;
USE ieee.std_logic_1164.all;
 

entity fsm is
    generic (n: integer := 8);
	 port ( 
	     is_done,start,rst,clk              : in std_logic;
		  sel                                : in std_logic_vector(2 downto 0);
		  busy                               : out std_logic;
		  loadreg,shiftreg,addreg,count,done : out std_logic;
		  sel_out                            : out std_logic_vector(2 downto 0)
	 
 
	 );
	 
end fsm;

ARCHITECTURE struct OF fsm IS
    
	 TYPE fsm_state IS (notBusy, load_regs, add_regs, shift_regs,res);
	 signal state:fsm_state;

begin
    process(clk,rst) begin
	     if rst='0' then state<=notBusy;  
		  else if(rising_edge(clk)) then 
		           case state is
					      when notBusy=>
								 if start='1' then state<=load_regs;
								 else state<=notBusy;
								 end if;
								 
						   when load_regs=>
								 state<=add_regs;
								 
						   when add_regs=>
								 state<=shift_regs;
								 
							when shift_regs=>
							     
							   state<=res;
								 
							when res=>
							    
							   if (is_done='1') then
									  state<=notBusy;
								 else 
								     state<=add_regs;
								 end if;
								
								
							

					  end case;
		      end if;
		  
		  end if;
	 
	 end process;
	 
	 process(state,is_done) begin
        case state is
            when notBusy=>
				    busy<='0';loadreg<='0';shiftreg<='0';addreg<='0';count<='0';done<='0';
				when load_regs=>
				    busy<='1';loadreg<='1';shiftreg<='0';addreg<='0';count<='0';done<='0';
					 --sel_out<=sel;
				
				when add_regs=>
				     sel_out<=sel;
				     busy<='1';loadreg<='0';shiftreg<='0';addreg<='1';count<='0';done<='0';
					  
				when shift_regs=>
				     
				     busy<='1';loadreg<='0';shiftreg<='1';addreg<='0';count<='1';

				when res=>
   			     sel_out<=sel;
				     busy<='1';loadreg<='0';shiftreg<='0';addreg<='0';count<='0';
					  
					  if(is_done='1') then done<='1';
					  end if;
				
			end case;	  
	 end process;
end struct;
	 