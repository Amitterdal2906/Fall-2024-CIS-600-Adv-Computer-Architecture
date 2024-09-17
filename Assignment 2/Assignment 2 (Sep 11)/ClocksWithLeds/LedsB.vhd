library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

  
entity LedsB is
    port (
          SW_Leds: in std_logic_vector (9 downto 0);     -- switches (SW(9) 0 SW(0))
          LEDR_Leds: out std_logic_vector (9 downto 0);	 -- led's 
          clock_Leds: in std_logic;
			 reset_Leds: std_logic;
			 FromAnd: in std_logic 
    );
end entity;
	 
architecture rtl of LedsB is
  component AndGate
    port (
          A: in std_logic;
          B: in std_logic;
          X: out std_logic;
			 clock_AndGate: std_logic
    );
  end component;

begin
  process (clock_Leds, reset_Leds) 
    begin  
	   if (reset_Leds = '1') then
--        LEDR_Leds <= "0101010101";
--        LEDR_Leds(0) <= '0';
        LEDR_Leds(1) <= '1';
        LEDR_Leds(2) <= '0';
        LEDR_Leds(3) <= '1';
        LEDR_Leds(4) <= '0';
        LEDR_Leds(5) <= '1';
        LEDR_Leds(6) <= '0';
        LEDR_Leds(7) <= '1';
        LEDR_Leds(8) <= '0';
        LEDR_Leds(9) <= '1';
      elsif (RISING_EDGE(clock_Leds)) then
        LEDR_Leds(1) <= SW_Leds(0) or SW_Leds(1);
        LEDR_Leds(2) <= SW_Leds(2) and SW_Leds(3);
        LEDR_Leds(3) <= SW_Leds(2) or SW_Leds(3);
        LEDR_Leds(4) <= SW_Leds(4) and SW_Leds(5);
        LEDR_Leds(5) <= SW_Leds(4) or SW_Leds(5);
        LEDR_Leds(6) <= SW_Leds(6) and SW_Leds(7);
        LEDR_Leds(7) <= SW_Leds(6) or SW_Leds(7);
        LEDR_Leds(8) <= SW_Leds(8) and SW_Leds(9);
        LEDR_Leds(9) <= SW_Leds(8) or SW_Leds(9);
    end if;
  end process;
     
  TheAndGate: AndGate
    port map (
	   A=>SW_Leds(0),
	   B=>SW_Leds(1),
		X=>LEDR_Leds(0),
      clock_AndGate => clock_Leds

		);
 end architecture;
