--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:48:10 02/15/2016
-- Design Name:   
-- Module Name:   U:/Project-1-Datapath-Design-Part-A-2/decoder_3_to_8_tb.vhd
-- Project Name:  Project-1-Datapath-Design-Part-A-2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder_3_to_8
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY decoder_3_to_8_tb IS
END decoder_3_to_8_tb;
 
ARCHITECTURE behavior OF decoder_3_to_8_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder_3_to_8
    PORT(
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         D0 : OUT  std_logic;
         D1 : OUT  std_logic;
         D2 : OUT  std_logic;
         D3 : OUT  std_logic;
         D4 : OUT  std_logic;
         D5 : OUT  std_logic;
         D6 : OUT  std_logic;
         D7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';

 	--Outputs
   signal D0 : std_logic;
   signal D1 : std_logic;
   signal D2 : std_logic;
   signal D3 : std_logic;
   signal D4 : std_logic;
   signal D5 : std_logic;
   signal D6 : std_logic;
   signal D7 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder_3_to_8 PORT MAP (
          A0 => A0,
          A1 => A1,
          A2 => A2,
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3,
          D4 => D4,
          D5 => D5,
          D6 => D6,
          D7 => D7
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A0 <=	'1';
		A1 <= '0';
		A2 <= '1';

      wait for 100 ns;	
		
		A0 <=	'0';
		A1 <= '1';
		A2 <= '0';
		
		wait for 100 ns;
		
		A0 <=	'1';
		A1 <= '1';
		A2 <= '1';     

		-- insert stimulus here 

      wait;
   end process;

END;
