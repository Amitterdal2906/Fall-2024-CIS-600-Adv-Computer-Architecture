library ieee;
    use ieee.std_logic_1164.all;
--    use ieee.std_logic_arith.all;

entity ALU is
    port(
	 		ALUctl_alu : in std_logic_vector(3 downto 0);  	-- control
			A_alu : in std_logic;  	 								 -- A input
			B_alu : in std_logic;  	 								-- B input
			carryin_alu,less_alu : in std_logic;		-- arithmetic carry in 
			ALUout_alu : out std_logic;  						-- result
			carryout_alu : out std_logic);					-- arithmetic carry out
end ALU ;

architecture behavioural of ALU is
    signal Operation: std_logic_vector(1 downto 0);
    signal Ainvert, Binvert, a_in, b_in, result, set: std_logic;
begin

    Operation<=ALUctl_alu(1 downto 0);
    Binvert<=ALUctl_alu(2);
    Ainvert<=ALUctl_alu(3);

    --Ainvert 2-to-1 MUX
    with Ainvert select
    a_in <= A_alu when '0',  
            not A_alu when others; 

    --Binvert 2-to-1 MUX                
    with binvert select
    b_in <= B_alu when '0',  
            not B_alu when others; 

    --Operation 4-to-1 MUX                
    with Operation select
    result <= a_in and b_in when "00", -- AND operation     
              a_in or b_in when "01" , -- OR operation
              a_in xor b_in xor carryin_alu when "10", -- add operation
              less_alu when others;

    --Operation control for adder    
    with Operation select
    carryout_alu <= (a_in and b_in) or (carryin_alu and b_in) or (a_in and carryin_alu) when "10" | "11",  
                '0' when others;     

    --result bit
    ALUout_alu <= result;

    
end behavioural;
