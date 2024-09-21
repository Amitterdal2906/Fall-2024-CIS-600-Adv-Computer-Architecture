library ieee;
use ieee.std_logic_1164.all;

entity ALU is
    port(
        ALUctl_alu : in std_logic_vector(3 downto 0);  -- control signal (4 bits)
        A_alu : in std_logic;                          -- A input
        B_alu : in std_logic;                          -- B input
        carryin_alu, less_alu : in std_logic;          -- carry in and less signal
        ALUout_alu : out std_logic;                    -- result
        carryout_alu : out std_logic                   -- carry out
    );
end ALU;

architecture behavioural of ALU is
    signal Operation: std_logic_vector(1 downto 0);
    signal Ainvert, Binvert, a_in, b_in, result: std_logic;
begin

    -- Control signal mappings
    Operation <= ALUctl_alu(1 downto 0);  -- 2 LSB for operation control
    Binvert   <= ALUctl_alu(2);           -- Bit inversion for subtraction (invert B)
    Ainvert   <= ALUctl_alu(3);           -- Bit inversion for A

    -- Ainvert 2-to-1 MUX for A
    with Ainvert select
    a_in <= A_alu when '0',  
            not A_alu when others; 

    -- Binvert 2-to-1 MUX for B
    with Binvert select
    b_in <= B_alu when '0',  
            not B_alu when others; 

    -- Operation MUX: Perform the required operation based on the control signal
    with ALUctl_alu select
    result <= a_in and b_in when "0000",                -- AND operation     
              a_in or b_in when "0001",                 -- OR operation
              a_in xor b_in xor carryin_alu when "0010", -- ADD operation (XOR with carry)
              a_in xor b_in xor carryin_alu when "0110", -- SUB operation (XOR with inverted B)
              less_alu when "0111",                    -- Set on Less Than (SLT)
              not (a_in or b_in) when "1100",          -- NOR operation
              '0' when others;                         -- Default case

    -- Carry out logic for ADD and SUB
    with Operation select
    carryout_alu <= (a_in and b_in) or (carryin_alu and (a_in xor b_in)) when "10",  
                    '0' when others;

    -- Output result
    ALUout_alu <= result;
    
end behavioural;