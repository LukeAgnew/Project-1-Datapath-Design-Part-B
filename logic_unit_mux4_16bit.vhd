library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_unit_mux4_16bit is
    Port ( in0 : in  STD_LOGIC_VECTOR (15 downto 0);
           in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           in2 : in  STD_LOGIC_VECTOR (15 downto 0);
           in3 : in  STD_LOGIC_VECTOR (15 downto 0);
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           z : out  STD_LOGIC_VECTOR (15 downto 0));
end logic_unit_mux4_16bit;

architecture Behavioral of logic_unit_mux4_16bit is

begin
z <= in0 after 5ns when s1 = '0' and s0 = '0' else
	  in1 after 5ns when s1 = '0' and s0 = '1' else
	  in2 after 5ns when s1 = '1' and s0 = '0' else
	  in3 after 5ns when s1 = '1' and s0 = '1' else
	  "0000000000000000" after 5ns;


end Behavioral;

