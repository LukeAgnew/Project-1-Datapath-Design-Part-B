LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY datapath_tb IS
END datapath_tb;
 
ARCHITECTURE behavior OF datapath_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT datapath
    PORT(
         src_s0_A : IN  std_logic;
         src_s1_A : IN  std_logic;
         src_s2_A : IN  std_logic;
         src_s0_B : IN  std_logic;
         src_s1_B : IN  std_logic;
         src_s2_B : IN  std_logic;
         des_A0 : IN  std_logic;
         des_A1 : IN  std_logic;
         des_A2 : IN  std_logic;
         Clk : IN  std_logic;
         load_write : IN  std_logic;
         constant_in : IN  std_logic_vector(15 downto 0);
         MBselect : IN  std_logic;
			FSInput : IN std_logic_vector (4 downto 0);
         data_in : IN  std_logic_vector(15 downto 0);
         MDselect : IN  std_logic;
			V : OUT std_logic;
         C : OUT  std_logic;
			N : OUT std_logic;
			Z : OUT std_logic;
         address_out : OUT  std_logic_vector(15 downto 0);
         data_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal src_s0_A : std_logic := '0';
   signal src_s1_A : std_logic := '0';
   signal src_s2_A : std_logic := '0';
   signal src_s0_B : std_logic := '0';
   signal src_s1_B : std_logic := '0';
   signal src_s2_B : std_logic := '0';
   signal des_A0 : std_logic := '0';
   signal des_A1 : std_logic := '0';
   signal des_A2 : std_logic := '0';
   signal Clk : std_logic := '0';
   signal load_write : std_logic := '0';
   signal constant_in : std_logic_vector(15 downto 0) := (others => '0');
   signal MBselect : std_logic := '0';
	signal FSInput : std_logic_vector(4 downto 0) := (others => '0');
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal MDselect : std_logic := '0';

 	--Outputs
	signal V : std_logic;
	signal C : std_logic;
   signal N : std_logic;
	signal Z : std_logic;
   signal address_out : std_logic_vector(15 downto 0);
   signal data_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: datapath PORT MAP (
          src_s0_A => src_s0_A,
          src_s1_A => src_s1_A,
          src_s2_A => src_s2_A,
          src_s0_B => src_s0_B,
          src_s1_B => src_s1_B,
          src_s2_B => src_s2_B,
          des_A0 => des_A0,
          des_A1 => des_A1,
          des_A2 => des_A2,
          Clk => Clk,
          load_write => load_write,
          constant_in => constant_in,
          MBselect => MBselect,
			 FSInput => FSInput,
          data_in => data_in,
          MDselect => MDselect,
			 V => V,
          C => C,
			 N => N,
			 Z => Z,
          address_out => address_out,
          data_out => data_out
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		src_s0_A <= '1';
      src_s1_A <= '1';
      src_s2_A <= '0';
      src_s0_B <= '0'; 
      src_s1_B <= '0';
      src_s2_B <= '0'; 
      des_A0 <= '0';
      des_A1 <= '1';
      des_A2 <= '1';
      load_write <= '1';
      constant_in <= X"0001";
      MBselect <= '1';
		FSInput <= "00110";
      data_in <= X"21A3";
      MDselect <= '0';
     
      -- hold reset state for 100 ns.
      wait for 100 ns;
	
		src_s0_A <= '0';
      src_s1_A <= '0';
      src_s2_A <= '0';
      src_s0_B <= '0'; 
      src_s1_B <= '0';
      src_s2_B <= '0'; 
      des_A0 <= '0';
      des_A1 <= '0';
      des_A2 <= '0';
      load_write <= '1';
      constant_in <= X"004E";
      MBselect <= '1';
		FSInput <= "00011";
      data_in <= X"21A3";
      MDselect <= '0';
     
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		src_s0_A <= '0';
      src_s1_A <= '0';
      src_s2_A <= '1';
      src_s0_B <= '0'; 
      src_s1_B <= '0';
      src_s2_B <= '0'; 
      des_A0 <= '1';
      des_A1 <= '0';
      des_A2 <= '0';
      load_write <= '1';
      constant_in <= X"004E";
      MBselect <= '0';
		FSInput <= "00101";
      data_in <= X"21A3";
      MDselect <= '0';
     
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		src_s0_A <= '1';
      src_s1_A <= '0';
      src_s2_A <= '1';
      src_s0_B <= '0'; 
      src_s1_B <= '0';
      src_s2_B <= '0'; 
      des_A0 <= '1';
      des_A1 <= '0';
      des_A2 <= '1';
      load_write <= '1';
      constant_in <= X"0060";
      MBselect <= '1';
		FSInput <= "01100";
      data_in <= X"A07F";
      MDselect <= '0';
          
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		src_s0_A <= '0';
      src_s1_A <= '1';
      src_s2_A <= '0';
      src_s0_B <= '1'; 
      src_s1_B <= '0';
      src_s2_B <= '1'; 
      des_A0 <= '0';
      des_A1 <= '1';
      des_A2 <= '0';
      load_write <= '1';
      constant_in <= X"0000";
      MBselect <= '1';
		FSInput <= "01110";
      data_in <= X"A07F";
      MDselect <= '0';
          
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		src_s0_A <= '1';
      src_s1_A <= '0';
      src_s2_A <= '0';
      src_s0_B <= '0'; 
      src_s1_B <= '0';
      src_s2_B <= '0'; 
      des_A0 <= '0';
      des_A1 <= '0';
      des_A2 <= '1';
      load_write <= '1';
      constant_in <= X"06A0";
      MBselect <= '0';
		FSInput <= "01000";
      data_in <= X"A07F";
      MDselect <= '0';
          
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		src_s0_A <= '1';
      src_s1_A <= '1';
      src_s2_A <= '1';
      src_s0_B <= '1'; 
      src_s1_B <= '0';
      src_s2_B <= '0'; 
      des_A0 <= '1';
      des_A1 <= '1';
      des_A2 <= '1';
      load_write <= '1';
      constant_in <= X"06A0";
      MBselect <= '0';
		FSInput <= "10100";
      data_in <= X"A07F";
      MDselect <= '0';
          
      -- hold reset state for 100 ns.
      wait for 100 ns;

		src_s0_A <= '0';
      src_s1_A <= '1';
      src_s2_A <= '1';
      src_s0_B <= '1'; 
      src_s1_B <= '1';
      src_s2_B <= '1'; 
      des_A0 <= '1';
      des_A1 <= '1';
      des_A2 <= '0';
      load_write <= '1';
      constant_in <= X"004E";
      MBselect <= '0';
		FSInput <= "11000";
      data_in <= X"21A3";
      MDselect <= '0';
     
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      wait;
   end process;

END;
