library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arithmetic_unit_16bit is
    Port ( Aau : in  STD_LOGIC_VECTOR (15 downto 0);
           Bau : in  STD_LOGIC_VECTOR (15 downto 0);
           Cinau : in  STD_LOGIC;
           S0au : in  STD_LOGIC;
           S1au : in  STD_LOGIC;
           Result : out  STD_LOGIC_VECTOR (15 downto 0);
			  Voutau : out STD_LOGIC;
           Coutau : out  STD_LOGIC;
			  Noutau : out STD_LOGIC;
			  Zoutau : out STD_LOGIC);
end arithmetic_unit_16bit;

architecture Behavioral of arithmetic_unit_16bit is

signal intermediate_signal, intermediate_result: STD_LOGIC_VECTOR (15 downto 0);
signal intermediate_carry : STD_LOGIC;

COMPONENT ripple_carry_adder_16bit
PORT(
		A : in  STD_LOGIC_VECTOR (15 downto 0);
      B : in  STD_LOGIC_VECTOR (15 downto 0);
      C0 : in  STD_LOGIC;
      S : out  STD_LOGIC_VECTOR (15 downto 0);
      C16 : out  STD_LOGIC
);
END COMPONENT;

COMPONENT b_input_logic
PORT(
		Bil : in  STD_LOGIC_VECTOR (15 downto 0);
      S0il : in  STD_LOGIC;
      S1il : in  STD_LOGIC;
      Boutil : out  STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;

begin

B_Input_Logic_AU: b_input_logic PORT MAP(
	Bil => Bau,
	S0il => S0au,
	S1il => S1au,
	Boutil => intermediate_signal
);

Ripple_Carry_Adder: ripple_carry_adder_16bit PORT MAP(
	A => Aau,
	B => intermediate_signal,
	C0 => Cinau,
	-- S => Result,
	S => intermediate_result,
	C16 => intermediate_carry
);

Result <= intermediate_result;

Voutau <= Aau(15) xor Bau(15) xor intermediate_result(15) xor intermediate_carry;
Coutau <= intermediate_carry;
Noutau <= intermediate_result(15);
with intermediate_result select
Zoutau <= '1' when "0000000000000000",
	  '0' when others;



end Behavioral;

