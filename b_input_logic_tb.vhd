LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY b_input_logic_tb IS
END b_input_logic_tb;
 
ARCHITECTURE behavior OF b_input_logic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT b_input_logic
    PORT(
         Bil : IN  std_logic_vector(15 downto 0);
         S0il : IN  std_logic;
         S1il : IN  std_logic;
         Boutil : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Bil : std_logic_vector(15 downto 0) := (others => '0');
   signal S0il : std_logic := '0';
   signal S1il : std_logic := '0';

 	--Outputs
   signal Boutil : std_logic_vector(15 downto 0);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: b_input_logic PORT MAP (
          Bil => Bil,
          S0il => S0il,
          S1il => S1il,
          Boutil => Boutil
        );

   -- Stimulus process
   stim_proc: process
   begin
		Bil <= X"001E";
		S0il <= '0';
		S1il <= '0';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		Bil <= X"001E";
		S0il <= '1';
		S1il <= '0';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      
		Bil <= X"001E";
		S0il <= '0';
		S1il <= '1';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		Bil <= X"001E";
		S0il <= '1';
		S1il <= '1';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait;
   end process;

END;
