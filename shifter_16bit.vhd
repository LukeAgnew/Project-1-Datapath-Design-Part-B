library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shifter_16bit is
    Port ( Bs : in  STD_LOGIC_VECTOR (15 downto 0);
           Ss : in  STD_LOGIC_VECTOR (3 downto 0);
           --IR : in  STD_LOGIC;
           --IL : in  STD_LOGIC;
           Hs : out  STD_LOGIC_VECTOR (15 downto 0)
			);
end shifter_16bit;

architecture Behavioral of shifter_16bit is

begin

		with Ss select
			Hs <= Bs(0) & Bs(15 downto 1) when "0001",
				  Bs(1 downto 0) & Bs(15 downto 2) when "0010",
				  Bs(2 downto 0) & Bs(15 downto 3) when "0011",
				  Bs(3 downto 0) & Bs(15 downto 4) when "0100",
				  Bs(4 downto 0) & Bs(15 downto 5) when "0101",
				  Bs(5 downto 0) & Bs(15 downto 6) when "0110",
				  Bs(6 downto 0) & Bs(15 downto 7) when "0111",
				  Bs(7 downto 0) & Bs(15 downto 8) when "1000",
				  Bs(8 downto 0) & Bs(15 downto 9) when "1001",				  
				  Bs(9 downto 0) & Bs(15 downto 10) when "1010",
				  Bs(10 downto 0) & Bs(15 downto 11) when "1011",
				  Bs(11 downto 0) & Bs(15 downto 12) when "1100",
				  Bs(12 downto 0) & Bs(15 downto 13) when "1101",
				  Bs(13 downto 0) & Bs(15 downto 14) when "1110",
				  Bs(14 downto 0) & Bs(15) when "1111",
				  Bs when others;

end Behavioral;

