--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:46:09 02/15/2016
-- Design Name:   
-- Module Name:   U:/Project-1-Datapath-Design-Part-A-2/mux2_16bit_tb.vhd
-- Project Name:  Project-1-Datapath-Design-Part-A-2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2_16bit
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
 
ENTITY mux2_16bit_tb IS
END mux2_16bit_tb;
 
ARCHITECTURE behavior OF mux2_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2_16bit
    PORT(
         in0 : IN  std_logic_vector(15 downto 0);
         in1 : IN  std_logic_vector(15 downto 0);
         s : IN  std_logic;
         z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(15 downto 0) := (others => '0');
   signal in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal s : std_logic := '0';

 	--Outputs
   signal z : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2_16bit PORT MAP (
          in0 => in0,
          in1 => in1,
          s => s,
          z => z
        );
		  
   -- Stimulus process
   stim_proc: process
   begin

		in0 <= 	X"fe5c";
		in1 <= X"ffff";	
		
		s <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		s <= '1';
		wait for 100 ns;
		
      -- insert stimulus here 

      wait;
   end process;

END;
