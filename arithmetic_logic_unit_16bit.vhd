library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arithmetic_logic_unit_16bit is
    Port ( Aalu : in  STD_LOGIC_VECTOR (15 downto 0);
           Balu : in  STD_LOGIC_VECTOR (15 downto 0);
           Cinalu : in  STD_LOGIC;
           S0alu : in  STD_LOGIC;
           S1alu : in  STD_LOGIC;
           S2alu : in  STD_LOGIC;
           Gresult : out  STD_LOGIC_VECTOR (15 downto 0);
			  Voutalu : out STD_LOGIC;
           Coutalu : out  STD_LOGIC;
			  Noutalu : out STD_LOGIC;
			  Zoutalu : out STD_LOGIC
			  );
end arithmetic_logic_unit_16bit;

architecture Behavioral of arithmetic_logic_unit_16bit is

signal intermediate_result, intermediate_g: STD_LOGIC_VECTOR (15 downto 0);

COMPONENT arithmetic_unit_16bit
PORT(
		Aau : in  STD_LOGIC_VECTOR (15 downto 0);
      Bau : in  STD_LOGIC_VECTOR (15 downto 0);
      Cinau : in  STD_LOGIC;
      S0au : in  STD_LOGIC;
      S1au : in  STD_LOGIC;
      Result : out  STD_LOGIC_VECTOR (15 downto 0);
		Voutau : out STD_LOGIC;
      Coutau : out  STD_LOGIC;
		Noutau : out STD_LOGIC;
		Zoutau : out STD_LOGIC
);
END COMPONENT;

COMPONENT logic_unit_16bit
PORT(
		Alu : in  STD_LOGIC_VECTOR (15 downto 0);
      Blu : in  STD_LOGIC_VECTOR (15 downto 0);
      S0lu : in  STD_LOGIC;
      S1lu : in  STD_LOGIC;
      G : out  STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;

COMPONENT mux2_16bit
PORT(
		in0 : in  STD_LOGIC_VECTOR (15 downto 0);
      in1 : in  STD_LOGIC_VECTOR (15 downto 0);
      s : in  STD_LOGIC;
      z : out  STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;

begin

Arithmetic_Circuit: arithmetic_unit_16bit PORT MAP(
	Aau => Aalu,
	Bau => Balu,
	Cinau => Cinalu,
	S0au => S0alu,
	S1au => S1alu,
	Result => intermediate_result,
	Voutau => Voutalu,
	Coutau => Coutalu,
	Noutau => Noutalu,
	Zoutau => Zoutalu
);

Logic_Circuit: logic_unit_16bit PORT MAP(
	Alu => Aalu,
	Blu => Balu,
	S0lu => S0alu,
	S1lu => S1alu,
	G => intermediate_g
);

mux2to1: mux2_16bit PORT MAP(
	in0 => intermediate_result,
	in1 => intermediate_g,
	s => S2alu,
	z => Gresult
);

end Behavioral;

