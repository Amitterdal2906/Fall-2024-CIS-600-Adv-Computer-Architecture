library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity DataMemory is
    port (clock_dm		: in  std_logic;
          reset_dm		: in  std_logic;
          memory_in_dm	: in  std_logic_vector(31 downto 0);    
          memory_write_dm	: in  std_logic;
			 memory_read_dm	: in  std_logic;
          memory_address_dm	: in  std_logic_vector(15 downto 0);
          memory_out_dm	: out std_logic_vector(31 downto 0);
			 op_dm 				: in std_logic_vector(5 downto 0)
			);
end entity;

architecture Behavioral of DataMemory is
	type DM is array(0 to 15) of std_logic_vector(31 downto 0);
	signal RAM : DM := (
		x"000AAAAA",
		x"000BBBBC",
		x"000BCCCC",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000"
	);
	signal temp : std_logic_vector(31 downto 0);

begin
	process(clock_dm,reset_dm,op_dm)
		begin
			if (RISING_EDGE(CLOCK_dm)) then
				if reset_dm = '1' then
                RAM(0) <= x"000AAAAA";
                RAM(1) <= x"000BBBBC";
                RAM(2) <= x"000BCCCC";
                RAM(3) <= x"00000000";
                RAM(4) <= x"00000000";
                RAM(5) <= x"00000000";
                RAM(6) <= x"00000000";
                RAM(7) <= x"00000000";
                RAM(8) <= x"00000000";
                RAM(9) <= x"00000000";
                RAM(10) <= x"00000000";
                RAM(11) <= x"00000000";
                RAM(12) <= x"00000000";
                RAM(13) <= x"00000000";
                RAM(14) <= x"00000000";
                RAM(15) <= x"00000000";
					else
				case op_dm is
				when "101011" => --sw
					--if (RISING_EDGE(CLOCK_dm)) then
						if (memory_write_dm = '1') then 
								RAM(to_integer(unsigned(memory_address_dm))) <= memory_in_dm;    
							 -- this handles the synchronous write mode (write = 1)
						end if;
				when "101001" => --sh
					--if (RISING_EDGE(CLOCK_dm)) then
						if (memory_write_dm = '1') then 
								RAM(to_integer(unsigned(memory_address_dm))) <= x"0000" & memory_in_dm(16 downto 0);    
							 -- this handles the synchronous write mode (write = 1)
						end if;
					--end if;
				when "101000" => --sb
					--if (RISING_EDGE(CLOCK_dm)) then
						if (memory_write_dm = '1') then 
								RAM(to_integer(unsigned(memory_address_dm))) <= x"000000" & memory_in_dm(7 downto 0);    
							 -- this handles the synchronous write mode (write = 1)
						end if;
					--end if;
				when others =>
					null;
				end case;
				end if;
			end if;
			end process;
			--end if;
			
		process(op_dm)
			begin
			case op_dm is			
				when "100011" => --lw
					if (memory_read_dm='1') then
						memory_out_dm <= RAM(to_integer(unsigned(memory_address_dm)));
					end if;
				when "100100" => --lbu
					if (memory_read_dm='1') then
						memory_out_dm <= x"000000" & RAM(to_integer(unsigned(memory_address_dm)))(7 downto 0);
					end if;
				when "100110" => --lb
					if (memory_read_dm='1') then
						if ( RAM(to_integer(unsigned(memory_address_dm)))(7) = '0') then 
							memory_out_dm <= x"000000" & RAM(to_integer(unsigned(memory_address_dm)))(7 downto 0);
						else 
							memory_out_dm <= x"111111" & RAM(to_integer(unsigned(memory_address_dm)))(7 downto 0);
						end if;
					end if;
					
				when "100101" => --lhu
					if (memory_read_dm='1') then
						memory_out_dm <= x"0000" & RAM(to_integer(unsigned(memory_address_dm)))(15 downto 0);
					end if;
				when "100111" => --lh
					if (memory_read_dm='1') then
						if ( RAM(to_integer(unsigned(memory_address_dm)))(15) = '0') then 
							memory_out_dm <= x"0000" & RAM(to_integer(unsigned(memory_address_dm)))(15 downto 0);
						else 
							memory_out_dm <= x"1111" & RAM(to_integer(unsigned(memory_address_dm)))(15 downto 0);
						end if;
					end if;
				
				when others =>
					memory_out_dm <= x"00000000";
				end case;

		end process;
     --memory_out_dm <= RAM(to_integer(unsigned(memory_address_dm))) when (memory_read_dm='1') else x"00000000";   
	      -- this handles the asynchronous read mode (doesn't check if read = 1) 
--			with op_dm select
--				temp <= RAM(to_integer(unsigned(memory_address_dm))) when "100011", --lw
--						  x"000000" & RAM(to_integer(unsigned(memory_address_dm)))(7 downto 0) when "100100", --lbu
--						  x"000000" & RAM(to_integer(signed(memory_address_dm)))(7 downto 0)
--						  x"00000000" when others; --lbu
--
--			memory_out_dm <= temp;
end Behavioral;
