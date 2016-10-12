LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ripple_carry_adder_16bit_tb IS
END ripple_carry_adder_16bit_tb;
 
ARCHITECTURE behavior OF ripple_carry_adder_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ripple_carry_adder_16bit
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         C0 : IN  std_logic;
         S : OUT  std_logic_vector(15 downto 0);
         C16 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal C0 : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(15 downto 0);
   signal C16 : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ripple_carry_adder_16bit PORT MAP (
          A => A,
          B => B,
          C0 => C0,
          S => S,
          C16 => C16
        );

   -- Stimulus process
   stim_proc: process
   begin		
		A <= X"0003";
		B <= X"0002";
		C0 <= '0';		
	
      wait for 100 ns;	

		A <= X"0007";
		B <= X"0004";
		C0 <= '1';
		
		wait for 100 ns;
		
		A <= X"0009";
		B <= X"001E";
		C0 <= '0';
		
		wait for 100 ns;
		
		wait;
   end process;

END;
