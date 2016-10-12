LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY functional_unit_tb IS
END functional_unit_tb;
 
ARCHITECTURE behavior OF functional_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT functional_unit
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
			FSInput : IN std_logic_vector(4 downto 0);
			V : OUT 	std_logic;
         C : OUT  std_logic;
			N : OUT std_logic;
			Z : OUT std_logic;
         F : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
	signal FSInput : std_logic_vector(4 downto 0) := (others => '0');
  
 	--Outputs
	signal V : std_logic;
   signal C : std_logic;
	signal N : std_logic;
	signal Z : std_logic;
   signal F : std_logic_vector(15 downto 0);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: functional_unit PORT MAP (
          A => A,
          B => B,
			 FSInput => FSInput,
			 V => V,
          C => C,
			 N => N,
			 Z => Z,
          F => F
        );

   -- Stimulus process
   stim_proc: process
   begin		
		A <= X"0006";
		B <= X"002D";
		FSInput <= "00010";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= X"0004";
		B <= X"0001";
		FSInput <= "01010";
		
		-- hold reset state for 100 ns.
      wait for 100 ns;
		
		A <= X"0006";
		B <= X"EF84";
		FSInput <= "00101";
		
		-- hold reset state for 100 ns.
      wait for 100 ns;

      A <= X"0004";
		B <= X"0003";
		FSInput <= "00100";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;

		A <= X"007B";
		B <= X"0003";
		FSInput <= "00110";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= X"0D05";
		B <= X"0012";
		FSInput <= "10100";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= X"8740";
		B <= X"000f";
		FSInput <= "11000";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
      wait;
   end process;

END;
