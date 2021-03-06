library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ripple_carry_adder_16bit is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           C0 : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (15 downto 0);
           C16 : out  STD_LOGIC);
end ripple_carry_adder_16bit;

architecture structural_16 of ripple_carry_adder_16bit is
	component full_adder
		port(X, Y, Cin: in std_logic;
				S, Cout: out std_logic);
		end component;
		
		signal C: std_logic_vector(15 downto 1);
		
		begin
			Bit0: full_adder
				port map (B(0),A(0),C0,S(0),C(1));
			Bit1: full_adder
				port map (B(1),A(1),C(1),S(1),C(2));
			Bit2: full_adder
				port map (B(2),A(2),C(2),S(2),C(3));
			Bit3: full_adder
				port map (B(3),A(3),C(3),S(3),C(4));
			Bit4: full_adder
				port map (B(4),A(4),C(4),S(4),C(5));
			Bit5: full_adder
				port map (B(5),A(5),C(5),S(5),C(6));
			Bit6: full_adder
				port map (B(6),A(6),C(6),S(6),C(7));
			Bit7: full_adder
				port map (B(7),A(7),C(7),S(7),C(8));
			Bit8: full_adder
				port map (B(8),A(8),C(8),S(8),C(9));
			Bit9: full_adder
				port map (B(9),A(9),C(9),S(9),C(10));
			Bit10: full_adder
				port map (B(10),A(10),C(10),S(10),C(11));
			Bit11: full_adder
				port map (B(11),A(11),C(11),S(11),C(12));
			Bit12: full_adder
				port map (B(12),A(12),C(12),S(12),C(13));
			Bit13: full_adder
				port map (B(13),A(13),C(13),S(13),C(14));
			Bit14: full_adder
				port map (B(14),A(14),C(14),S(14),C(15));
			Bit15: full_adder
				port map (B(15),A(15),C(15),S(15),C16);

end structural_16;

