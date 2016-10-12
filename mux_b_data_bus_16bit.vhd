library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_b_data_bus_16bit is
    Port ( in0 : in  STD_LOGIC_VECTOR (15 downto 0);
           in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           s : in  STD_LOGIC;
           b_z : out  STD_LOGIC_VECTOR (15 downto 0));
end mux_b_data_bus_16bit;

architecture Behavioral of mux_b_data_bus_16bit is

begin
	b_z <= in0 after 5ns when s = '0' else
	  in1 after 5ns when s = '1' else
	  "0000000000000000" after 5ns;
end Behavioral;

