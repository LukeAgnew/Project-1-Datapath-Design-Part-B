library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity functional_unit is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
			  FSInput : STD_LOGIC_VECTOR (4 downto 0); 
           V : out  STD_LOGIC;
           C : out  STD_LOGIC;
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           F : out  STD_LOGIC_VECTOR (15 downto 0));
end functional_unit;

architecture Behavioral of functional_unit is

signal intermediate_gresult, intermediate_h: STD_LOGIC_VECTOR (15 downto 0);

COMPONENT arithmetic_logic_unit_16bit
PORT(
		Aalu : in  STD_LOGIC_VECTOR (15 downto 0);
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
END COMPONENT;

COMPONENT shifter_16bit
PORT(
		Bs : in  STD_LOGIC_VECTOR (15 downto 0);
      Ss : in  STD_LOGIC_VECTOR (3 downto 0);
      --IR : in  STD_LOGIC;
      --IL : in  STD_LOGIC;
      Hs : out  STD_LOGIC_VECTOR (15 downto 0)
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

ALU: arithmetic_logic_unit_16bit PORT MAP (
		Aalu => A,
		Balu => B,
		Cinalu => FSInput(0),
		S0alu => FSInput(1),
		S1alu => FSInput(2),
		S2alu => FSInput(3),		
		Gresult => intermediate_gresult,
		Voutalu => V,
		Coutalu => C,
		Noutalu => N,
		Zoutalu => Z
);

Shifter: shifter_16bit PORT MAP (
		Bs => B,
		Ss => FSInput(4 downto 1),
		Hs => intermediate_h
);

mux_f: mux2_16bit PORT MAP(
	in0 => intermediate_gresult,
	in1 => intermediate_h,
	s => FSInput(4),
	z => F
);


end Behavioral;

