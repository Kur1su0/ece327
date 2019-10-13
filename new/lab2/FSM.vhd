LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FSM IS
port(
    ivalid: IN std_logic;
    clk: IN std_logic;
    rst: IN std_logic;

    input: IN std_logic_vector(2 downto 0); --- gnd/alt10k/25k/smooth.
    output: OUT std_logic_vector(1 downto 0);--- no-e-sig/seat-belt.
	 
	 seg1: OUT std_logic_vector(6 downto 0);--- seg1
	 seg2: OUT std_logic_vector(6 downto 0)--- seg2
);

END FSM;


ARCHITECTURE struct OF FSM IS
    TYPE fsm_state IS (gnd,alt10k,alt25k,smooth1,smooth2,smooth3,smooth4,smooth5);
    SIGNAL state:fsm_state;
begin

    process(clk,rst) begin
         if rst='0' then state<=gnd; --low actitave
		  else
		
	   	if rising_edge(clk) and ivalid='1' then
		  
		  
		
            case state is

                when gnd=>
				---	output<="10";
                    if    input="000"  then state<=gnd; 
                    elsif input="001"  then state<=gnd; 
						  elsif input="100"  then state<=alt10k; 
                    end if;
			    when alt10k=>
				---	output<="00";
				    if    input="100" then state<=gnd;
				    elsif input="010" then state<=alt25k; 
					 elsif input="001" then state<=alt10k;
                    end if;

                when alt25k=>
                   --- output<="00";
                    if    input="010" then state<=alt10k;
                    elsif input="001" then state<=smooth1;
                    end if;
                when smooth1=>
                    ---output<="00";
                    if    input="001" then state<=smooth2;
                    elsif input="010" then state<=alt25k;
                    elsif input="000" then state<=alt25k;
                    --elsif input="000" then state<=gnd;
                    end if;

                when smooth2=>
                    ---output <="00";
                    if    input="001" then state<=smooth3;
                    --elsif input="000" then state<=gnd;
                    elsif input="010" then state<=alt10k;
                    elsif input="000" then state<=alt25k;
                    end if;
                
                when smooth3=>
                    ---output <="00";
                    if    input="001" then state<=smooth4;
                    --elsif input="000" then state<=gnd;
                    elsif input="010" then state<=alt10k;
                    elsif input="000" then state<=alt25k;
                    end if;
                    
                when smooth4=>
                    ---output <="00";
                    if    input="001" then state<=smooth5;
                    --elsif input="000" then state<=gnd;
                    elsif input="010" then state<=alt10k;
                    elsif input="000" then state<=alt25k;
                    end if;
                when smooth5=>
                    ---output <="01";
                    if    input="001" then state<=smooth5;
                    --elsif input="000" then state<=gnd;
                    elsif input="010" then state<=alt10k;
                    elsif input="000" then state<=alt25k;
                    end if;


           end case;
			  end if; --end rising & ivalid.  
        end if; --end rst
    end process;
	 
	  with state select
	     output <= "11" when gnd ,
		       "00" when smooth5,
				 "01" when others;
				 

  --with state select
	--     output2 <= "0001" when gnd,
	--	              "0010" when alt10k,
	--					   "0011" when alt25k,
							
	--						 "0100" when smooth1,
	--						 "0101" when smooth2,
	--					    "0110" when smooth3,
	--						 "0111" when smooth4,
	--						 "1000" when smooth5;
		                  
							
				 

   with state select
	     seg1 <= "1000000" when gnd,
		              "1111001" when alt10k,
						  "0100100" when alt25k,
							
							 "1111001" when smooth1,
						 "0100100" when smooth2,
						    "0110000" when smooth3,
							 "0011001" when smooth4,
							 "0010010" when smooth5;
		                  
							
	 
   with state select
	     seg2 <= "0001000" when gnd,
		              "0001000" when alt10k,
						  "0001000" when alt25k,
							
							 "0010010" when smooth1,
						 "0010010" when smooth2,
						    "0010010" when smooth3,
							 "0010010" when smooth4,
							 "0010010" when smooth5;
		                  
	 
    
end struct;
