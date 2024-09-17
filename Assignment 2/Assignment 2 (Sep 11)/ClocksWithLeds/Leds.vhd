library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


  
entity Leds is
    port (
          SW_Leds: in std_logic_vector (9 downto 0);     -- switches (SW(9) 0 SW(0))
          LEDR_Leds: out std_logic_vector (9 downto 0);	 -- led's 
          clock_Leds: in std_logic;
			 reset_Leds: std_logic
    );
end entity;
	 
architecture rtl of Leds is
begin
  process (clock_Leds, reset_Leds) 
    begin  
	   if (reset_Leds = '1') then
        LEDR_Leds <= "0101010101";
--        LEDR_Leds(0) <= '0';
--        LEDR_Leds(1) <= '1';
--        LEDR_Leds(2) <= '0';
--        LEDR_Leds(3) <= '1';
--        LEDR_Leds(4) <= '0';
--        LEDR_Leds(5) <= '1';
--        LEDR_Leds(6) <= '0';
--        LEDR_Leds(7) <= '1';
--        LEDR_Leds(8) <= '0';
--        LEDR_Leds(9) <= '1';
      elsif (RISING_EDGE(clock_Leds)) then
        LEDR_Leds <= SW_Leds(9 downto 0);
--        LEDR_Leds(0) <= SW_Leds(0);
--        LEDR_Leds(1) <= SW_Leds(1);
--        LEDR_Leds(2) <= SW_Leds(2);
--        LEDR_Leds(3) <= SW_Leds(3);
--        LEDR_Leds(4) <= SW_Leds(4);
--        LEDR_Leds(5) <= SW_Leds(5);
--        LEDR_Leds(6) <= SW_Leds(6);
--        LEDR_Leds(7) <= SW_Leds(7);
--        LEDR_Leds(8) <= SW_Leds(8);
--        LEDR_Leds(9) <= SW_Leds(9);
    end if;
  end process;
 
 end architecture;
  
  