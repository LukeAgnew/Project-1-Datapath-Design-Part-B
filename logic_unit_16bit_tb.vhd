LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY logic_unit_16bit_tb IS
END logic_unit_16bit_tb;
 
ARCHITECTURE behavior OF logic_unit_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logic_unit_16bit
    PORT(
         Alu : IN  std_logic_vector(15 downto 0);
         Blu : IN  std_logic_vector(15 downto 0);
         S0lu : IN  std_logic;
         S1lu : IN  std_logic;
         G : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Alu : std_logic_vector(15 downto 0) := (others => '0');
   signal Blu : std_logic_vector(15 downto 0) := (others => '0');
   signal S0lu : std_logic := '0';
   signal S1lu : std_logic := '0';

 	--Outputs
   signal G : std_logic_vector(15 downto 0);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logic_unit_16bit PORT MAP (
          Alu => Alu,
          Blu => Blu,
          S0lu => S0lu,
          S1lu => S1lu,
          G => G
        );

   -- Stimulus process
   stim_proc: process
   begin
		Alu <= X"001A";
		Blu <= X"0007";
		S0lu <= '0';
		S1lu <= '0';
			
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Alu <= X"001A";
		Blu <= X"0007";
		S0lu <= '1';
		S1lu <= '0';
			
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		Alu <= X"001A";
		Blu <= X"0007";
		S0lu <= '0';
		S1lu <= '1';
			
      -- hold reset state for 100 ns.
      wait for 100 ns;

		Alu <= X"001A";
		Blu <= X"0007";
		S0lu <= '1';
		S1lu <= '1';
			
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait;
   end process;

END;
