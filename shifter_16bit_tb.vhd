LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY shifter_16bit_tb IS
END shifter_16bit_tb;
 
ARCHITECTURE behavior OF shifter_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shifter_16bit
    PORT(
         Bs : IN  std_logic_vector(15 downto 0);
         Ss : IN  std_logic_vector(3 downto 0);
         Hs : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Bs : std_logic_vector(15 downto 0) := (others => '0');
   signal Ss : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Hs : std_logic_vector(15 downto 0);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shifter_16bit PORT MAP (
          Bs => Bs,
          Ss => Ss,
          Hs => Hs
        );

   -- Stimulus process
   stim_proc: process
   begin
	
		Bs <= X"00FF";
		Ss <= X"2";
	
      wait for 100 ns;	

		Bs <= X"00FF";
		Ss <= X"3";
		
		wait for 100 ns;
		
		Bs <= X"001F";
		Ss <= X"C";

      wait;
   end process;

END;
