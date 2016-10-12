library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
			  S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin
S <= (X xor Y) xor Cin;
Cout <= (X and Y) or (X and Cin) or (Y and Cin);

end Behavioral;

