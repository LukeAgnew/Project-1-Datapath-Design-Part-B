LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY arithmetic_logic_unit_16bit_tb IS
END arithmetic_logic_unit_16bit_tb;
 
ARCHITECTURE behavior OF arithmetic_logic_unit_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmetic_logic_unit_16bit
    PORT(
         Aalu : IN  std_logic_vector(15 downto 0);
         Balu : IN  std_logic_vector(15 downto 0);
         Cinalu : IN  std_logic;
         S0alu : IN  std_logic;
         S1alu : IN  std_logic;
         S2alu : IN  std_logic;
         Gresult : OUT  std_logic_vector(15 downto 0);
			Voutalu : OUT std_logic;
         Coutalu : OUT  std_logic;
			Noutalu : OUT std_logic;
			Zoutalu : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Aalu : std_logic_vector(15 downto 0) := (others => '0');
   signal Balu : std_logic_vector(15 downto 0) := (others => '0');
   signal Cinalu : std_logic := '0';
   signal S0alu : std_logic := '0';
   signal S1alu : std_logic := '0';
   signal S2alu : std_logic := '0';

 	--Outputs
   signal Gresult : std_logic_vector(15 downto 0);
	signal Voutalu : std_logic;
   signal Coutalu : std_logic;
	signal Noutalu : std_logic;
	signal Zoutalu : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmetic_logic_unit_16bit PORT MAP (
          Aalu => Aalu,
          Balu => Balu,
          Cinalu => Cinalu,
          S0alu => S0alu,
          S1alu => S1alu,
          S2alu => S2alu,
          Gresult => Gresult,
			 Voutalu => Voutalu,
          Coutalu => Coutalu,
			 Noutalu => Noutalu,
			 Zoutalu => Zoutalu
        ); 

   -- Stimulus process
   stim_proc: process
   begin	
		Aalu <=  X"0003";
		Balu <=  X"0002";
		Cinalu <= '0';
		S0alu <= '1';
		S1alu <= '0';
		S2alu <= '0';		
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		Aalu <=  X"000A";
		Balu <=  X"001F";
		Cinalu <= '0';
		S0alu <= '0';
		S1alu <= '1';
		S2alu <= '0';
		
		wait for 100 ns;
		
		Aalu <=  X"0007";
		Balu <=  X"0008";
		Cinalu <= '1';
		S0alu <= '1';
		S1alu <= '1';
		S2alu <= '0';		
		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		Aalu <=  X"006D";
		Balu <=  X"0008";
		Cinalu <= '0';
		S0alu <= '1';
		S1alu <= '1';
		S2alu <= '1';		
		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
      wait;
   end process;

END;
