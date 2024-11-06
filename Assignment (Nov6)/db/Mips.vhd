library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.all;

entity MIPS is
port (
 clk,reset: in std_logic;
 pc_out, alu_result: out std_logic_vector(15 downto 0)
);
end MIPS;

architecture Behavioral of MIPS is
 signal pc_current: std_logic_vector(31 downto 0);
 signal pc_next,pc2: std_logic_vector(31 downto 0);
 signal instr: std_logic_vector(31 downto 0);
 signal reg_dst,mem_to_reg,alu_op: std_logic_vector(1 downto 0);
 signal jump,branch,mem_read,mem_write,alu_src,reg_write: std_logic;
 signal reg_write_dest: std_logic_vector(2 downto 0);
 signal reg_write_data: std_logic_vector(31 downto 0);
 signal reg_read_addr_1: std_logic_vector(2 downto 0);
 signal reg_read_data_1: std_logic_vector(31 downto 0);
 signal reg_read_addr_2: std_logic_vector(2 downto 0);
 signal reg_read_data_2: std_logic_vector(31 downto 0);
 signal sign_ext_im,read_data2,zero_ext_im,imm_ext: std_logic_vector(31 downto 0);
 signal JRControl: std_logic;
 signal ALU_Control: std_logic_vector(2 downto 0);
 signal ALU_out: std_logic_vector(31 downto 0);
 signal zero_flag: std_logic;
 signal im_shift_1, PC_j, PC_beq, PC_4beq,PC_4beqj,PC_jr: std_logic_vector(31 downto 0);
 signal beq_control: std_logic;
 signal jump_shift_1: std_logic_vector(14 downto 0);
 signal mem_read_data: std_logic_vector(31 downto 0);
 signal no_sign_ext: std_logic_vector(31 downto 0);
 signal sign_or_zero: std_logic;
 signal tmp1: std_logic_vector(8 downto 0);
 signal overflow          : std_logic;
 signal isZero            : std_logic;
 
 
 begin
-- PC of the MIPS Processor in VHDL
process(clk,reset)
begin 
 if(reset='1') then
  pc_current <= x"0000";
 elsif(rising_edge(clk)) then
  pc_current <= pc_next;
 end if;
end process;

  pc2 <= pc_current + x"0002";

-- instruction memory of the MIPS Processor in VHDL
Instruction_Memory: entity work.Instruction_Memory 
        port map
       (
        pc=> pc_current,
        instruction => instr
        );
-- jump shift left 1
 jump_shift_1 <= instr(13 downto 0) & '0';
 
 -- control unit of the MIPS Processor in VHDL
control: entity work.control_unit
   port map
   (reset => reset,
    opcode => instr(31 downto 26),
    reg_dst => reg_dst,
    mem_to_reg => mem_to_reg,
    alu_op => alu_op,
    jump => jump,
    branch => branch,
    mem_read => mem_read,
    mem_write => mem_write,
    alu_src => alu_src,
    reg_write => reg_write,
    sign_or_zero => sign_or_zero
    );

-- ALU control unit of the MIPS Processor in VHDL
ALUControl: entity work.ALU_Control port map
  (
   ALUOp => alu_op,
   ALU_Funct => instr(5 downto 0),
   ALU_Control => ALU_Control
   );	

alu: entity work.ALU_32 port map
  (
	A_alu32 => reg_read_data_1,
   ALUfunct_alu32 => instr(5 downto 0),
	ALUout_alu32 => ALU_out,  -- result
	overflow_alu32 => overflow, 						  -- check if ALU overflowed
	Zero_alu32 => isZero,  							  -- check if ALUout is zero
   a => reg_read_data_1,
   b => read_data2,
   alu_control => ALU_Control,
   alu_result => ALU_out,
   zero => zero_flag
   );	
	
data_memory: entity work.Data_Memory_VHDL port map
  (
  clk => clk,
  mem_access_addr => ALU_out,
  mem_write_data => reg_read_data_2,
  mem_write_en => mem_write,
  mem_read => mem_read,
  mem_read_data => mem_read_data
  );
  
  -- write back of the MIPS Processor in VHDL
 reg_write_data <= pc2 when (mem_to_reg = "10") else
       mem_read_data when (mem_to_reg = "01") else ALU_out;
-- output
 pc_out <= pc_current;
 alu_result <= ALU_out;
 
 
 
