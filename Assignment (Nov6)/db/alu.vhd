library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

  
entity ALU is
    port(
	 		funct_alu : in std_logic_vector(5 downto 0);  	-- control
			A_alu : in std_logic;  	 								-- A input
			B_alu : in std_logic;  	 								-- B input
			carryin_alu : in std_logic;		-- arithmetic carry in 
			ALUout_alu : out std_logic;  						-- result
			carryout_alu : out std_logic);					-- arithmetic carry out
end ALU ;

architecture behavioural of ALU is
    signal Operation: std_logic_vector(1 downto 0);
    signal Ainvert, Binvert, a_in, b_in, result, set: std_logic;
begin
process(a_in,b_in,funct_alu)
begin
	case funct_alu is
	when "100100" => 
		result <= A_alu and B_alu; -- AND operation
	when "100101" => 
		result <= A_alu or B_alu; -- OR operation
	when "100110" => 
		result <= A_alu xor B_alu; -- XOR operation
	when "100111" => 
		result <= A_alu nor B_alu; -- NOR operation
	when "100000" => 
		result <= (A_alu xor B_alu) xor carryin_alu; -- ADD operation
	when "100010" => 
		result <= (A_alu xor (not B_alu)) xor carryin_alu; -- SUB operation
	--when "100011" => 
	--	result <= (unsigned(A_alu) xor (not unsigned(B_alu))) xor unsigned(carryin_alu); -- SUBU operation
	when "101010" => 
		if (a_in>b_in) then
			result <= '0'; -- SLT operation
		else
			result <= '1';
		end if;
	when others => 
		result <= A_alu;
	end case;
end process;


--  with funct_alu select
--    result <= --'0' when "101010", -- SLT operation     
--              A_alu and B_alu when "100100", -- AND operation
--              A_alu or B_alu when "100101" , -- OR operation
--              A_alu xor B_alu when "100110", -- xor operation
--              A_alu nor B_alu when "100111", -- nor operation
--              (A_alu xor B_alu) xor carryin_alu when "100000", -- add operation
--              (A_alu xor (not B_alu)) xor carryin_alu when "100010", -- sub operation
--              '0' when others;


    --Operation control for adder    
  with funct_alu select
    carryout_alu <= ((A_alu and B_alu) or (carryin_alu and B_alu)) or (A_alu and carryin_alu) when "100000", -- add operation
                    ((A_alu and (not B_alu)) or (carryin_alu and (not B_alu))) or (A_alu and carryin_alu) when "100010", -- sub operation
                    '0' when others;
    --result bit
    ALUout_alu <= result;

    
end behavioural;

