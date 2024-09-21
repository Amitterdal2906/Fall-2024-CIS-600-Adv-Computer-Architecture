------------------------------------------------------------------------------------------------------------
--
-- Implementation of MIPS
--
-- File name   : microcomputer.vhd
--              
------------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library work;
use work.all;

  
entity microcomputer is
    port (
          CLOCK_50: in std_logic;                   -- 50MHz clock in the DE10_Lite board
          KEY: in std_logic_vector (1 downto 0);    -- keys or buttons (KEY(0)- KEY(1))
          SW: in std_logic_vector (9 downto 0);     -- switches (SW(9) 0 SW(0))
          LEDR: out std_logic_vector (9 downto 0);	 -- led's 
          HEX0: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 0
          HEX1: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 1
          HEX2: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 2
          HEX3: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 3
          HEX4: out std_logic_vector (6 downto 0);	 -- 7-segment display, digit 3
	        HEX5: out std_logic_vector (6 downto 0));  	-- 7-segment display, digit 5

end entity;

architecture rtl of microcomputer is

------ Component Declarations ------
    component mips
    port (clock_mips    			 : in  std_logic;
          reset_mips     			 : in  std_logic;
          memory_in_mips       : out std_logic_vector (31 downto 0);	-- data to write into memory (sw)
          memory_out_mips      : in  std_logic_vector (31 downto 0);  -- data being read from memory (lw)
          memory_address_mips  : out std_logic_vector (31 downto 0);	-- memory address to read/write
          pc_mips              : out std_logic_vector (31 downto 0);	-- instruction address to fetch
          instruction_mips     : in std_logic_vector (31 downto 0);   -- instruction data to execute in the next cycle
          overflow_mips			   : out std_logic;   -- overflow flag
	        invalid_mips			   : out std_logic;   -- invalid opcode flag
	        memory_write_mips    : out std_logic;                      -- control signal for data memory read/write
			    
	 -- ***DEBUG*** 	 
	 -- sw=10000000(00, 01, 10) - PC, instruction, pc4
	 -- sw=01000000(00, 01, 10) - rt/rd, rd1, rd2
	 -- sw=00100000(01, 11) - ALUOut, RegRd
	 -- sw=0001000001 - memout
	 --		 
	 -- LEDR9-0 shows 10 control signal - RegDst, ALUSrc, MemtoReg, RegWrite, MemWrite, 
	 --                                   Branch, ALUOp(1), ALUOp(0), OVERFLOW, Jump

	 pc4_mips: out std_logic_vector (31 downto 0);
 	 rt_mips, rd_mips, regrd_mips: out std_logic_vector (4 downto 0);
	 aluout_mips: out std_logic_vector (31 downto 0);
	 memout_mips: out std_logic_vector (31 downto 0);
	 rd1_mips, rd2_mips: out std_logic_vector (31 downto 0);
	 control_mips: out std_logic_vector (9 downto 0));
    end component;

    component inst_memory_128B
    port (clock_im        : in  std_logic;
          reset_im        : in  std_logic;
          pc_im           : in  std_logic_vector (31 downto 0);	  -- instruction address to fetch
          instruction_im  : out std_logic_vector (31 downto 0));    -- instruction data to execute in the next cycle       
    end component;
	 
    component data_memory_64B
    port (clock_dm          : in  std_logic;
          reset_dm          : in  std_logic;
          memory_address_dm : in  std_logic_vector (31 downto 0);	  -- memory address to read/write
          memory_write_dm   : in  std_logic;                        -- control signal for data memory read/write
          memory_in_dm      : in  std_logic_vector (31 downto 0);	  -- data to write into memory (sw)
          memory_out_dm     : out std_logic_vector (31 downto 0));  -- data being read from memory (lw)
    end component;


 -- Signal Declaration
 
    signal memory_in         : STD_LOGIC_VECTOR (31 downto 0);      -- data to write into memory (sw)
    signal memory_out        : STD_LOGIC_VECTOR (31 downto 0);      -- data being read from memory (lw)
    signal memory_address    : STD_LOGIC_VECTOR (31 downto 0);      -- memory address to read/write
    signal memory_write      : STD_LOGIC;                           -- control signal for data memory read/write
    signal instruction       : STD_LOGIC_VECTOR (31 downto 0);      -- instruction data to execute in the next cycle 
    signal pc                : STD_LOGIC_VECTOR (31 downto 0);      -- instruction address to fetch
  signal overflow		  	   : STD_LOGIC;
  signal invalid		  	   : STD_LOGIC;
	 
    signal plusone           : STD_LOGIC_VECTOR (3 downto 0);	-- this is for 7-segment display
    signal plusone1          : STD_LOGIC_VECTOR (3 downto 0);	-- this is for 7-segment display
    signal plusone2          : STD_LOGIC_VECTOR (3 downto 0);	-- this is for 7-segment display
    signal plusone3          : STD_LOGIC_VECTOR (3 downto 0);	-- this is for 7-segment display
  signal plusone4          : STD_LOGIC_VECTOR (3 downto 0);	-- this is for 7-segment display
    signal plusone5          : STD_LOGIC_VECTOR (3 downto 0);	-- this is for 7-segment display
    signal plusone6          : STD_LOGIC_VECTOR (3 downto 0);	-- this is for 7-segment display
    signal plusone7          : STD_LOGIC_VECTOR (3 downto 0);	-- this is for 7-segment display

------ Signal Declarations ------
	 signal pc4: std_logic_vector (31 downto 0);
 	 signal rt, rd, regrd: std_logic_vector (4 downto 0);
	 signal aluout: std_logic_vector (31 downto 0);
	 signal memout: std_logic_vector (31 downto 0);
	 signal rd1, rd2: std_logic_vector (31 downto 0);
	 signal control: std_logic_vector (9 downto 0);

 
    signal  reset       	: std_logic;
    signal  clock			: std_logic;
    signal clk_divide_count1 	: std_logic_vector(31 downto 0) := (others => '0'); 	
    signal slow_clk1 			: std_logic := '0';	

 signal counter_out: std_logic_vector(31 downto 0) := (others => '0'); 	
    signal flipflops: std_logic_vector(1 downto 0) := (others => '0');
    signal counter_set: std_logic := '0';	
    constant counter_size: Integer := 16;
	 
begin

    reset <= NOT KEY(1);   -- KEY(1) is reset

--*****************************************CLOCK***********************
--*********************************************************************
--option 1: key(0) as the clock (need a deboncing circuit)
--option 2: slow clock (10Hz)
--option 3: 50MHz clock


--option 1: key(0) as the clock (need a deboncing circuit)
------ reset (clock) key debouncing
  clock <= NOT KEY(0);      -- KEY(0) as the clock (because 50MHz is too fast)
                            -- But it does not work okay; need debouncing circuit
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
      --clk <= flipflops(1);
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
			if (clk_divide_count1 >= 5000000) then	--50MHz clock counting to 5 million, therefore slow clock will have period of 0.1s [(1/(50*10^6))*(5*10^6) = 0.1]
				clk_divide_count1 <= (others => '0');	--Reset clock divider
				slow_clk1 <= '1';				--Pulse slow_clk for 0.1 s
			else
				clk_divide_count1 <= clk_divide_count1 + 1 ;	--Increment clk_divide_count, NB this is not the output counter
				--slow_clk1 <= '0';
			end if;
    end if;

		if (slow_clk1 = '1') then
			if (clk_divide_count1 >= 5000000) then  	--50MHz clock counting to 5 million, therefore slow clock will have period of 0.1s [(1/(50*10^6))*(5*10^6) = 0.1]
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

--option 3: 50MHz clock
    --clk <= CLOCK_50;        -- 50MHz clock in the DE10_Lite board

--*********************************************************************
--*********************************************************************
 
--begin

------ Component Instantiations ------
    CPU_1 : mips
    port map (clock_mips=>clock, reset_mips=>reset,
				  memory_in_mips         => memory_in,
				  memory_out_mips        => memory_out,
				  memory_address_mips    => memory_address,
				  pc_mips                => pc,
				  overflow_mips			     => overflow,
				  invalid_mips			 	   => invalid,
				  instruction_mips       => instruction,
				  memory_write_mips      => memory_write,

				  -- ***DEBUG*** 
					pc4_mips => pc4,
					rt_mips => rt,
					rd_mips => rd,
					rd1_mips => rd1,
					rd2_mips => rd2,
					control_mips => control,
					aluout_mips => aluout, 
					regrd_mips => regrd,
					memout_mips => memout);    

    MEMORY_1 : inst_memory_128B
    port map (clock_im=>clock, reset_im=>reset,        
				  pc_im                  => pc,
				  instruction_im         => instruction);

    MEMORY_2 : data_memory_64B
    port map (clock_dm=>clock, reset_dm=>reset,
				  memory_address_dm     => memory_address,
				  memory_write_dm       => memory_write,
				  memory_in_dm          => memory_in,
				  memory_out_dm         => memory_out);


	 -- sw=10000000(00, 01, 10) - PC, instruction, pc4
	 -- sw=01000000(00, 01, 10) - rt/rd, rd1, rd2
	 -- sw=00100000(01, 11) - ALUOut, RegRd
	 -- sw=0001000001 - memout
	 --		 
	 -- LEDR9-0 shows 10 control signal - RegDst, ALUSrc, MemtoReg, RegWrite, MemWrite, 
	 --                                   Branch, ALUOp(1), ALUOp(0), OVERFLOW, Jump

    process (sw, pc, instruction, reset, clock, rd1, rd2, aluout, aluout) 
	 begin
	 if (reset = '1') then
             plusone  <= "0000";
             plusone1 <= "0000";
             plusone2 <= "0000";
             plusone3 <= "0000";
             plusone4 <= "0000";
             plusone5 <= "0000";
             plusone6 <= "0000";
             plusone7 <= "0000";		

	 -- sw=10000000(00, 01, 10) - PC, instruction, pc4
	 	 elsif (sw = "1000000000") then 
             plusone  <= pc(3 downto 0);
             plusone1 <= pc(7 downto 4);
             plusone2 <= pc(11 downto 8);
             plusone3 <= pc(15 downto 12);
             plusone4 <= pc(19 downto 16);
             plusone5 <= pc(23 downto 20);
             plusone6 <= pc(27 downto 24);
             plusone7 <= pc(31 downto 28);

	 elsif (sw = "1000000001") then
             plusone  <= instruction(3 downto 0);
             plusone1 <= instruction(7 downto 4);
             plusone2 <= instruction(11 downto 8);
             plusone3 <= instruction(15 downto 12);
             plusone4 <= instruction(19 downto 16);
             plusone5 <= instruction(23 downto 20);
             plusone6 <= instruction(27 downto 24);
             plusone7 <= instruction(31 downto 28);

	 elsif (sw = "1000000010") then
             plusone  <= pc4(3 downto 0);
             plusone1 <= pc4(7 downto 4);
             plusone2 <= pc4(11 downto 8);
             plusone3 <= pc4(15 downto 12);
             plusone4 <= pc4(19 downto 16);
             plusone5 <= pc4(23 downto 20);
             plusone6 <= pc4(27 downto 24);
             plusone7 <= pc4(31 downto 28);

	 -- sw=01000000(00, 01, 10) - rt/rd, rd1, rd2
	 elsif (sw = "0100000000") then 
             plusone  <= rt(3 downto 0);
             plusone1(0) <= rt(4); 
             plusone1(3 downto 1) <= "000";
             plusone2 <= "0000";
             plusone3 <= rd(3 downto 0);
             plusone4(0) <= rd(4);
             plusone4(3 downto 1) <= "000";
             plusone5 <= "0000";
             ledr <= control;

	 elsif (sw = "0100000001") then
             plusone  <= rd1(3 downto 0);
             plusone1 <= rd1(7 downto 4);
             plusone2 <= rd1(11 downto 8);
             plusone3 <= rd1(15 downto 12);
             plusone4 <= rd1(19 downto 16);
             plusone5 <= rd1(23 downto 20);
             ledr <= control; 

	 elsif (sw = "0100000010") then
             plusone  <= rd2(3 downto 0);
             plusone1 <= rd2(7 downto 4);
             plusone2 <= rd2(11 downto 8);
             plusone3 <= rd2(15 downto 12);
             plusone4 <= rd2(19 downto 16);
             plusone5 <= rd2(23 downto 20);
             ledr <= control;

	 -- sw=00100000(01, 11) - ALUOut, RegRd
	 elsif (sw = "0010000001") then
             plusone  <= aluout(3 downto 0);
             plusone1 <= aluout(7 downto 4);
             plusone2 <= aluout(11 downto 8);
             plusone3 <= aluout(15 downto 12);
             plusone4 <= aluout(19 downto 16);
             plusone5 <= aluout(23 downto 20);
             ledr <= control;

 	   elsif (sw = "0010000011") then
             plusone  <= regrd(3 downto 0);
             plusone1(0) <= regrd(4);
             plusone1(3 downto 1) <= "000";
             plusone2 <= "0000";
             plusone3 <= "0000";
             plusone4 <= "0000";
             plusone5 <= "0000";
             ledr <= control;

	 -- sw=0001000001 - memout
 	 elsif (sw = "0001000001") then 
             plusone  <= memout(3 downto 0);
             plusone1 <= memout(7 downto 4);
             plusone2 <= memout(11 downto 8);
             plusone3 <= memout(15 downto 12);
             plusone4 <= memout(19 downto 16);
             plusone5 <= memout(23 downto 20);
             ledr <= control;
   else
             plusone  <= "0000";
             plusone1 <= "0000";
             plusone2 <= "0000";
             plusone3 <= "0000";
             plusone4 <= "0000";
             plusone5 <= "0000";
             plusone6 <= "0000";
             plusone7 <= "0000";	
		end if;
	   --end if;
	 end process;
	 
    h0: hex port map(plusone, o => hex0);      -- display on ledr(7:0) & hex5~0
    h1: hex port map(plusone1, o => hex1);
    h2: hex port map(plusone2, o => hex2);
    h3: hex port map(plusone3, o => hex3); 
    h4: hex port map(plusone4, o => hex4);    
    h5: hex port map(plusone5, o => hex5);    
          
end architecture;