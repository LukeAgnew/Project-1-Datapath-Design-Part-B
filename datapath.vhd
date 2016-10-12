library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath is
    Port ( src_s0_A : in  STD_LOGIC;
           src_s1_A : in  STD_LOGIC;
           src_s2_A : in  STD_LOGIC;
			  src_s3_A : in  STD_LOGIC;
           src_s0_B : in  STD_LOGIC;
           src_s1_B : in  STD_LOGIC;
           src_s2_B : in  STD_LOGIC;
			  src_s3_B : in  STD_LOGIC;
           des_A0 : in  STD_LOGIC;
           des_A1 : in  STD_LOGIC;
           des_A2 : in  STD_LOGIC;
			  des_A3 : in STD_LOGIC;
           Clk : in  STD_LOGIC;
           load_write : in  STD_LOGIC;
			  constant_in : in STD_LOGIC_VECTOR(15 downto 0);
			  MBselect : in STD_LOGIC;
			  FSInput : in STD_LOGIC_VECTOR (4 downto 0);
			  data_in : in STD_LOGIC_VECTOR (15 downto 0);
			  MDselect : in STD_LOGIC;
			  V : out STD_LOGIC;
			  C : out STD_LOGIC;
			  N : out STD_LOGIC;
			  Z : out STD_LOGIC;
			  address_out : out STD_LOGIC_VECTOR (15 downto 0);
			  data_out : out STD_LOGIC_VECTOR (15 downto 0)
			  );
end datapath;

architecture Behavioral of datapath is

COMPONENT register_file
PORT(
		src_s0_A : in  STD_LOGIC;
      src_s1_A : in  STD_LOGIC;
      src_s2_A : in  STD_LOGIC;
		src_s3_A : in  STD_LOGIC;
		src_s0_B : in  STD_LOGIC;
      src_s1_B : in  STD_LOGIC;
      src_s2_B : in  STD_LOGIC;
		src_s3_B : in  STD_LOGIC;
      des_A0 : in  STD_LOGIC;
      des_A1 : in  STD_LOGIC;
      des_A2 : in  STD_LOGIC;
		des_A3 : in STD_LOGIC;
      Clk : in  STD_LOGIC;
		load_write : in STD_LOGIC;
      d_data : in  STD_LOGIC_VECTOR (15 downto 0);
		a_data : out STD_LOGIC_VECTOR (15 downto 0);
		b_data : out STD_LOGIC_VECTOR (15 downto 0)
	);
END COMPONENT;

COMPONENT functional_unit
PORT(
		A : in  STD_LOGIC_VECTOR (15 downto 0);
      B : in  STD_LOGIC_VECTOR (15 downto 0);
		FSInput : STD_LOGIC_VECTOR (4 downto 0);
      V : out  STD_LOGIC;
      C : out  STD_LOGIC;
      N : out  STD_LOGIC;
      Z : out  STD_LOGIC;
      F : out  STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;

COMPONENT mux_b_data_bus_16bit
PORT(
		in0 : in  STD_LOGIC_VECTOR (15 downto 0);
      in1 : in  STD_LOGIC_VECTOR (15 downto 0);
      s : in  STD_LOGIC;
      b_z : out  STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;

COMPONENT mux_d_data_bus_16bit
PORT(
		in0 : in  STD_LOGIC_VECTOR (15 downto 0);
      in1 : in  STD_LOGIC_VECTOR (15 downto 0);
      s : in  STD_LOGIC;
      d_z : out  STD_LOGIC_VECTOR (15 downto 0)
);
END COMPONENT;

signal intermediate_A_data, intermediate_B_data, intermediate_Bus_B_data,
intermediate_F_data, intermediate_Bus_D_data : STD_LOGIC_VECTOR (15 downto 0);

begin

datapath_register_file: register_file PORT MAP(
		src_s0_A => src_s0_A,
		src_s1_A => src_s1_A,
		src_s2_A => src_s2_A,
		src_s3_A => src_s3_A,
		src_s0_B => src_s0_B,
		src_s1_B => src_s1_B,
		src_s2_B => src_s2_B,
		src_s3_B => src_s3_B,
		des_A0 => des_A0,
		des_A1 => des_A1,
		des_A2 => des_A2,
		des_A3 => des_A3,
		Clk => Clk,
		load_write => load_write,
		d_data => intermediate_Bus_D_data,
		a_data => intermediate_A_data,
		b_data => intermediate_B_data	
);

datapath_mux_b: mux_b_data_bus_16bit PORT MAP(
		in0 => intermediate_B_data,
		in1 => constant_in,
		s => MBselect,
		b_z => intermediate_Bus_B_data
);

datapath_functional_unit: functional_unit PORT MAP(
		A => constant_in,
		B => intermediate_Bus_B_data,
		FSInput => FSInput,
		V => V,
		C => C,
		N => N,
		Z => Z,
		F => intermediate_F_data
);

datapath_mux_d: mux_d_data_bus_16bit PORT MAP(
		in0 => intermediate_F_data,
		in1 => data_in,
		s => MDselect,
		d_z => intermediate_Bus_D_data
);

address_out <= intermediate_A_data;
data_out <= intermediate_Bus_B_data;

end Behavioral;

