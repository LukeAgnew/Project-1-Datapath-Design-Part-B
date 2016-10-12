library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_unit_16bit is
    Port ( Alu : in  STD_LOGIC_VECTOR (15 downto 0);
           Blu : in  STD_LOGIC_VECTOR (15 downto 0);
           S0lu : in  STD_LOGIC;
           S1lu : in  STD_LOGIC;
           G : out  STD_LOGIC_VECTOR (15 downto 0));
end logic_unit_16bit;

architecture Behavioral of logic_unit_16bit is

signal AandB, AorB, AxorB, notA: STD_LOGIC_VECTOR (15 downto 0);

COMPONENT logic_unit_mux4_16bit
PORT(
		in0 : in  STD_LOGIC_VECTOR (15 downto 0);
      in1 : in  STD_LOGIC_VECTOR (15 downto 0);
      in2 : in  STD_LOGIC_VECTOR (15 downto 0);
      in3 : in  STD_LOGIC_VECTOR (15 downto 0);
      s0 : in  STD_LOGIC;
      s1 : in  STD_LOGIC;
      z : out  STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;

begin

AandB <= (Alu and Blu) after 1ns;
AorB <= (Alu or Blu) after 1ns;
AxorB <= (Alu xor Blu) after 1ns;
notA <= (not Alu) after 1ns;

mux4to1: logic_unit_mux4_16bit PORT MAP(
	in0 => AandB,
	in1 => AorB,
	in2 => AxorB,
	in3 => notA,
	s0 => S0lu,
	s1 => S1lu,
	z => G
	
);

end Behavioral;

