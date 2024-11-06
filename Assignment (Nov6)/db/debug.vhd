library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
library work;
use work.all;


  
entity debug is
    port (
          CLOCK_50: in std_logic;                   -- 50MHz clock in the DE10_Lite board
          KEY: in std_logic_vector (1 downto 0);    -- keys or buttons (KEY(0)- KEY(1))
          SW: in std_logic_vector (9 downto 0);     -- switches (SW(9) 0 SW(0))
          LEDR: out std_logic_vector (9 downto 0);  -- led's
          HEX0: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 0
          HEX1: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 1
          HEX2: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 2
          HEX3: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 3
          HEX4: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 3
          HEX5: out std_logic_vector (6 downto 0)
			 );	  

end entity;
	 
architecture rtl of debug is
  component ALU_32
    port(
		  A_cons : in integer;  	
		  B_cons : in integer;
        A_alu32 : in std_logic_vector(31 downto 0);  		  -- A input
        B_alu32 : in std_logic_vector(31 downto 0);  		  -- B input
        ALUfunct_alu32 : in std_logic_vector(5 downto 0);    -- control
        ALUout_alu32 : out std_logic_vector(31 downto 0);  -- result
        overflow_alu32: out std_logic;  						  -- check if ALU overflowed
        Zero_alu32 : out std_logic  							  -- check if ALUout is zero
        );
  end component;
  
  component Instruction_Memory
    port(
			pc: in std_logic_vector(31 downto 0);
			im_instruction: out  std_logic_vector(31 downto 0)
        );
  end component;  
  component DataMemory is
    port (
			clock_dm		: in  std_logic;
         reset_dm		: in  std_logic;
         memory_in_dm	: in  std_logic_vector(31 downto 0);    
         memory_write_dm	: in  std_logic;
			memory_read_dm	: in  std_logic;
         memory_address_dm	: in  std_logic_vector(15 downto 0);
         memory_out_dm	: out std_logic_vector(31 downto 0);
			op_dm 				: in std_logic_vector(5 downto 0)
			);
	end component; 

  signal  reset          	: std_logic;
  signal  clock	   		: std_logic;
  signal counter_set       : std_logic := '0';
  signal flipflops         : std_logic_vector(1 downto 0) := (others => '0');
  signal clk_divide_count1 : std_logic_vector(31 downto 0) := (others => '0'); 	
  signal slow_clk1 		   : std_logic := '0';	
  signal counter_out       : std_logic_vector(31 downto 0) := (others => '0'); 	
  constant counter_size    : Integer := 16;
  signal plusone0          : STD_LOGIC_VECTOR (3 downto 0); -- these are for 7-segment display
  signal plusone1          : STD_LOGIC_VECTOR (3 downto 0);
  signal plusone2          : STD_LOGIC_VECTOR (3 downto 0);
  signal plusone3          : STD_LOGIC_VECTOR (3 downto 0);
  signal plusone4          : STD_LOGIC_VECTOR (3 downto 0);
  signal plusone5          : STD_LOGIC_VECTOR (3 downto 0);
  signal plusone6          : STD_LOGIC_VECTOR (3 downto 0);
  signal plusone7          : STD_LOGIC_VECTOR (3 downto 0);
  signal sw0               : STD_LOGIC_VECTOR (3 downto 0); -- add more switches if you need to
-- the signals below here are just the things you want to see when debugging
-- the "instruction memory" and registers below will move to another architecture  
  signal icount            : std_logic_vector (31 downto 0) := (others => '0');
  signal rs                : STD_LOGIC_VECTOR (4 downto 0);
  signal rt                : STD_LOGIC_VECTOR (4 downto 0);
  signal rd                : STD_LOGIC_VECTOR (4 downto 0);
  signal funct             : STD_LOGIC_VECTOR (5 downto 0);
  signal val1              : std_logic_vector (31 downto 0);   
  signal val2              : std_logic_vector (31 downto 0);
  signal result            : std_logic_vector (31 downto 0);    
  signal overflow          : std_logic;
  signal isZero            : std_logic;
  signal instruction       : std_logic_vector (31 downto 0);
  signal write_en				: std_logic;
  signal read_en				: std_logic;
  signal memread				: std_logic_vector (31 downto 0);
  signal immed					: std_logic_vector (15 downto 0);
  signal op						: std_logic_vector (5 downto 0);
  signal A						: integer;
  signal B						: integer;
  signal const             : std_logic_vector (31 downto 0);
  
-- make this into a a 32 value array, but you will likely only use a few
-- the initial values allow for debigging and the reset button should likely be coded
-- to use the same values
  type register_type is array (0 to 7) of std_logic_vector(31 downto 0);
  signal Registers : register_type := (
   		0 => x"00000000", 
   		1 => x"00000001", 
   		2 => x"00000002", 
   		3 => x"00000003", 
			4 => x"00000004",
			5 => x"00000084",
			6 => x"0000008c",
			7 => x"000000aa");
  
-- change this to 32 bit mips instructions whenever you are ready
-- using hex saves you typing, but also doesn't "divide" nicely
--  type instruction_type is array (0 to 7) of std_logic_vector(14 downto 0);
--  signal Instructions : instruction_type := (
--   		0 => "001010000100000", 
----   		0 => "001 010 000 100000", add r1 to r2 and put the result in r0 (r1,r2,r0,add) result = 3
----                                  for viewing, then remove spaces
----   		0 => x"1420",  doesn't divide nicely, so maybe use 32 bits for instruction memory
----                      instead of hex?
--			1 => "011100000100111",
----			1 => "011 100 000 100111", nor r3 to r4 and put the result in r0 (r3,r4,r0,nor) result = FFFFF8
--			
----   		1 => "010011000100000",
----   		1 => "010 011 000 100000", add r2 to r3 and put the result in r0 (r2,r3,r0,add)	result = 5
--		
--   		2 => "011100000100100", 
----   		2 => "011 100 000 100100", and r3 to r4 and put the result in r0 (r3,r4,r0,and)	result = 0
--		
--   		3 => "011100000100101",
----   		3 => "011 100 000 100101", or r3 to r4 and put the result in r0 (r3,r4,r0,or)	result = 7
--
--			4 => "111001000111011",
----   		4 => "010 100 000 100110", xor r3 to r4 and put the result in r0 (r3,r4,r0,xor) result = 6
--
----			5 => "011100000100111",
----   		5 => "011 100 000 100111", nor r3 to r4 and put the result in r0 (r3,r4,r0,nor) result = FFFFF8
--			
----			6 => "010001000100010",
----   		6 => "010 001 000 100010", sub r2 to r1 and put the result in r0 (r2,r1,r0,sub)	result = 1
--		
--			--7 => "011001000100010", --);
----   		7 => "011 001 000 100010", sub r3 to r1 and put the result in r0 (r3,r1,r0,sub) result = 2
--
--
--			5 => "001010000101010",
----   		5 => "100 001 000 100010", slt r3 to r1 and put the result in r0 (r3,r1,r0,slt) result = 2
--
--			6 => "010001000111011",
--			
----			6 => "010001000000000",
----   		6 => "010 001 000 000000", sltu r2 to r1 and put the result in r0 (r2,r1,r0,sll)
--
--			7 => "100001000111011");
----   		8 => "100 001 000 000001", srl r2 to r1 and put the result in r0 (r2,r1,r0,srl)

  

begin
-- the ALU will later be defined in another place
  My_ALU_32 : ALU_32
    port map (
		  A_cons => A,
		  B_cons => B,
        A_alu32 => val1,
        B_alu32 => val2,
        ALUfunct_alu32 => funct,
        ALUout_alu32 => result,
        overflow_alu32 => overflow,
        Zero_alu32 => isZero
		  );  
		  
   My_Instruction_Memory : Instruction_Memory
    port map (
        pc => icount,
        im_instruction => instruction
		  ); 
		  
   My_DataMemory : DataMemory
    port map (
        clock_dm => clock,
        reset_dm => reset,
		  memory_in_dm	=> val1,   
        memory_write_dm => write_en,
		  memory_read_dm =>  read_en,
        memory_address_dm => 	immed,
        memory_out_dm => memread,
		  op_dm 	=> op
		  );	
	process(op)
	begin
		if (op = "100011") or (op = "100100") or (op = "100110") or (op = "100101") or (op = "100111") then
			write_en <= '0';
			read_en <= '1';
		elsif (op = "101011") or (op = "101001") or (op = "101000") then
			write_en <= '1';
			read_en <= '0';
		else
			write_en <= '0';
			read_en <= '0';
		end if;
	end process;
-- using numbers is when addressing memory and it distinguishes memory from registers (see below)
-- will be using pc later
  --instruction <= Instructions(to_integer(unsigned(icount))); 
--  rs <= Instructions(0)(14 downto 12);
  A <= to_integer(unsigned(rs));
  B <= to_integer(unsigned(rt));
  const <= std_logic_vector(to_unsigned(B,const'length));
  rs <= instruction(25 downto 21);
  rt <= instruction(20 downto 16);
  rd <= instruction (15 downto 11);
  funct <= instruction (5 downto 0);
  op <= instruction(31 downto 26);
  
  immed <= instruction(15 downto 0);
--  val1 <= Registers(to_integer(unsigned(rs)));
--  with rs select   -- the better way which clearly(?) shows this is a multiplexor
--    val1 <= Registers(0) when "000",
--            Registers(1) when "001",
--            Registers(2) when "010",
--            Registers(3) when "011",
--            Registers(4) when "100",
--            Registers(5) when "101",
--            Registers(6) when "110",
--            Registers(7) when "111";
  val1 <= Registers(to_integer(unsigned(rs)));				
  val2 <= Registers(to_integer(unsigned(rt)));   -- the "bad" way using a number index
  sw0 <= sw(3 downto 0);
  
--*****************************************CLOCK***********************
--*********************************************************************
--option 1: key(0) as the clock (need a deboncing circuit)
--option 2: slow clock (10Hz)
--option 3: 50MHz clock

  reset <= NOT KEY(1);   -- KEY(1) is reset
  clock <= NOT KEY(0);   -- comment this and uncomment the next for a slow clock
--  clock <= slow_clk1;
  counter_set <= flipflops(0) xor flipflops(1);

  process(CLOCK_50)
  begin
    if (CLOCK_50'event and CLOCK_50 = '1') then
      flipflops(0) <= NOT KEY(0);
      flipflops(1) <= flipflops(0);
      if (counter_set = '1') then
        counter_out <= (OTHERS => '0');
      elsif (counter_out(counter_size) = '0') then
        counter_out <= counter_out +1;
      else
        --clock <= flipflops(1);
      end if;
    end if;
  end process;
------ reset (clock) key debouncing


--option 2: slow clock (10Hz)
--clk <= slow_clk1;       -- 10Hz clock in the DE10_Lite board
------ Slow clock begin ------
  process(CLOCK_50)
  begin
 	 if rising_edge(CLOCK_50) then
		if (slow_clk1 = '0') then
			if (clk_divide_count1 >= 200000000) then	--50MHz clock counting to 5 million, therefore slow clock will have period of 0.1s [(1/(50*10^6))*(5*10^6) = 0.1]
				clk_divide_count1 <= (others => '0');	--Reset clock divider
				slow_clk1 <= '1';				--Pulse slow_clk for 0.1 s
			else
				clk_divide_count1 <= clk_divide_count1 + 1 ;	--Increment clk_divide_count, NB this is not the output counter
				--slow_clk1 <= '0';
			end if;
      end if;

      if (slow_clk1 = '1') then
		  if (clk_divide_count1 >= 200000000) then  	--50MHz clock counting to 5 million, therefore slow clock will have period of 0.1s [(1/(50*10^6))*(5*10^6) = 0.1]
	       clk_divide_count1 <= (others => '0');	--Reset clock divider
		    slow_clk1 <= '0';				--Pulse slow_clk for 0.1s
	     else
		    clk_divide_count1 <= clk_divide_count1 + 1 ;	--Increment clk_divide_count, NB this is not the output counter
			 --slow_clk1 <= '1';
		  end if;
      end if;
	 end if;
  end process;
------ Slow clock end ------

		
  process (reset, clock, val1, val2, result) 
	 begin
	 if (reset = '1') then
             plusone0 <= "0000";
             plusone1 <= "0000";
             plusone2 <= "0000";
             plusone3 <= "0000";
             plusone4 <= "0000";
             plusone5 <= "0000";
             plusone6 <= "0000";
             plusone7 <= "0000";		
	 elsif (sw0 = "0001") then 
             plusone0 <= val1(3 downto 0);
             plusone1 <= val1(7 downto 4);
             plusone2 <= val1(11 downto 8);
             plusone3 <= val1(15 downto 12);
             plusone4 <= val1(19 downto 16);
             plusone5 <= val1(23 downto 20);
             plusone6 <= val1(27 downto 24);
             plusone7 <= val1(31 downto 28);
	 elsif (sw0 = "0010") then 
             plusone0 <= val2(3 downto 0);
             plusone1 <= val2(7 downto 4);
             plusone2 <= val2(11 downto 8);
             plusone3 <= val2(15 downto 12);
             plusone4 <= val2(19 downto 16);
             plusone5 <= val2(23 downto 20);
             plusone6 <= val2(27 downto 24);
             plusone7 <= val2(31 downto 28);
	 elsif (sw0 = "0100") then 
             plusone0 <= result(3 downto 0);
             plusone1 <= result(7 downto 4);
             plusone2 <= result(11 downto 8);
             plusone3 <= result(15 downto 12);
             plusone4 <= result(19 downto 16);
             plusone5 <= result(23 downto 20);
             plusone6 <= result(27 downto 24);
             plusone7 <= result(31 downto 28);
	 elsif (sw0 = "0110") then 
             plusone0 <= Registers(0)(3 downto 0);
             plusone1 <= Registers(0)(7 downto 4);
             plusone2 <= Registers(0)(11 downto 8);
             plusone3 <= Registers(0)(15 downto 12);
             plusone4 <= Registers(0)(19 downto 16);
             plusone5 <= Registers(0)(23 downto 20);
             plusone6 <= Registers(0)(27 downto 24);
             plusone7 <= Registers(0)(31 downto 28);
	 elsif (sw0 = "0111") then 
             plusone0 <= instruction(3 downto 0);
             plusone1 <= instruction(7 downto 4);
             plusone2 <= instruction(11 downto 8);
             plusone3 <= instruction(15 downto 12);
             plusone4 <= instruction(19 downto 16);
             plusone5 <= instruction(23 downto 20);
             plusone6 <= instruction(27 downto 24);
             plusone7 <= instruction(31 downto 28);
	 elsif (sw0 = "1000") then 
             plusone0 <= memread(3 downto 0);
             plusone1 <= memread(7 downto 4);
             plusone2 <= memread(11 downto 8);
             plusone3 <= memread(15 downto 12);
             plusone4 <= memread(19 downto 16);
             plusone5 <= memread(23 downto 20);
             plusone6 <= memread(27 downto 24);
             plusone7 <= memread(31 downto 28);	
	 elsif (sw0 = "1010") then 
             plusone0 <= const(3 downto 0);
             plusone1 <= const(7 downto 4);
             plusone2 <= const(11 downto 8);
             plusone3 <= const(15 downto 12);
             plusone4 <= const(19 downto 16);
             plusone5 <= const(23 downto 20);
             plusone6 <= const(27 downto 24);
             plusone7 <= const(31 downto 28);		 
	 elsif (sw0 = "1001") then 
             plusone0 <= immed(3 downto 0);
             plusone1 <= immed(7 downto 4);
             plusone2 <= immed(11 downto 8);
             plusone3 <= immed(15 downto 12);
	 elsif (sw0 = "1110") then 
             plusone0 <= icount(3 downto 0);
             plusone1 <= icount(7 downto 4);
             plusone2 <= icount(11 downto 8);
             plusone3 <= icount(15 downto 12);
             plusone4 <= icount(19 downto 16);
             plusone5 <= icount(23 downto 20);
             plusone6 <= icount(27 downto 24);
             plusone7 <= icount(31 downto 28); 
    else
             plusone0 <= "0000";
             plusone1 <= "0000";
             plusone2 <= "0000";
             plusone3 <= "0000";
             plusone4 <= "0000";
             plusone5 <= "0000";
             plusone6 <= "0000";
             plusone7 <= "0000";	
		end if;
  end process;

-- this process will also be elsewhere
  process (reset, clock) 

	 begin
	   if (reset = '1') then
   	    icount <= x"00000000";
		elsif (rising_edge(clock)) then
		   case rd is
			  when "00000" => Registers(0) <= result;
			  when "00001" => Registers(1) <= result;
			  when "00010" => Registers(2) <= result;
			  when "00011" => Registers(3) <= result;
			  when "00100" => Registers(4) <= result;
			  when "00101" => Registers(5) <= result;
			  when "00110" => Registers(6) <= result;
			  when "00111" => Registers(7) <= result;
			  when  others => Registers(0) <= result;
			end case;
--         if (rd="000") then
--            Registers(0) <= result;
--			elsif	(rd="001") then
--            Registers(1) <= result;
--			elsif	(rd="010") then
--            Registers(2) <= result;
--			elsif	(rd="011") then
--            Registers(3) <= result;
--			elsif	(rd="100") then
--            Registers(4) <= result;
--			elsif	(rd="101") then
--            Registers(5) <= result;
--			elsif	(rd="110") then
--            Registers(6) <= result;
--			else	                   -- rd="111"
--            Registers(7) <= result;
--         end if;
--		  Registers(to_integer(unsigned(rd))) <= result;
		  icount <= icount + 1;
--        instruction <= Instructions(to_integer(unsigned(icount)));
		end if;
  end process;
	 
    h0: hex port map(plusone0, o => hex0);      -- display on ledr(7:0) & hex5~0
    h1: hex port map(plusone1, o => hex1);
    h2: hex port map(plusone2, o => hex2);
    h3: hex port map(plusone3, o => hex3); 
    h4: hex port map(plusone4, o => hex4);    
    h5: hex port map(plusone5, o => hex5);    
	 
end architecture;