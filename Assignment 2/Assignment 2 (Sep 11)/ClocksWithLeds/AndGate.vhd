library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

  
entity AndGate is
    port (
          A: in std_logic;
          B: in std_logic;
          X: out std_logic;
			 clock_AndGate: std_logic
    );
end entity;
	 
architecture rtl of AndGate is
begin
  process (clock_AndGate) 
    begin  
      if (RISING_EDGE(clock_AndGate)) then
        X <=  A and B;
      end if;
    end process;
end architecture;
