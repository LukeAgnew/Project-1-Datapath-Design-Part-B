LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY arithmetic_unit_16bit_tb IS
END arithmetic_unit_16bit_tb;
 
ARCHITECTURE behavior OF arithmetic_unit_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmetic_unit_16bit
    PORT(
         Aau : IN  std_logic_vector(15 downto 0);
         Bau : IN  std_logic_vector(15 downto 0);
         Cinau : IN  std_logic;
         S0au : IN  std_logic;
         S1au : IN  std_logic;
         Result : OUT  std_logic_vector(15 downto 0);
			Voutau : OUT std_logic;
         Coutau : OUT  std_logic;
			Noutau : OUT std_logic;
			Zoutau : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Aau : std_logic_vector(15 downto 0) := (others => '0');
   signal Bau : std_logic_vector(15 downto 0) := (others => '0');
   signal Cinau : std_logic := '0';
   signal S0au : std_logic := '0';
   signal S1au : std_logic := '0';

 	--Outputs
   signal Result : std_logic_vector(15 downto 0);
	signal Voutau : std_logic;
   signal Coutau : std_logic;
	signal Noutau : std_logic;
	signal Zoutau : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmetic_unit_16bit PORT MAP (
          Aau => Aau,
          Bau => Bau,
          Cinau => Cinau,
          S0au => S0au,
          S1au => S1au,
          Result => Result,
			 Voutau => Voutau,
          Coutau => Coutau,
			 Noutau => Noutau,
			 Zoutau => Zoutau
        );

   -- Stimulus process
   stim_proc: process
   begin	
		Aau <= X"0006";
		Bau <= X"0002";
		Cinau <= '0';
		S0au <= '0';
		S1au <= '0';	
	
      wait for 100 ns;	
		
		Aau <= X"0003";
		Bau <= X"0002";
		Cinau <= '0';
		S0au <= '1';
		S1au <= '0';	
		
		wait for 100 ns;

		Aau <= X"0003";
		Bau <= X"0002";
		Cinau <= '1';
		S0au <= '1';
		S1au <= '0';	
		
		wait for 100 ns;
		
		Aau <= X"000A";
		Bau <= X"001F";
		Cinau <= '0';
		S0au <= '0';
		S1au <= '1';	
		
		wait for 100 ns;
		
		Aau <= X"003E";
		Bau <= X"0070";
		Cinau <= '0';
		S0au <= '1';
		S1au <= '1';	
		
		wait for 100 ns;
		
      wait;
   end process;

END;
