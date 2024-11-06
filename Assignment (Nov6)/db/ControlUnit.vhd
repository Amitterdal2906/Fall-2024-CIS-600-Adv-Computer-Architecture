library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- VHDL code for Control Unit of the MIPS Processor

entity control_unit is
port (
  opcode: in std_logic_vector(5 downto 0);
  reset: in std_logic;
  reg_dst,mem_to_reg,alu_op: out std_logic_vector(1 downto 0);
  jump,branch,mem_read,mem_write,alu_src,reg_write,sign_or_zero: out std_logic
 );
end control_unit;

architecture Behavioral of control_unit is

begin
process(reset,opcode)
begin
 if(reset = '1') then
   reg_dst <= "00";
   mem_to_reg <= "00";
   alu_op <= "00";
   jump <= '0';
   branch <= '0';
   mem_read <= '0';
   mem_write <= '0';
   alu_src <= '0';
   reg_write <= '0';
   sign_or_zero <= '1';
 else 
 case opcode is
  when "000000" => -- R-format
    reg_dst <= "01";
    mem_to_reg <= "00";
    alu_op <= "10";
    jump <= '0';
    branch <= '0';
    mem_read <= '0';
    mem_write <= '0';
    alu_src <= '0';
    reg_write <= '1';
    sign_or_zero <= '1';
 when "100011" =>-- lw
   reg_dst <= "00";
   mem_to_reg <= "01";
   alu_op <= "00";
   jump <= '0';
   branch <= '0';
   mem_read <= '1';
   mem_write <= '0';
   alu_src <= '1';
   reg_write <= '1';
   sign_or_zero <= '1';
 when "101011" => -- sw
   reg_dst <= "00";
   mem_to_reg <= "00";
   alu_op <= "00";
   jump <= '0';
   branch <= '0';
   mem_read <= '0';
   mem_write <= '1';
   alu_src <= '1';
   reg_write <= '0';
   sign_or_zero <= '1';
 when others =>   
    reg_dst <= "01";
    mem_to_reg <= "00";
    alu_op <= "10";
    jump <= '0';
    branch <= '0';
    mem_read <= '0';
    mem_write <= '0';
    alu_src <= '0';
    reg_write <= '1';
    sign_or_zero <= '1';
 end case;
 end if;
end process;

end Behavioral;