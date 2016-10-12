library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity b_input_logic is
    Port ( Bil : in  STD_LOGIC_VECTOR (15 downto 0);
           S0il : in  STD_LOGIC;
           S1il : in  STD_LOGIC;
           Boutil : out  STD_LOGIC_VECTOR (15 downto 0));
end b_input_logic;

architecture Behavioral of b_input_logic is

signal Signal1, Signal2: STD_LOGIC_VECTOR (15 downto 0);

begin

Signal1(0) <= S0il and Bil(0) after 1ns;
Signal1(1) <= S0il and Bil(1) after 1ns;
Signal1(2) <= S0il and Bil(2) after 1ns;
Signal1(3) <= S0il and Bil(3) after 1ns;
Signal1(4) <= S0il and Bil(4) after 1ns;
Signal1(5) <= S0il and Bil(5) after 1ns;
Signal1(6) <= S0il and Bil(6) after 1ns;
Signal1(7) <= S0il and Bil(7) after 1ns;
Signal1(8) <= S0il and Bil(8) after 1ns;
Signal1(9) <= S0il and Bil(9) after 1ns;
Signal1(10) <= S0il and Bil(10) after 1ns;
Signal1(11) <= S0il and Bil(11) after 1ns;
Signal1(12) <= S0il and Bil(12) after 1ns;
Signal1(13) <= S0il and Bil(13) after 1ns;
Signal1(14) <= S0il and Bil(14) after 1ns;
Signal1(15) <= S0il and Bil(15) after 1ns;

Signal2(0) <= S1il and (not Bil(0)) after 1ns;
Signal2(1) <= S1il and (not Bil(1)) after 1ns;
Signal2(2) <= S1il and (not Bil(2)) after 1ns;
Signal2(3) <= S1il and (not Bil(3)) after 1ns;
Signal2(4) <= S1il and (not Bil(4)) after 1ns;
Signal2(5) <= S1il and (not Bil(5)) after 1ns;
Signal2(6) <= S1il and (not Bil(6)) after 1ns;
Signal2(7) <= S1il and (not Bil(7)) after 1ns;
Signal2(8) <= S1il and (not Bil(8)) after 1ns;
Signal2(9) <= S1il and (not Bil(9)) after 1ns;
Signal2(10) <= S1il and (not Bil(10)) after 1ns;
Signal2(11) <= S1il and (not Bil(11)) after 1ns;
Signal2(12) <= S1il and (not Bil(12)) after 1ns;
Signal2(13) <= S1il and (not Bil(13)) after 1ns;
Signal2(14) <= S1il and (not Bil(14)) after 1ns;
Signal2(15) <= S1il and (not Bil(15)) after 1ns;

Boutil <= Signal1 or Signal2 after 1ns;

end Behavioral;

