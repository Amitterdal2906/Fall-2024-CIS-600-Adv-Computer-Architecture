library ieee;
    use ieee.std_logic_1164.all;
    --use ieee.std_logic_arith.all;
	 --use ieee.std_logic_unsigned.all;
	 use IEEE.NUMERIC_STD.ALL;

entity ALU_32 is
    port(
		  A_cons : in integer;  		  -- A input
		  B_cons : in integer;  		  -- A input
        A_alu32 : in std_logic_vector(31 downto 0);  		  -- A input
        B_alu32 : in std_logic_vector(31 downto 0);  		  -- B input
        ALUfunct_alu32 : in std_logic_vector(5 downto 0);    -- control
        ALUout_alu32 : out std_logic_vector(31 downto 0);  -- result
        overflow_alu32: out std_logic;  						  -- check if ALU overflowed
        Zero_alu32 : out std_logic);  							  -- check if ALUout is zero
end ALU_32 ;

architecture behavioural of ALU_32 is

 --   signal slt, set: std_logic;	
    signal ALU_Output: std_logic_vector(31 downto 0);
    signal c_in: std_logic_vector(31 downto 0);
    signal c_out: std_logic_vector(31 downto 0);
	 signal set: std_logic_vector(31 downto 0);
	 signal temp: signed(31 downto 0);
    
------ Component Declarations ------
component ALU
    port(
		funct_alu : in std_logic_vector(5 downto 0);  	-- control
		A_alu : in std_logic;  	 								-- A input
		B_alu : in std_logic;  	 								-- B input
		carryin_alu: in std_logic;							-- arithmetic carry in 
--		less_alu: in std_logic;
		ALUout_alu : out std_logic;							-- result
		carryout_alu: out std_logic);						-- arithmetic carry out
end component ;

begin

    --c_in0 input
    with ALUfunct_alu32 select
    c_in(0) <= '1' when "100010",  
					'0' when others; 

------ Component Instantiations ------
    ALU_0 : ALU
        port map ( A_alu       => A_alu32(0),
                   B_alu       => B_alu32(0),
                   funct_alu  => ALUfunct_alu32,
                   ALUout_alu=>ALU_Output(0),
                   carryout_alu=>c_out(0),		--c_out0 will become the carryin of the next 1-bit ALU as c_out0 
                   carryin_alu=> c_in(0)
                   );    

    alubits: for i in 1 to 31 generate
        ALU_i : ALU
        port map ( A_alu       	=> A_alu32(i),
                   B_alu       	=> B_alu32(i),
                   funct_alu  	=> ALUfunct_alu32,
                   ALUout_alu	 	=> ALU_Output(i),
                   carryout_alu	=> c_out(i),		--c_out0 will become the carryin of the next 1-bit ALU as c_out0 
                   carryin_alu	=> c_in(i)
                   );    
        c_in(i) <= c_out(i-1);
   end generate alubits;


   Zero_alu32 <= '1' when ALU_Output = x"00000000" else '0';
--   set <= A_alu32(31) xor (not B_alu32(31)) xor c_out(30); --slt
   
	--ALUout_alu32 <= ALU_Output;
	overflow_alu32 <= '0';
	
process(ALUfunct_alu32,A_alu32,B_alu32)
begin
	case ALUfunct_alu32 is
	when "000000" =>
		set <= std_logic_vector(shift_left(unsigned(ALU_Output), B_cons));
		ALUout_alu32 <= set; --sll
	when "000010" =>
		set <= std_logic_vector(shift_right(unsigned(ALU_Output), B_cons));
		ALUout_alu32 <= set; --srl
	when "000011" =>
		set <= std_logic_vector(shift_right(signed(ALU_Output), B_cons));
		ALUout_alu32 <= set; --sra
	when "000111" =>
		set <= std_logic_vector(shift_right(signed(ALU_Output), to_integer(signed(B_alu32))));
		ALUout_alu32 <= set; --srav
	when "000100" =>
		set <= std_logic_vector(shift_left(unsigned(ALU_Output), to_integer(unsigned(B_alu32))));
		ALUout_alu32 <= set; --sllv
	when "000101" =>
		set <= std_logic_vector(shift_right(unsigned(ALU_Output), to_integer(unsigned(B_alu32))));
		ALUout_alu32 <= set; --srlv
		
	when "101010" =>
		if (A_alu32>B_alu32) then
			ALUout_alu32 <= x"00000000"; -- SLT operation
		else
			ALUout_alu32 <= x"00000001";
		end if;
	when "111011" =>
		if (unsigned(A_alu32)>unsigned(B_alu32)) then
			ALUout_alu32 <= x"00000000"; -- SLTU operation
		else
			ALUout_alu32 <= x"00000001";
		end if;
	when "100001" => 
		ALUout_alu32 <= std_logic_vector(unsigned(A_alu32) + unsigned(B_alu32)); -- ADDU operation		
	when "100011" => 
		ALUout_alu32 <= std_logic_vector(unsigned(A_alu32) - unsigned(B_alu32)); -- SUBU operation		
	
	when others => 
		ALUout_alu32 <= ALU_Output;
	end case;
end process;
	
end behavioural;



