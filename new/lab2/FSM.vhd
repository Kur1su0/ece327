LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FSM IS
port(
    ivalid: IN std_logic;
    clk: IN std_logic;
    rst: IN std_logic;

    input: IN std_logic_vector(2 downto 0); --- alt20k/25k/smooth.
    output: OUT std_logic_vector(1 downto 0)--- no-e-sig/seat-belt.
);

END FSM;


ARCHITECTURE struct OF FSM IS
    TYPE fsm_state IS (alt10k,alt20k,alt25k,smooth1,smooth2,smooth3,smooth4,smooth5);
    SIGNAL state:fsm_state;
begin

    process(clk,rst) begin
        if rising_edge(clk) and ivalid='1' then
            case state is

                when alt10k=>
					output<="10";
                    if    rst='1'     then state<=alt10k;
                    elsif input="100" then state<=alt20k; 
                    end if;
			    when alt20k=>
					output<="00";
				    if    input="000" then state<=alt10k;
				    elsif input="010" then state<=alt25k; 
                    end if;

                when alt25k=>
                    output<="00";
                    if    input="100" then state<=alt20k;
                    elsif input="001" then state<=smooth1;
                    end if;
                when smooth1=>
                    output<="00";
                    if    input="001" then state<=smooth2;
                    elsif input="010" then state<=alt25k;
                    elsif input="100" then state<=alt20k;
                    elsif input="000" then state<=alt10k;
                    end if;

                when smooth2=>
                    output <="00";
                    if    input="001" then state<=smooth3;
                    elsif input="000" then state<=alt10k;
                    elsif input="100" then state<=alt20k;
                    elsif input="010" then state<=alt25k;
                    end if;
                
                when smooth3=>
                    output <="00";
                    if    input="001" then state<=smooth4;
                    elsif input="000" then state<=alt10k;
                    elsif input="100" then state<=alt20k;
                    elsif input="010" then state<=alt25k;
                    end if;
                    
                when smooth4=>
                    output <="00";
                    if    input="001" then state<=smooth5;
                    elsif input="000" then state<=alt10k;
                    elsif input="100" then state<=alt20k;
                    elsif input="010" then state<=alt25k;
                    end if;
                when smooth5=>
                    output <="01";
                    if    input="001" then state<=smooth5;
                    elsif input="000" then state<=alt10k;
                    elsif input="100" then state<=alt20k;
                    elsif input="010" then state<=alt25k;
                    end if;


           end case;
        end if;
    end process;
    
end struct;
