-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/17/2023 15:58:52"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SCA_v3 IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	CLK : IN std_logic;
	Ln1 : IN std_logic;
	Ln2 : IN std_logic;
	Ln3 : IN std_logic;
	Ln4 : IN std_logic;
	Rst : IN std_logic;
	Pswitch : IN std_logic;
	Mswitch : IN std_logic;
	D : OUT std_logic_vector(4 DOWNTO 0);
	Col1 : OUT std_logic;
	Col2 : OUT std_logic;
	Col3 : OUT std_logic;
	Wrl : OUT std_logic;
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(7 DOWNTO 0)
	);
END SCA_v3;

-- Design Ports Information
-- D[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col1	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col2	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col3	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wrl	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mswitch	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln3	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln4	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln1	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln2	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pswitch	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SCA_v3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Ln1 : std_logic;
SIGNAL ww_Ln2 : std_logic;
SIGNAL ww_Ln3 : std_logic;
SIGNAL ww_Ln4 : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Pswitch : std_logic;
SIGNAL ww_Mswitch : std_logic;
SIGNAL ww_D : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Col1 : std_logic;
SIGNAL ww_Col2 : std_logic;
SIGNAL ww_Col3 : std_logic;
SIGNAL ww_Wrl : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DM1|shift_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KD01|clk1|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DM1|UCLK|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SLDC1|Disp1|CLKDIV1|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \KD01|clk1|Add0~0_combout\ : std_logic;
SIGNAL \KD01|clk1|count[0]~6_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~0_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~3_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~2_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~1_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~0_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~4_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|count~0_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~1\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~2_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|count~1_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~3\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~4_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~5\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~6_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~7\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~8_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~9\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~10_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~11\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~12_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~13\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~14_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~15\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~16_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~17\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~18_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~19\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~20_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~21\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~22_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~23\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~24_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~25\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~26_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~27\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~28_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~29\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~30_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~31\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~32_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~33\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~34_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~35\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~36_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~37\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~38_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~39\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~40_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~41\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~42_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~43\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~44_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~45\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~46_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~47\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~48_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~49\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~50_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~51\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~52_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~53\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~54_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~55\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~56_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~57\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~58_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~59\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Add0~60_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~8_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~5_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~7_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~6_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|Equal0~9_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|tmp~0_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|tmp~q\ : std_logic;
SIGNAL \SLDC1|Disp1|CLKDIV1|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \SLDC1|Disp1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \SLDC1|Disp1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \KD01|clk1|Add0~1\ : std_logic;
SIGNAL \KD01|clk1|Add0~2_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~3\ : std_logic;
SIGNAL \KD01|clk1|Add0~4_combout\ : std_logic;
SIGNAL \KD01|clk1|count~0_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~5\ : std_logic;
SIGNAL \KD01|clk1|Add0~6_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~7\ : std_logic;
SIGNAL \KD01|clk1|Add0~8_combout\ : std_logic;
SIGNAL \KD01|clk1|count~1_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~9\ : std_logic;
SIGNAL \KD01|clk1|Add0~10_combout\ : std_logic;
SIGNAL \KD01|clk1|count~2_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~11\ : std_logic;
SIGNAL \KD01|clk1|Add0~12_combout\ : std_logic;
SIGNAL \KD01|clk1|count~3_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~13\ : std_logic;
SIGNAL \KD01|clk1|Add0~14_combout\ : std_logic;
SIGNAL \KD01|clk1|count~4_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~1_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~0_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~2_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~15\ : std_logic;
SIGNAL \KD01|clk1|Add0~16_combout\ : std_logic;
SIGNAL \KD01|clk1|count~5_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~17\ : std_logic;
SIGNAL \KD01|clk1|Add0~18_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~19\ : std_logic;
SIGNAL \KD01|clk1|Add0~20_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~21\ : std_logic;
SIGNAL \KD01|clk1|Add0~22_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~23\ : std_logic;
SIGNAL \KD01|clk1|Add0~24_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~25\ : std_logic;
SIGNAL \KD01|clk1|Add0~26_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~27\ : std_logic;
SIGNAL \KD01|clk1|Add0~28_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~29\ : std_logic;
SIGNAL \KD01|clk1|Add0~30_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~4_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~3_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~31\ : std_logic;
SIGNAL \KD01|clk1|Add0~32_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~33\ : std_logic;
SIGNAL \KD01|clk1|Add0~34_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~35\ : std_logic;
SIGNAL \KD01|clk1|Add0~36_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~37\ : std_logic;
SIGNAL \KD01|clk1|Add0~38_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~39\ : std_logic;
SIGNAL \KD01|clk1|Add0~40_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~41\ : std_logic;
SIGNAL \KD01|clk1|Add0~42_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~43\ : std_logic;
SIGNAL \KD01|clk1|Add0~44_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~45\ : std_logic;
SIGNAL \KD01|clk1|Add0~46_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~47\ : std_logic;
SIGNAL \KD01|clk1|Add0~48_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~49\ : std_logic;
SIGNAL \KD01|clk1|Add0~50_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~51\ : std_logic;
SIGNAL \KD01|clk1|Add0~52_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~53\ : std_logic;
SIGNAL \KD01|clk1|Add0~54_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~7_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~5_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~55\ : std_logic;
SIGNAL \KD01|clk1|Add0~56_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~57\ : std_logic;
SIGNAL \KD01|clk1|Add0~58_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~59\ : std_logic;
SIGNAL \KD01|clk1|Add0~60_combout\ : std_logic;
SIGNAL \KD01|clk1|Add0~61\ : std_logic;
SIGNAL \KD01|clk1|Add0~62_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~8_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~6_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~9_combout\ : std_logic;
SIGNAL \KD01|clk1|Equal0~10_combout\ : std_logic;
SIGNAL \KD01|clk1|tmp~0_combout\ : std_logic;
SIGNAL \KD01|clk1|tmp~q\ : std_logic;
SIGNAL \KD01|clk1|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \Ln2~input_o\ : std_logic;
SIGNAL \Ln1~input_o\ : std_logic;
SIGNAL \Ln4~input_o\ : std_logic;
SIGNAL \Ln3~input_o\ : std_logic;
SIGNAL \KD01|KD01|ks01|PEnc1|V~0_combout\ : std_logic;
SIGNAL \KD01|KD01|kc01|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \KD01|KD01|kc01|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|enable_s~combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UA4bit_1|U2|U2|S~combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UA4bit_1|U2|Co~combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UA4bit_1|U3|U2|S~combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UA4bit_1|U4|U2|S~combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR4bit_1|U3|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.STATE_DONE_LOAD~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \Mswitch~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\ : std_logic;
SIGNAL \SDC1|SR1|CUP1|U4|U0|Q~0_combout\ : std_logic;
SIGNAL \SDC1|SR1|CUP1|U4|U2|Q~0_combout\ : std_logic;
SIGNAL \SDC1|SR1|CUP1|U4|U2|Q~q\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \SDC1|SR1|SR1|FF1|Q~feeder_combout\ : std_logic;
SIGNAL \SDC1|SR1|SR1|FF1|Q~q\ : std_logic;
SIGNAL \SDC1|SR1|SR1|FF2|Q~feeder_combout\ : std_logic;
SIGNAL \SDC1|SR1|SR1|FF2|Q~q\ : std_logic;
SIGNAL \SDC1|SR1|SR1|FF3|Q~feeder_combout\ : std_logic;
SIGNAL \SDC1|SR1|SR1|FF3|Q~q\ : std_logic;
SIGNAL \SDC1|SR1|SR1|FF4|Q~feeder_combout\ : std_logic;
SIGNAL \SDC1|SR1|SR1|FF4|Q~q\ : std_logic;
SIGNAL \SDC1|SR1|SR1|FF5|Q~q\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.STATE_WAITING_DISPATCHER~0_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.STATE_CLOSING~0_combout\ : std_logic;
SIGNAL \Pswitch~input_o\ : std_logic;
SIGNAL \DM1|UCLK|Add0~1_cout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~2_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~3\ : std_logic;
SIGNAL \DM1|UCLK|Add0~4_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~5\ : std_logic;
SIGNAL \DM1|UCLK|Add0~6_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~7\ : std_logic;
SIGNAL \DM1|UCLK|Add0~8_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~9\ : std_logic;
SIGNAL \DM1|UCLK|Add0~10_combout\ : std_logic;
SIGNAL \DM1|UCLK|count~0_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~11\ : std_logic;
SIGNAL \DM1|UCLK|Add0~12_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~13\ : std_logic;
SIGNAL \DM1|UCLK|Add0~14_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~15\ : std_logic;
SIGNAL \DM1|UCLK|Add0~16_combout\ : std_logic;
SIGNAL \DM1|UCLK|count~1_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~17\ : std_logic;
SIGNAL \DM1|UCLK|Add0~18_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~19\ : std_logic;
SIGNAL \DM1|UCLK|Add0~20_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~21\ : std_logic;
SIGNAL \DM1|UCLK|Add0~22_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~23\ : std_logic;
SIGNAL \DM1|UCLK|Add0~24_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~25\ : std_logic;
SIGNAL \DM1|UCLK|Add0~26_combout\ : std_logic;
SIGNAL \DM1|UCLK|count~2_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~27\ : std_logic;
SIGNAL \DM1|UCLK|Add0~28_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~29\ : std_logic;
SIGNAL \DM1|UCLK|Add0~30_combout\ : std_logic;
SIGNAL \DM1|UCLK|count~3_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~31\ : std_logic;
SIGNAL \DM1|UCLK|Add0~32_combout\ : std_logic;
SIGNAL \DM1|UCLK|count~4_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~33\ : std_logic;
SIGNAL \DM1|UCLK|Add0~34_combout\ : std_logic;
SIGNAL \DM1|UCLK|count~5_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~35\ : std_logic;
SIGNAL \DM1|UCLK|Add0~36_combout\ : std_logic;
SIGNAL \DM1|UCLK|count~6_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~37\ : std_logic;
SIGNAL \DM1|UCLK|Add0~38_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~39\ : std_logic;
SIGNAL \DM1|UCLK|Add0~40_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~41\ : std_logic;
SIGNAL \DM1|UCLK|Add0~42_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~43\ : std_logic;
SIGNAL \DM1|UCLK|Add0~44_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~45\ : std_logic;
SIGNAL \DM1|UCLK|Add0~46_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~47\ : std_logic;
SIGNAL \DM1|UCLK|Add0~48_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~49\ : std_logic;
SIGNAL \DM1|UCLK|Add0~50_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~51\ : std_logic;
SIGNAL \DM1|UCLK|Add0~52_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~53\ : std_logic;
SIGNAL \DM1|UCLK|Add0~54_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~55\ : std_logic;
SIGNAL \DM1|UCLK|Add0~56_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~57\ : std_logic;
SIGNAL \DM1|UCLK|Add0~58_combout\ : std_logic;
SIGNAL \DM1|UCLK|Add0~59\ : std_logic;
SIGNAL \DM1|UCLK|Add0~60_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~7_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~5_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~4_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~6_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~8_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~2_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~3_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~0_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~1_combout\ : std_logic;
SIGNAL \DM1|UCLK|Equal0~9_combout\ : std_logic;
SIGNAL \DM1|UCLK|tmp~0_combout\ : std_logic;
SIGNAL \DM1|UCLK|tmp~q\ : std_logic;
SIGNAL \DM1|UCLK|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \DM1|U6|cnt_atual_pl[0]~2_combout\ : std_logic;
SIGNAL \DM1|U7|dataShift_in[6]~8_combout\ : std_logic;
SIGNAL \DM1|U7|dataShift_in[5]~3_combout\ : std_logic;
SIGNAL \DM1|U7|dataShift_in[4]~4_combout\ : std_logic;
SIGNAL \DM1|U7|dataShift_in[3]~5_combout\ : std_logic;
SIGNAL \DM1|U7|dataShift_in[2]~1_combout\ : std_logic;
SIGNAL \DM1|U7|dataShift_in[0]~0_combout\ : std_logic;
SIGNAL \DM1|U7|dataShift_in[1]~2_combout\ : std_logic;
SIGNAL \DM1|Equal0~0_combout\ : std_logic;
SIGNAL \DM1|Equal0~1_combout\ : std_logic;
SIGNAL \DM1|U7|dataShift_in[8]~6_combout\ : std_logic;
SIGNAL \SDC1|DC1|OnOff~0_combout\ : std_logic;
SIGNAL \SDC1|DC1|OnOff~1_combout\ : std_logic;
SIGNAL \DM1|U6|cnt_atual_pl[1]~4_combout\ : std_logic;
SIGNAL \DM1|U6|U1|SC:2:U1|S~combout\ : std_logic;
SIGNAL \DM1|U6|cnt_atual_pl[2]~1_combout\ : std_logic;
SIGNAL \DM1|U6|U1|SC:3:U1|S~combout\ : std_logic;
SIGNAL \DM1|U6|cnt_atual_pl[3]~3_combout\ : std_logic;
SIGNAL \DM1|shift_clk~0_combout\ : std_logic;
SIGNAL \DM1|shift_clk~2_combout\ : std_logic;
SIGNAL \DM1|U6|cnt_atual_pl[4]~0_combout\ : std_logic;
SIGNAL \DM1|shift_clk~combout\ : std_logic;
SIGNAL \DM1|shift_clk~clkctrl_outclk\ : std_logic;
SIGNAL \DM1|U7|dataShift_in[7]~7_combout\ : std_logic;
SIGNAL \DM1|Equal1~3_combout\ : std_logic;
SIGNAL \DM1|Equal1~4_combout\ : std_logic;
SIGNAL \DM1|Equal1~5_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_2~0_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_2~q\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \SDC1|DC1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.STATE_WAITING~0_combout\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_outclk\ : std_logic;
SIGNAL \SDC1|SR1|CUP1|U4|U0|Q~q\ : std_logic;
SIGNAL \SDC1|SR1|CUP1|U4|U1|Q~0_combout\ : std_logic;
SIGNAL \SDC1|SR1|CUP1|U4|U1|Q~q\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \SDC1|SR1|SC1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.STATE_NEW~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|selPG~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|Counter1|U1|U1|U1|S~combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|Counter1|U4|U0|Q~q\ : std_logic;
SIGNAL \KD01|KD01|ks01|Counter1|U1|U2|U2|S~combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|Counter1|U4|U1|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~7_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~3_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~49_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~15_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~11_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~50_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~23_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~31_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~27_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~19_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~47_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~48_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~51_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|Register1|U3|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~3_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~4_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \KD01|KD01|kc01|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \KD01|KD01|kc01|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl_outclk\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~10_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~2_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~6_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~44_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~14_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~45_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~18_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~26_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~42_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~30_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~22_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~43_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~46_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|Register1|U2|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|PEnc1|R[1]~0_combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|Reg1|U1|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~21_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~29_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~17_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~25_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~37_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~38_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~9_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~13_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~1_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~5_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~39_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~40_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~41_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|Register1|U1|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|Reg1|U0|Q~q\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~24_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~16_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~32_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~28_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~20_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~33_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~12_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~4_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~0_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~34_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~8_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~35_combout\ : std_logic;
SIGNAL \KD01|RingBuffer1|RAM1|ram~36_combout\ : std_logic;
SIGNAL \KD01|OutputBuffer1|Register1|U0|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \SLDC1|SR1|CUP1|U4|U0|Q~0_combout\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0_combout\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_outclk\ : std_logic;
SIGNAL \SLDC1|SR1|CUP1|U4|U0|Q~q\ : std_logic;
SIGNAL \SLDC1|SR1|CUP1|U4|U1|Q~0_combout\ : std_logic;
SIGNAL \SLDC1|SR1|CUP1|U4|U1|Q~q\ : std_logic;
SIGNAL \SLDC1|SR1|CUP1|U4|U2|Q~0_combout\ : std_logic;
SIGNAL \SLDC1|SR1|CUP1|U4|U2|Q~q\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \SLDC1|Disp1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0_combout\ : std_logic;
SIGNAL \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\ : std_logic;
SIGNAL \SLDC1|SR1|SR1|FF1|Q~q\ : std_logic;
SIGNAL \SLDC1|SR1|SR1|FF2|Q~q\ : std_logic;
SIGNAL \SLDC1|SR1|SR1|FF3|Q~q\ : std_logic;
SIGNAL \SLDC1|SR1|SR1|FF4|Q~q\ : std_logic;
SIGNAL \SLDC1|SR1|SR1|FF5|Q~q\ : std_logic;
SIGNAL \KD01|KD01|ks01|DEC1|Y0~combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|DEC1|Y1~combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|DEC1|Y2~combout\ : std_logic;
SIGNAL \DM1|U0|dOut[1]~0_combout\ : std_logic;
SIGNAL \DM1|Equal1~0_combout\ : std_logic;
SIGNAL \DM1|U5|dOut~0_combout\ : std_logic;
SIGNAL \DM1|U1|dOut[1]~0_combout\ : std_logic;
SIGNAL \DM1|Equal1~1_combout\ : std_logic;
SIGNAL \DM1|U4|dOut~0_combout\ : std_logic;
SIGNAL \DM1|U2|dOut[1]~0_combout\ : std_logic;
SIGNAL \DM1|Equal1~2_combout\ : std_logic;
SIGNAL \DM1|U3|dOut~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \SLDC1|Disp1|Dout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DM1|UCLK|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \KD01|clk1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DM1|U7|U1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SDC1|DC1|Dout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SLDC1|Disp1|CLKDIV1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DM1|U6|U2|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \KD01|KD01|ks01|PEnc1|R\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \DM1|U3|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \DM1|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \DM1|U4|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \DM1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \DM1|U5|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \DM1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|DEC1|ALT_INV_Y2~combout\ : std_logic;
SIGNAL \KD01|KD01|ks01|DEC1|ALT_INV_Y1~combout\ : std_logic;
SIGNAL \SLDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\ : std_logic;
SIGNAL \SDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_CLK <= CLK;
ww_Ln1 <= Ln1;
ww_Ln2 <= Ln2;
ww_Ln3 <= Ln3;
ww_Ln4 <= Ln4;
ww_Rst <= Rst;
ww_Pswitch <= Pswitch;
ww_Mswitch <= Mswitch;
D <= ww_D;
Col1 <= ww_Col1;
Col2 <= ww_Col2;
Col3 <= ww_Col3;
Wrl <= ww_Wrl;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0_combout\);

\DM1|shift_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DM1|shift_clk~combout\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

\KD01|clk1|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KD01|clk1|tmp~q\);

\DM1|UCLK|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DM1|UCLK|tmp~q\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\SDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SDC1|SR1|SC1|CurrentState.STATE_WAITING~0_combout\);

\SLDC1|Disp1|CLKDIV1|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SLDC1|Disp1|CLKDIV1|tmp~q\);

\SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0_combout\);
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\DM1|U3|ALT_INV_dOut~0_combout\ <= NOT \DM1|U3|dOut~0_combout\;
\DM1|ALT_INV_Equal1~2_combout\ <= NOT \DM1|Equal1~2_combout\;
\DM1|U4|ALT_INV_dOut~0_combout\ <= NOT \DM1|U4|dOut~0_combout\;
\DM1|ALT_INV_Equal1~1_combout\ <= NOT \DM1|Equal1~1_combout\;
\DM1|U5|ALT_INV_dOut~0_combout\ <= NOT \DM1|U5|dOut~0_combout\;
\DM1|ALT_INV_Equal1~0_combout\ <= NOT \DM1|Equal1~0_combout\;
\KD01|KD01|ks01|DEC1|ALT_INV_Y2~combout\ <= NOT \KD01|KD01|ks01|DEC1|Y2~combout\;
\KD01|KD01|ks01|DEC1|ALT_INV_Y1~combout\ <= NOT \KD01|KD01|ks01|DEC1|Y1~combout\;
\SLDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\ <= NOT \SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_outclk\;
\SDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\ <= NOT \SDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;

-- Location: FF_X45_Y38_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X45_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X45_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X45_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X45_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X45_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y52_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X44_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X44_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X44_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: IOOBUF_X24_Y0_N2
\D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLDC1|Disp1|Dout\(0),
	devoe => ww_devoe,
	o => ww_D(0));

-- Location: IOOBUF_X36_Y0_N9
\D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLDC1|Disp1|Dout\(1),
	devoe => ww_devoe,
	o => ww_D(1));

-- Location: IOOBUF_X34_Y0_N2
\D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLDC1|Disp1|Dout\(2),
	devoe => ww_devoe,
	o => ww_D(2));

-- Location: IOOBUF_X20_Y0_N2
\D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLDC1|Disp1|Dout\(3),
	devoe => ww_devoe,
	o => ww_D(3));

-- Location: IOOBUF_X20_Y0_N9
\D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLDC1|Disp1|Dout\(4),
	devoe => ww_devoe,
	o => ww_D(4));

-- Location: IOOBUF_X38_Y0_N9
\Col1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KD01|KD01|ks01|DEC1|Y0~combout\,
	devoe => ww_devoe,
	o => ww_Col1);

-- Location: IOOBUF_X38_Y0_N16
\Col2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KD01|KD01|ks01|DEC1|ALT_INV_Y1~combout\,
	devoe => ww_devoe,
	o => ww_Col2);

-- Location: IOOBUF_X34_Y0_N23
\Col3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KD01|KD01|ks01|DEC1|ALT_INV_Y2~combout\,
	devoe => ww_devoe,
	o => ww_Col3);

-- Location: IOOBUF_X14_Y0_N9
\Wrl~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0_combout\,
	devoe => ww_devoe,
	o => ww_Wrl);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DM1|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(7));

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X54_Y31_N0
\KD01|clk1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~0_combout\ = \KD01|clk1|count\(0) $ (GND)
-- \KD01|clk1|Add0~1\ = CARRY(!\KD01|clk1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(0),
	datad => VCC,
	combout => \KD01|clk1|Add0~0_combout\,
	cout => \KD01|clk1|Add0~1\);

-- Location: LCCOMB_X55_Y31_N18
\KD01|clk1|count[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|count[0]~6_combout\ = !\KD01|clk1|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD01|clk1|Add0~0_combout\,
	combout => \KD01|clk1|count[0]~6_combout\);

-- Location: FF_X55_Y31_N19
\KD01|clk1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|count[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(0));

-- Location: LCCOMB_X49_Y22_N2
\SLDC1|Disp1|CLKDIV1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~0_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(1) & (\KD01|clk1|count\(0) $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(1) & (!\KD01|clk1|count\(0) & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~1\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(1) & !\KD01|clk1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(1),
	datab => \KD01|clk1|count\(0),
	datad => VCC,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~0_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~1\);

-- Location: LCCOMB_X50_Y22_N10
\SLDC1|Disp1|CLKDIV1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~3_combout\ = (!\SLDC1|Disp1|CLKDIV1|count\(15) & (!\SLDC1|Disp1|CLKDIV1|count\(14) & (!\SLDC1|Disp1|CLKDIV1|count\(13) & !\SLDC1|Disp1|CLKDIV1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(15),
	datab => \SLDC1|Disp1|CLKDIV1|count\(14),
	datac => \SLDC1|Disp1|CLKDIV1|count\(13),
	datad => \SLDC1|Disp1|CLKDIV1|count\(12),
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y22_N24
\SLDC1|Disp1|CLKDIV1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~2_combout\ = (!\SLDC1|Disp1|CLKDIV1|count\(11) & (!\SLDC1|Disp1|CLKDIV1|count\(10) & (!\SLDC1|Disp1|CLKDIV1|count\(8) & !\SLDC1|Disp1|CLKDIV1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(11),
	datab => \SLDC1|Disp1|CLKDIV1|count\(10),
	datac => \SLDC1|Disp1|CLKDIV1|count\(8),
	datad => \SLDC1|Disp1|CLKDIV1|count\(9),
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y22_N0
\SLDC1|Disp1|CLKDIV1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~1_combout\ = (!\SLDC1|Disp1|CLKDIV1|count\(6) & (!\SLDC1|Disp1|CLKDIV1|count\(7) & (!\SLDC1|Disp1|CLKDIV1|count\(4) & !\SLDC1|Disp1|CLKDIV1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(6),
	datab => \SLDC1|Disp1|CLKDIV1|count\(7),
	datac => \SLDC1|Disp1|CLKDIV1|count\(4),
	datad => \SLDC1|Disp1|CLKDIV1|count\(5),
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y22_N6
\SLDC1|Disp1|CLKDIV1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~0_combout\ = (\KD01|clk1|count\(0) & (\SLDC1|Disp1|CLKDIV1|count\(2) & (!\SLDC1|Disp1|CLKDIV1|count\(3) & \SLDC1|Disp1|CLKDIV1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(0),
	datab => \SLDC1|Disp1|CLKDIV1|count\(2),
	datac => \SLDC1|Disp1|CLKDIV1|count\(3),
	datad => \SLDC1|Disp1|CLKDIV1|count\(1),
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y22_N12
\SLDC1|Disp1|CLKDIV1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~4_combout\ = (\SLDC1|Disp1|CLKDIV1|Equal0~3_combout\ & (\SLDC1|Disp1|CLKDIV1|Equal0~2_combout\ & (\SLDC1|Disp1|CLKDIV1|Equal0~1_combout\ & \SLDC1|Disp1|CLKDIV1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|Equal0~3_combout\,
	datab => \SLDC1|Disp1|CLKDIV1|Equal0~2_combout\,
	datac => \SLDC1|Disp1|CLKDIV1|Equal0~1_combout\,
	datad => \SLDC1|Disp1|CLKDIV1|Equal0~0_combout\,
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~4_combout\);

-- Location: LCCOMB_X50_Y22_N2
\SLDC1|Disp1|CLKDIV1|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|count~0_combout\ = (\SLDC1|Disp1|CLKDIV1|Add0~0_combout\ & ((!\SLDC1|Disp1|CLKDIV1|Equal0~4_combout\) # (!\SLDC1|Disp1|CLKDIV1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|Add0~0_combout\,
	datab => \SLDC1|Disp1|CLKDIV1|Equal0~9_combout\,
	datad => \SLDC1|Disp1|CLKDIV1|Equal0~4_combout\,
	combout => \SLDC1|Disp1|CLKDIV1|count~0_combout\);

-- Location: FF_X50_Y22_N3
\SLDC1|Disp1|CLKDIV1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(1));

-- Location: LCCOMB_X49_Y22_N4
\SLDC1|Disp1|CLKDIV1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~2_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(2) & (!\SLDC1|Disp1|CLKDIV1|Add0~1\)) # (!\SLDC1|Disp1|CLKDIV1|count\(2) & ((\SLDC1|Disp1|CLKDIV1|Add0~1\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~3\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~1\) # (!\SLDC1|Disp1|CLKDIV1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(2),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~1\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~2_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~3\);

-- Location: LCCOMB_X50_Y22_N20
\SLDC1|Disp1|CLKDIV1|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|count~1_combout\ = (\SLDC1|Disp1|CLKDIV1|Add0~2_combout\ & ((!\SLDC1|Disp1|CLKDIV1|Equal0~4_combout\) # (!\SLDC1|Disp1|CLKDIV1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|Equal0~9_combout\,
	datac => \SLDC1|Disp1|CLKDIV1|Add0~2_combout\,
	datad => \SLDC1|Disp1|CLKDIV1|Equal0~4_combout\,
	combout => \SLDC1|Disp1|CLKDIV1|count~1_combout\);

-- Location: FF_X50_Y22_N21
\SLDC1|Disp1|CLKDIV1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(2));

-- Location: LCCOMB_X49_Y22_N6
\SLDC1|Disp1|CLKDIV1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~4_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(3) & (\SLDC1|Disp1|CLKDIV1|Add0~3\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(3) & (!\SLDC1|Disp1|CLKDIV1|Add0~3\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~5\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(3) & !\SLDC1|Disp1|CLKDIV1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(3),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~3\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~4_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~5\);

-- Location: FF_X49_Y22_N7
\SLDC1|Disp1|CLKDIV1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(3));

-- Location: LCCOMB_X49_Y22_N8
\SLDC1|Disp1|CLKDIV1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~6_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(4) & (!\SLDC1|Disp1|CLKDIV1|Add0~5\)) # (!\SLDC1|Disp1|CLKDIV1|count\(4) & ((\SLDC1|Disp1|CLKDIV1|Add0~5\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~7\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~5\) # (!\SLDC1|Disp1|CLKDIV1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(4),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~5\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~6_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~7\);

-- Location: FF_X49_Y22_N9
\SLDC1|Disp1|CLKDIV1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(4));

-- Location: LCCOMB_X49_Y22_N10
\SLDC1|Disp1|CLKDIV1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~8_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(5) & (\SLDC1|Disp1|CLKDIV1|Add0~7\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(5) & (!\SLDC1|Disp1|CLKDIV1|Add0~7\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~9\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(5) & !\SLDC1|Disp1|CLKDIV1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(5),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~7\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~8_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~9\);

-- Location: FF_X49_Y22_N11
\SLDC1|Disp1|CLKDIV1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(5));

-- Location: LCCOMB_X49_Y22_N12
\SLDC1|Disp1|CLKDIV1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~10_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(6) & (!\SLDC1|Disp1|CLKDIV1|Add0~9\)) # (!\SLDC1|Disp1|CLKDIV1|count\(6) & ((\SLDC1|Disp1|CLKDIV1|Add0~9\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~11\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~9\) # (!\SLDC1|Disp1|CLKDIV1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(6),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~9\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~10_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~11\);

-- Location: FF_X49_Y22_N13
\SLDC1|Disp1|CLKDIV1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(6));

-- Location: LCCOMB_X49_Y22_N14
\SLDC1|Disp1|CLKDIV1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~12_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(7) & (\SLDC1|Disp1|CLKDIV1|Add0~11\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(7) & (!\SLDC1|Disp1|CLKDIV1|Add0~11\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~13\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(7) & !\SLDC1|Disp1|CLKDIV1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(7),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~11\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~12_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~13\);

-- Location: FF_X49_Y22_N15
\SLDC1|Disp1|CLKDIV1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(7));

-- Location: LCCOMB_X49_Y22_N16
\SLDC1|Disp1|CLKDIV1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~14_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(8) & (!\SLDC1|Disp1|CLKDIV1|Add0~13\)) # (!\SLDC1|Disp1|CLKDIV1|count\(8) & ((\SLDC1|Disp1|CLKDIV1|Add0~13\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~15\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~13\) # (!\SLDC1|Disp1|CLKDIV1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(8),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~13\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~14_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~15\);

-- Location: FF_X49_Y22_N17
\SLDC1|Disp1|CLKDIV1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(8));

-- Location: LCCOMB_X49_Y22_N18
\SLDC1|Disp1|CLKDIV1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~16_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(9) & (\SLDC1|Disp1|CLKDIV1|Add0~15\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(9) & (!\SLDC1|Disp1|CLKDIV1|Add0~15\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~17\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(9) & !\SLDC1|Disp1|CLKDIV1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(9),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~15\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~16_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~17\);

-- Location: FF_X49_Y22_N19
\SLDC1|Disp1|CLKDIV1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(9));

-- Location: LCCOMB_X49_Y22_N20
\SLDC1|Disp1|CLKDIV1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~18_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(10) & (!\SLDC1|Disp1|CLKDIV1|Add0~17\)) # (!\SLDC1|Disp1|CLKDIV1|count\(10) & ((\SLDC1|Disp1|CLKDIV1|Add0~17\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~19\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~17\) # (!\SLDC1|Disp1|CLKDIV1|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(10),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~17\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~18_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~19\);

-- Location: FF_X49_Y22_N21
\SLDC1|Disp1|CLKDIV1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(10));

-- Location: LCCOMB_X49_Y22_N22
\SLDC1|Disp1|CLKDIV1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~20_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(11) & (\SLDC1|Disp1|CLKDIV1|Add0~19\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(11) & (!\SLDC1|Disp1|CLKDIV1|Add0~19\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~21\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(11) & !\SLDC1|Disp1|CLKDIV1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(11),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~19\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~20_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~21\);

-- Location: FF_X49_Y22_N23
\SLDC1|Disp1|CLKDIV1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(11));

-- Location: LCCOMB_X49_Y22_N24
\SLDC1|Disp1|CLKDIV1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~22_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(12) & (!\SLDC1|Disp1|CLKDIV1|Add0~21\)) # (!\SLDC1|Disp1|CLKDIV1|count\(12) & ((\SLDC1|Disp1|CLKDIV1|Add0~21\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~23\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~21\) # (!\SLDC1|Disp1|CLKDIV1|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(12),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~21\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~22_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~23\);

-- Location: FF_X49_Y22_N25
\SLDC1|Disp1|CLKDIV1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(12));

-- Location: LCCOMB_X49_Y22_N26
\SLDC1|Disp1|CLKDIV1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~24_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(13) & (\SLDC1|Disp1|CLKDIV1|Add0~23\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(13) & (!\SLDC1|Disp1|CLKDIV1|Add0~23\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~25\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(13) & !\SLDC1|Disp1|CLKDIV1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(13),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~23\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~24_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~25\);

-- Location: FF_X49_Y22_N27
\SLDC1|Disp1|CLKDIV1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(13));

-- Location: LCCOMB_X49_Y22_N28
\SLDC1|Disp1|CLKDIV1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~26_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(14) & (!\SLDC1|Disp1|CLKDIV1|Add0~25\)) # (!\SLDC1|Disp1|CLKDIV1|count\(14) & ((\SLDC1|Disp1|CLKDIV1|Add0~25\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~27\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~25\) # (!\SLDC1|Disp1|CLKDIV1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(14),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~25\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~26_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~27\);

-- Location: FF_X49_Y22_N29
\SLDC1|Disp1|CLKDIV1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(14));

-- Location: LCCOMB_X49_Y22_N30
\SLDC1|Disp1|CLKDIV1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~28_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(15) & (\SLDC1|Disp1|CLKDIV1|Add0~27\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(15) & (!\SLDC1|Disp1|CLKDIV1|Add0~27\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~29\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(15) & !\SLDC1|Disp1|CLKDIV1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(15),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~27\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~28_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~29\);

-- Location: FF_X49_Y22_N31
\SLDC1|Disp1|CLKDIV1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(15));

-- Location: LCCOMB_X49_Y21_N0
\SLDC1|Disp1|CLKDIV1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~30_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(16) & (!\SLDC1|Disp1|CLKDIV1|Add0~29\)) # (!\SLDC1|Disp1|CLKDIV1|count\(16) & ((\SLDC1|Disp1|CLKDIV1|Add0~29\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~31\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~29\) # (!\SLDC1|Disp1|CLKDIV1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(16),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~29\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~30_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~31\);

-- Location: FF_X49_Y21_N1
\SLDC1|Disp1|CLKDIV1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(16));

-- Location: LCCOMB_X49_Y21_N2
\SLDC1|Disp1|CLKDIV1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~32_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(17) & (\SLDC1|Disp1|CLKDIV1|Add0~31\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(17) & (!\SLDC1|Disp1|CLKDIV1|Add0~31\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~33\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(17) & !\SLDC1|Disp1|CLKDIV1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(17),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~31\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~32_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~33\);

-- Location: FF_X49_Y21_N3
\SLDC1|Disp1|CLKDIV1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(17));

-- Location: LCCOMB_X49_Y21_N4
\SLDC1|Disp1|CLKDIV1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~34_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(18) & (!\SLDC1|Disp1|CLKDIV1|Add0~33\)) # (!\SLDC1|Disp1|CLKDIV1|count\(18) & ((\SLDC1|Disp1|CLKDIV1|Add0~33\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~35\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~33\) # (!\SLDC1|Disp1|CLKDIV1|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(18),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~33\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~34_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~35\);

-- Location: FF_X49_Y21_N5
\SLDC1|Disp1|CLKDIV1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(18));

-- Location: LCCOMB_X49_Y21_N6
\SLDC1|Disp1|CLKDIV1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~36_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(19) & (\SLDC1|Disp1|CLKDIV1|Add0~35\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(19) & (!\SLDC1|Disp1|CLKDIV1|Add0~35\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~37\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(19) & !\SLDC1|Disp1|CLKDIV1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(19),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~35\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~36_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~37\);

-- Location: FF_X49_Y21_N7
\SLDC1|Disp1|CLKDIV1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(19));

-- Location: LCCOMB_X49_Y21_N8
\SLDC1|Disp1|CLKDIV1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~38_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(20) & (!\SLDC1|Disp1|CLKDIV1|Add0~37\)) # (!\SLDC1|Disp1|CLKDIV1|count\(20) & ((\SLDC1|Disp1|CLKDIV1|Add0~37\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~39\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~37\) # (!\SLDC1|Disp1|CLKDIV1|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(20),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~37\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~38_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~39\);

-- Location: FF_X49_Y21_N9
\SLDC1|Disp1|CLKDIV1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(20));

-- Location: LCCOMB_X49_Y21_N10
\SLDC1|Disp1|CLKDIV1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~40_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(21) & (\SLDC1|Disp1|CLKDIV1|Add0~39\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(21) & (!\SLDC1|Disp1|CLKDIV1|Add0~39\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~41\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(21) & !\SLDC1|Disp1|CLKDIV1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(21),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~39\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~40_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~41\);

-- Location: FF_X49_Y21_N11
\SLDC1|Disp1|CLKDIV1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(21));

-- Location: LCCOMB_X49_Y21_N12
\SLDC1|Disp1|CLKDIV1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~42_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(22) & (!\SLDC1|Disp1|CLKDIV1|Add0~41\)) # (!\SLDC1|Disp1|CLKDIV1|count\(22) & ((\SLDC1|Disp1|CLKDIV1|Add0~41\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~43\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~41\) # (!\SLDC1|Disp1|CLKDIV1|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(22),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~41\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~42_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~43\);

-- Location: FF_X49_Y21_N13
\SLDC1|Disp1|CLKDIV1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(22));

-- Location: LCCOMB_X49_Y21_N14
\SLDC1|Disp1|CLKDIV1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~44_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(23) & (\SLDC1|Disp1|CLKDIV1|Add0~43\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(23) & (!\SLDC1|Disp1|CLKDIV1|Add0~43\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~45\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(23) & !\SLDC1|Disp1|CLKDIV1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(23),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~43\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~44_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~45\);

-- Location: FF_X49_Y21_N15
\SLDC1|Disp1|CLKDIV1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(23));

-- Location: LCCOMB_X49_Y21_N16
\SLDC1|Disp1|CLKDIV1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~46_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(24) & (!\SLDC1|Disp1|CLKDIV1|Add0~45\)) # (!\SLDC1|Disp1|CLKDIV1|count\(24) & ((\SLDC1|Disp1|CLKDIV1|Add0~45\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~47\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~45\) # (!\SLDC1|Disp1|CLKDIV1|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(24),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~45\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~46_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~47\);

-- Location: FF_X49_Y21_N17
\SLDC1|Disp1|CLKDIV1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(24));

-- Location: LCCOMB_X49_Y21_N18
\SLDC1|Disp1|CLKDIV1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~48_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(25) & (\SLDC1|Disp1|CLKDIV1|Add0~47\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(25) & (!\SLDC1|Disp1|CLKDIV1|Add0~47\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~49\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(25) & !\SLDC1|Disp1|CLKDIV1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(25),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~47\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~48_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~49\);

-- Location: FF_X49_Y21_N19
\SLDC1|Disp1|CLKDIV1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(25));

-- Location: LCCOMB_X49_Y21_N20
\SLDC1|Disp1|CLKDIV1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~50_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(26) & (!\SLDC1|Disp1|CLKDIV1|Add0~49\)) # (!\SLDC1|Disp1|CLKDIV1|count\(26) & ((\SLDC1|Disp1|CLKDIV1|Add0~49\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~51\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~49\) # (!\SLDC1|Disp1|CLKDIV1|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(26),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~49\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~50_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~51\);

-- Location: FF_X49_Y21_N21
\SLDC1|Disp1|CLKDIV1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(26));

-- Location: LCCOMB_X49_Y21_N22
\SLDC1|Disp1|CLKDIV1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~52_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(27) & (\SLDC1|Disp1|CLKDIV1|Add0~51\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(27) & (!\SLDC1|Disp1|CLKDIV1|Add0~51\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~53\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(27) & !\SLDC1|Disp1|CLKDIV1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(27),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~51\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~52_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~53\);

-- Location: FF_X49_Y21_N23
\SLDC1|Disp1|CLKDIV1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(27));

-- Location: LCCOMB_X49_Y21_N24
\SLDC1|Disp1|CLKDIV1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~54_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(28) & (!\SLDC1|Disp1|CLKDIV1|Add0~53\)) # (!\SLDC1|Disp1|CLKDIV1|count\(28) & ((\SLDC1|Disp1|CLKDIV1|Add0~53\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~55\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~53\) # (!\SLDC1|Disp1|CLKDIV1|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(28),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~53\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~54_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~55\);

-- Location: FF_X49_Y21_N25
\SLDC1|Disp1|CLKDIV1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(28));

-- Location: LCCOMB_X49_Y21_N26
\SLDC1|Disp1|CLKDIV1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~56_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(29) & (\SLDC1|Disp1|CLKDIV1|Add0~55\ $ (GND))) # (!\SLDC1|Disp1|CLKDIV1|count\(29) & (!\SLDC1|Disp1|CLKDIV1|Add0~55\ & VCC))
-- \SLDC1|Disp1|CLKDIV1|Add0~57\ = CARRY((\SLDC1|Disp1|CLKDIV1|count\(29) & !\SLDC1|Disp1|CLKDIV1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(29),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~55\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~56_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~57\);

-- Location: FF_X49_Y21_N27
\SLDC1|Disp1|CLKDIV1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(29));

-- Location: LCCOMB_X49_Y21_N28
\SLDC1|Disp1|CLKDIV1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~58_combout\ = (\SLDC1|Disp1|CLKDIV1|count\(30) & (!\SLDC1|Disp1|CLKDIV1|Add0~57\)) # (!\SLDC1|Disp1|CLKDIV1|count\(30) & ((\SLDC1|Disp1|CLKDIV1|Add0~57\) # (GND)))
-- \SLDC1|Disp1|CLKDIV1|Add0~59\ = CARRY((!\SLDC1|Disp1|CLKDIV1|Add0~57\) # (!\SLDC1|Disp1|CLKDIV1|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|count\(30),
	datad => VCC,
	cin => \SLDC1|Disp1|CLKDIV1|Add0~57\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~58_combout\,
	cout => \SLDC1|Disp1|CLKDIV1|Add0~59\);

-- Location: FF_X49_Y21_N29
\SLDC1|Disp1|CLKDIV1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(30));

-- Location: LCCOMB_X49_Y21_N30
\SLDC1|Disp1|CLKDIV1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Add0~60_combout\ = \SLDC1|Disp1|CLKDIV1|count\(31) $ (!\SLDC1|Disp1|CLKDIV1|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(31),
	cin => \SLDC1|Disp1|CLKDIV1|Add0~59\,
	combout => \SLDC1|Disp1|CLKDIV1|Add0~60_combout\);

-- Location: FF_X49_Y21_N31
\SLDC1|Disp1|CLKDIV1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|count\(31));

-- Location: LCCOMB_X50_Y21_N6
\SLDC1|Disp1|CLKDIV1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~8_combout\ = (!\SLDC1|Disp1|CLKDIV1|count\(31) & (!\SLDC1|Disp1|CLKDIV1|count\(30) & (!\SLDC1|Disp1|CLKDIV1|count\(29) & !\SLDC1|Disp1|CLKDIV1|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(31),
	datab => \SLDC1|Disp1|CLKDIV1|count\(30),
	datac => \SLDC1|Disp1|CLKDIV1|count\(29),
	datad => \SLDC1|Disp1|CLKDIV1|count\(28),
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~8_combout\);

-- Location: LCCOMB_X50_Y21_N24
\SLDC1|Disp1|CLKDIV1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~5_combout\ = (!\SLDC1|Disp1|CLKDIV1|count\(16) & (!\SLDC1|Disp1|CLKDIV1|count\(19) & (!\SLDC1|Disp1|CLKDIV1|count\(18) & !\SLDC1|Disp1|CLKDIV1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(16),
	datab => \SLDC1|Disp1|CLKDIV1|count\(19),
	datac => \SLDC1|Disp1|CLKDIV1|count\(18),
	datad => \SLDC1|Disp1|CLKDIV1|count\(17),
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~5_combout\);

-- Location: LCCOMB_X50_Y21_N12
\SLDC1|Disp1|CLKDIV1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~7_combout\ = (!\SLDC1|Disp1|CLKDIV1|count\(27) & (!\SLDC1|Disp1|CLKDIV1|count\(26) & (!\SLDC1|Disp1|CLKDIV1|count\(24) & !\SLDC1|Disp1|CLKDIV1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(27),
	datab => \SLDC1|Disp1|CLKDIV1|count\(26),
	datac => \SLDC1|Disp1|CLKDIV1|count\(24),
	datad => \SLDC1|Disp1|CLKDIV1|count\(25),
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~7_combout\);

-- Location: LCCOMB_X50_Y21_N10
\SLDC1|Disp1|CLKDIV1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~6_combout\ = (!\SLDC1|Disp1|CLKDIV1|count\(21) & (!\SLDC1|Disp1|CLKDIV1|count\(20) & (!\SLDC1|Disp1|CLKDIV1|count\(22) & !\SLDC1|Disp1|CLKDIV1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|count\(21),
	datab => \SLDC1|Disp1|CLKDIV1|count\(20),
	datac => \SLDC1|Disp1|CLKDIV1|count\(22),
	datad => \SLDC1|Disp1|CLKDIV1|count\(23),
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~6_combout\);

-- Location: LCCOMB_X50_Y21_N0
\SLDC1|Disp1|CLKDIV1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|Equal0~9_combout\ = (\SLDC1|Disp1|CLKDIV1|Equal0~8_combout\ & (\SLDC1|Disp1|CLKDIV1|Equal0~5_combout\ & (\SLDC1|Disp1|CLKDIV1|Equal0~7_combout\ & \SLDC1|Disp1|CLKDIV1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CLKDIV1|Equal0~8_combout\,
	datab => \SLDC1|Disp1|CLKDIV1|Equal0~5_combout\,
	datac => \SLDC1|Disp1|CLKDIV1|Equal0~7_combout\,
	datad => \SLDC1|Disp1|CLKDIV1|Equal0~6_combout\,
	combout => \SLDC1|Disp1|CLKDIV1|Equal0~9_combout\);

-- Location: LCCOMB_X50_Y22_N16
\SLDC1|Disp1|CLKDIV1|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CLKDIV1|tmp~0_combout\ = \SLDC1|Disp1|CLKDIV1|tmp~q\ $ (((\SLDC1|Disp1|CLKDIV1|Equal0~9_combout\ & \SLDC1|Disp1|CLKDIV1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CLKDIV1|Equal0~9_combout\,
	datac => \SLDC1|Disp1|CLKDIV1|tmp~q\,
	datad => \SLDC1|Disp1|CLKDIV1|Equal0~4_combout\,
	combout => \SLDC1|Disp1|CLKDIV1|tmp~0_combout\);

-- Location: FF_X50_Y22_N17
\SLDC1|Disp1|CLKDIV1|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|Disp1|CLKDIV1|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CLKDIV1|tmp~q\);

-- Location: CLKCTRL_G15
\SLDC1|Disp1|CLKDIV1|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SLDC1|Disp1|CLKDIV1|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SLDC1|Disp1|CLKDIV1|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y7_N26
\SLDC1|Disp1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CurrentState.state_bit_1~0_combout\ = (\SLDC1|Disp1|CurrentState.state_bit_0~q\ & (((\SLDC1|SR1|SC1|CurrentState.state_bit_1~q\ & \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\)) # (!\SLDC1|Disp1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datab => \SLDC1|Disp1|CurrentState.state_bit_0~q\,
	datac => \SLDC1|Disp1|CurrentState.state_bit_1~q\,
	datad => \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	combout => \SLDC1|Disp1|CurrentState.state_bit_1~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\Rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: FF_X42_Y7_N27
\SLDC1|Disp1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLDC1|Disp1|CLKDIV1|tmp~clkctrl_outclk\,
	d => \SLDC1|Disp1|CurrentState.state_bit_1~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CurrentState.state_bit_1~q\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X44_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X45_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X44_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X44_Y38_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X47_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X47_Y38_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X47_Y39_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X47_Y39_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X47_Y39_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X47_Y39_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X47_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X47_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X47_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X47_Y38_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X47_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X47_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X47_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X47_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X47_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X47_Y38_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X47_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X47_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X47_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X45_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X45_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X45_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X45_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X45_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X45_Y38_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X45_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X45_Y38_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X45_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X45_Y38_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X44_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X44_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X44_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X44_Y38_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X44_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X44_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X45_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: LCCOMB_X46_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: FF_X46_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X46_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X46_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X46_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X46_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X46_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: LCCOMB_X46_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: FF_X46_Y38_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X46_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X46_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X46_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X46_Y38_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X46_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X46_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X46_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X46_Y38_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X46_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X46_Y38_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X46_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X46_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X54_Y31_N2
\KD01|clk1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~2_combout\ = (\KD01|clk1|count\(1) & (!\KD01|clk1|Add0~1\)) # (!\KD01|clk1|count\(1) & ((\KD01|clk1|Add0~1\) # (GND)))
-- \KD01|clk1|Add0~3\ = CARRY((!\KD01|clk1|Add0~1\) # (!\KD01|clk1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(1),
	datad => VCC,
	cin => \KD01|clk1|Add0~1\,
	combout => \KD01|clk1|Add0~2_combout\,
	cout => \KD01|clk1|Add0~3\);

-- Location: FF_X54_Y31_N3
\KD01|clk1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(1));

-- Location: LCCOMB_X54_Y31_N4
\KD01|clk1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~4_combout\ = (\KD01|clk1|count\(2) & (\KD01|clk1|Add0~3\ $ (GND))) # (!\KD01|clk1|count\(2) & (!\KD01|clk1|Add0~3\ & VCC))
-- \KD01|clk1|Add0~5\ = CARRY((\KD01|clk1|count\(2) & !\KD01|clk1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(2),
	datad => VCC,
	cin => \KD01|clk1|Add0~3\,
	combout => \KD01|clk1|Add0~4_combout\,
	cout => \KD01|clk1|Add0~5\);

-- Location: LCCOMB_X55_Y31_N22
\KD01|clk1|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|count~0_combout\ = (!\KD01|clk1|Equal0~10_combout\ & \KD01|clk1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|Equal0~10_combout\,
	datac => \KD01|clk1|Add0~4_combout\,
	combout => \KD01|clk1|count~0_combout\);

-- Location: FF_X55_Y31_N23
\KD01|clk1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(2));

-- Location: LCCOMB_X54_Y31_N6
\KD01|clk1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~6_combout\ = (\KD01|clk1|count\(3) & (!\KD01|clk1|Add0~5\)) # (!\KD01|clk1|count\(3) & ((\KD01|clk1|Add0~5\) # (GND)))
-- \KD01|clk1|Add0~7\ = CARRY((!\KD01|clk1|Add0~5\) # (!\KD01|clk1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(3),
	datad => VCC,
	cin => \KD01|clk1|Add0~5\,
	combout => \KD01|clk1|Add0~6_combout\,
	cout => \KD01|clk1|Add0~7\);

-- Location: FF_X54_Y31_N7
\KD01|clk1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(3));

-- Location: LCCOMB_X54_Y31_N8
\KD01|clk1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~8_combout\ = (\KD01|clk1|count\(4) & (\KD01|clk1|Add0~7\ $ (GND))) # (!\KD01|clk1|count\(4) & (!\KD01|clk1|Add0~7\ & VCC))
-- \KD01|clk1|Add0~9\ = CARRY((\KD01|clk1|count\(4) & !\KD01|clk1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(4),
	datad => VCC,
	cin => \KD01|clk1|Add0~7\,
	combout => \KD01|clk1|Add0~8_combout\,
	cout => \KD01|clk1|Add0~9\);

-- Location: LCCOMB_X55_Y31_N0
\KD01|clk1|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|count~1_combout\ = (\KD01|clk1|Add0~8_combout\ & !\KD01|clk1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|Add0~8_combout\,
	datac => \KD01|clk1|Equal0~10_combout\,
	combout => \KD01|clk1|count~1_combout\);

-- Location: FF_X55_Y31_N1
\KD01|clk1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(4));

-- Location: LCCOMB_X54_Y31_N10
\KD01|clk1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~10_combout\ = (\KD01|clk1|count\(5) & (!\KD01|clk1|Add0~9\)) # (!\KD01|clk1|count\(5) & ((\KD01|clk1|Add0~9\) # (GND)))
-- \KD01|clk1|Add0~11\ = CARRY((!\KD01|clk1|Add0~9\) # (!\KD01|clk1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(5),
	datad => VCC,
	cin => \KD01|clk1|Add0~9\,
	combout => \KD01|clk1|Add0~10_combout\,
	cout => \KD01|clk1|Add0~11\);

-- Location: LCCOMB_X55_Y31_N2
\KD01|clk1|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|count~2_combout\ = (\KD01|clk1|Add0~10_combout\ & !\KD01|clk1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|Add0~10_combout\,
	datac => \KD01|clk1|Equal0~10_combout\,
	combout => \KD01|clk1|count~2_combout\);

-- Location: FF_X55_Y31_N3
\KD01|clk1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(5));

-- Location: LCCOMB_X54_Y31_N12
\KD01|clk1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~12_combout\ = (\KD01|clk1|count\(6) & (\KD01|clk1|Add0~11\ $ (GND))) # (!\KD01|clk1|count\(6) & (!\KD01|clk1|Add0~11\ & VCC))
-- \KD01|clk1|Add0~13\ = CARRY((\KD01|clk1|count\(6) & !\KD01|clk1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(6),
	datad => VCC,
	cin => \KD01|clk1|Add0~11\,
	combout => \KD01|clk1|Add0~12_combout\,
	cout => \KD01|clk1|Add0~13\);

-- Location: LCCOMB_X55_Y31_N20
\KD01|clk1|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|count~3_combout\ = (\KD01|clk1|Add0~12_combout\ & !\KD01|clk1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|Add0~12_combout\,
	datac => \KD01|clk1|Equal0~10_combout\,
	combout => \KD01|clk1|count~3_combout\);

-- Location: FF_X55_Y31_N21
\KD01|clk1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(6));

-- Location: LCCOMB_X54_Y31_N14
\KD01|clk1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~14_combout\ = (\KD01|clk1|count\(7) & (!\KD01|clk1|Add0~13\)) # (!\KD01|clk1|count\(7) & ((\KD01|clk1|Add0~13\) # (GND)))
-- \KD01|clk1|Add0~15\ = CARRY((!\KD01|clk1|Add0~13\) # (!\KD01|clk1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(7),
	datad => VCC,
	cin => \KD01|clk1|Add0~13\,
	combout => \KD01|clk1|Add0~14_combout\,
	cout => \KD01|clk1|Add0~15\);

-- Location: LCCOMB_X55_Y31_N6
\KD01|clk1|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|count~4_combout\ = (\KD01|clk1|Add0~14_combout\ & !\KD01|clk1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|Add0~14_combout\,
	datac => \KD01|clk1|Equal0~10_combout\,
	combout => \KD01|clk1|count~4_combout\);

-- Location: FF_X55_Y31_N7
\KD01|clk1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(7));

-- Location: LCCOMB_X55_Y31_N8
\KD01|clk1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~1_combout\ = (\KD01|clk1|count\(7) & (\KD01|clk1|count\(6) & (\KD01|clk1|count\(5) & \KD01|clk1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(7),
	datab => \KD01|clk1|count\(6),
	datac => \KD01|clk1|count\(5),
	datad => \KD01|clk1|count\(4),
	combout => \KD01|clk1|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y31_N28
\KD01|clk1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~0_combout\ = (!\KD01|clk1|count\(1) & \KD01|clk1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(1),
	datad => \KD01|clk1|count\(0),
	combout => \KD01|clk1|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y31_N10
\KD01|clk1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~2_combout\ = (\KD01|clk1|count\(2) & (\KD01|clk1|Equal0~1_combout\ & (!\KD01|clk1|count\(3) & \KD01|clk1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(2),
	datab => \KD01|clk1|Equal0~1_combout\,
	datac => \KD01|clk1|count\(3),
	datad => \KD01|clk1|Equal0~0_combout\,
	combout => \KD01|clk1|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y31_N16
\KD01|clk1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~16_combout\ = (\KD01|clk1|count\(8) & (\KD01|clk1|Add0~15\ $ (GND))) # (!\KD01|clk1|count\(8) & (!\KD01|clk1|Add0~15\ & VCC))
-- \KD01|clk1|Add0~17\ = CARRY((\KD01|clk1|count\(8) & !\KD01|clk1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(8),
	datad => VCC,
	cin => \KD01|clk1|Add0~15\,
	combout => \KD01|clk1|Add0~16_combout\,
	cout => \KD01|clk1|Add0~17\);

-- Location: LCCOMB_X55_Y31_N12
\KD01|clk1|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|count~5_combout\ = (!\KD01|clk1|Equal0~10_combout\ & \KD01|clk1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|Equal0~10_combout\,
	datac => \KD01|clk1|Add0~16_combout\,
	combout => \KD01|clk1|count~5_combout\);

-- Location: FF_X55_Y31_N13
\KD01|clk1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(8));

-- Location: LCCOMB_X54_Y31_N18
\KD01|clk1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~18_combout\ = (\KD01|clk1|count\(9) & (!\KD01|clk1|Add0~17\)) # (!\KD01|clk1|count\(9) & ((\KD01|clk1|Add0~17\) # (GND)))
-- \KD01|clk1|Add0~19\ = CARRY((!\KD01|clk1|Add0~17\) # (!\KD01|clk1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(9),
	datad => VCC,
	cin => \KD01|clk1|Add0~17\,
	combout => \KD01|clk1|Add0~18_combout\,
	cout => \KD01|clk1|Add0~19\);

-- Location: FF_X54_Y31_N19
\KD01|clk1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(9));

-- Location: LCCOMB_X54_Y31_N20
\KD01|clk1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~20_combout\ = (\KD01|clk1|count\(10) & (\KD01|clk1|Add0~19\ $ (GND))) # (!\KD01|clk1|count\(10) & (!\KD01|clk1|Add0~19\ & VCC))
-- \KD01|clk1|Add0~21\ = CARRY((\KD01|clk1|count\(10) & !\KD01|clk1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(10),
	datad => VCC,
	cin => \KD01|clk1|Add0~19\,
	combout => \KD01|clk1|Add0~20_combout\,
	cout => \KD01|clk1|Add0~21\);

-- Location: FF_X54_Y31_N21
\KD01|clk1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(10));

-- Location: LCCOMB_X54_Y31_N22
\KD01|clk1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~22_combout\ = (\KD01|clk1|count\(11) & (!\KD01|clk1|Add0~21\)) # (!\KD01|clk1|count\(11) & ((\KD01|clk1|Add0~21\) # (GND)))
-- \KD01|clk1|Add0~23\ = CARRY((!\KD01|clk1|Add0~21\) # (!\KD01|clk1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(11),
	datad => VCC,
	cin => \KD01|clk1|Add0~21\,
	combout => \KD01|clk1|Add0~22_combout\,
	cout => \KD01|clk1|Add0~23\);

-- Location: FF_X54_Y31_N23
\KD01|clk1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(11));

-- Location: LCCOMB_X54_Y31_N24
\KD01|clk1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~24_combout\ = (\KD01|clk1|count\(12) & (\KD01|clk1|Add0~23\ $ (GND))) # (!\KD01|clk1|count\(12) & (!\KD01|clk1|Add0~23\ & VCC))
-- \KD01|clk1|Add0~25\ = CARRY((\KD01|clk1|count\(12) & !\KD01|clk1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(12),
	datad => VCC,
	cin => \KD01|clk1|Add0~23\,
	combout => \KD01|clk1|Add0~24_combout\,
	cout => \KD01|clk1|Add0~25\);

-- Location: FF_X54_Y31_N25
\KD01|clk1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(12));

-- Location: LCCOMB_X54_Y31_N26
\KD01|clk1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~26_combout\ = (\KD01|clk1|count\(13) & (!\KD01|clk1|Add0~25\)) # (!\KD01|clk1|count\(13) & ((\KD01|clk1|Add0~25\) # (GND)))
-- \KD01|clk1|Add0~27\ = CARRY((!\KD01|clk1|Add0~25\) # (!\KD01|clk1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(13),
	datad => VCC,
	cin => \KD01|clk1|Add0~25\,
	combout => \KD01|clk1|Add0~26_combout\,
	cout => \KD01|clk1|Add0~27\);

-- Location: FF_X54_Y31_N27
\KD01|clk1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(13));

-- Location: LCCOMB_X54_Y31_N28
\KD01|clk1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~28_combout\ = (\KD01|clk1|count\(14) & (\KD01|clk1|Add0~27\ $ (GND))) # (!\KD01|clk1|count\(14) & (!\KD01|clk1|Add0~27\ & VCC))
-- \KD01|clk1|Add0~29\ = CARRY((\KD01|clk1|count\(14) & !\KD01|clk1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(14),
	datad => VCC,
	cin => \KD01|clk1|Add0~27\,
	combout => \KD01|clk1|Add0~28_combout\,
	cout => \KD01|clk1|Add0~29\);

-- Location: FF_X54_Y31_N29
\KD01|clk1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(14));

-- Location: LCCOMB_X54_Y31_N30
\KD01|clk1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~30_combout\ = (\KD01|clk1|count\(15) & (!\KD01|clk1|Add0~29\)) # (!\KD01|clk1|count\(15) & ((\KD01|clk1|Add0~29\) # (GND)))
-- \KD01|clk1|Add0~31\ = CARRY((!\KD01|clk1|Add0~29\) # (!\KD01|clk1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(15),
	datad => VCC,
	cin => \KD01|clk1|Add0~29\,
	combout => \KD01|clk1|Add0~30_combout\,
	cout => \KD01|clk1|Add0~31\);

-- Location: FF_X54_Y31_N31
\KD01|clk1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(15));

-- Location: LCCOMB_X55_Y31_N16
\KD01|clk1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~4_combout\ = (!\KD01|clk1|count\(15) & (!\KD01|clk1|count\(14) & (!\KD01|clk1|count\(13) & !\KD01|clk1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(15),
	datab => \KD01|clk1|count\(14),
	datac => \KD01|clk1|count\(13),
	datad => \KD01|clk1|count\(12),
	combout => \KD01|clk1|Equal0~4_combout\);

-- Location: LCCOMB_X55_Y31_N30
\KD01|clk1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~3_combout\ = (\KD01|clk1|count\(8) & (!\KD01|clk1|count\(10) & (!\KD01|clk1|count\(11) & !\KD01|clk1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(8),
	datab => \KD01|clk1|count\(10),
	datac => \KD01|clk1|count\(11),
	datad => \KD01|clk1|count\(9),
	combout => \KD01|clk1|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y30_N0
\KD01|clk1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~32_combout\ = (\KD01|clk1|count\(16) & (\KD01|clk1|Add0~31\ $ (GND))) # (!\KD01|clk1|count\(16) & (!\KD01|clk1|Add0~31\ & VCC))
-- \KD01|clk1|Add0~33\ = CARRY((\KD01|clk1|count\(16) & !\KD01|clk1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(16),
	datad => VCC,
	cin => \KD01|clk1|Add0~31\,
	combout => \KD01|clk1|Add0~32_combout\,
	cout => \KD01|clk1|Add0~33\);

-- Location: FF_X54_Y30_N1
\KD01|clk1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(16));

-- Location: LCCOMB_X54_Y30_N2
\KD01|clk1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~34_combout\ = (\KD01|clk1|count\(17) & (!\KD01|clk1|Add0~33\)) # (!\KD01|clk1|count\(17) & ((\KD01|clk1|Add0~33\) # (GND)))
-- \KD01|clk1|Add0~35\ = CARRY((!\KD01|clk1|Add0~33\) # (!\KD01|clk1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(17),
	datad => VCC,
	cin => \KD01|clk1|Add0~33\,
	combout => \KD01|clk1|Add0~34_combout\,
	cout => \KD01|clk1|Add0~35\);

-- Location: FF_X54_Y30_N3
\KD01|clk1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(17));

-- Location: LCCOMB_X54_Y30_N4
\KD01|clk1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~36_combout\ = (\KD01|clk1|count\(18) & (\KD01|clk1|Add0~35\ $ (GND))) # (!\KD01|clk1|count\(18) & (!\KD01|clk1|Add0~35\ & VCC))
-- \KD01|clk1|Add0~37\ = CARRY((\KD01|clk1|count\(18) & !\KD01|clk1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(18),
	datad => VCC,
	cin => \KD01|clk1|Add0~35\,
	combout => \KD01|clk1|Add0~36_combout\,
	cout => \KD01|clk1|Add0~37\);

-- Location: FF_X54_Y30_N5
\KD01|clk1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(18));

-- Location: LCCOMB_X54_Y30_N6
\KD01|clk1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~38_combout\ = (\KD01|clk1|count\(19) & (!\KD01|clk1|Add0~37\)) # (!\KD01|clk1|count\(19) & ((\KD01|clk1|Add0~37\) # (GND)))
-- \KD01|clk1|Add0~39\ = CARRY((!\KD01|clk1|Add0~37\) # (!\KD01|clk1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(19),
	datad => VCC,
	cin => \KD01|clk1|Add0~37\,
	combout => \KD01|clk1|Add0~38_combout\,
	cout => \KD01|clk1|Add0~39\);

-- Location: FF_X54_Y30_N7
\KD01|clk1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(19));

-- Location: LCCOMB_X54_Y30_N8
\KD01|clk1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~40_combout\ = (\KD01|clk1|count\(20) & (\KD01|clk1|Add0~39\ $ (GND))) # (!\KD01|clk1|count\(20) & (!\KD01|clk1|Add0~39\ & VCC))
-- \KD01|clk1|Add0~41\ = CARRY((\KD01|clk1|count\(20) & !\KD01|clk1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(20),
	datad => VCC,
	cin => \KD01|clk1|Add0~39\,
	combout => \KD01|clk1|Add0~40_combout\,
	cout => \KD01|clk1|Add0~41\);

-- Location: FF_X54_Y30_N9
\KD01|clk1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(20));

-- Location: LCCOMB_X54_Y30_N10
\KD01|clk1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~42_combout\ = (\KD01|clk1|count\(21) & (!\KD01|clk1|Add0~41\)) # (!\KD01|clk1|count\(21) & ((\KD01|clk1|Add0~41\) # (GND)))
-- \KD01|clk1|Add0~43\ = CARRY((!\KD01|clk1|Add0~41\) # (!\KD01|clk1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(21),
	datad => VCC,
	cin => \KD01|clk1|Add0~41\,
	combout => \KD01|clk1|Add0~42_combout\,
	cout => \KD01|clk1|Add0~43\);

-- Location: FF_X54_Y30_N11
\KD01|clk1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(21));

-- Location: LCCOMB_X54_Y30_N12
\KD01|clk1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~44_combout\ = (\KD01|clk1|count\(22) & (\KD01|clk1|Add0~43\ $ (GND))) # (!\KD01|clk1|count\(22) & (!\KD01|clk1|Add0~43\ & VCC))
-- \KD01|clk1|Add0~45\ = CARRY((\KD01|clk1|count\(22) & !\KD01|clk1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(22),
	datad => VCC,
	cin => \KD01|clk1|Add0~43\,
	combout => \KD01|clk1|Add0~44_combout\,
	cout => \KD01|clk1|Add0~45\);

-- Location: FF_X54_Y30_N13
\KD01|clk1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(22));

-- Location: LCCOMB_X54_Y30_N14
\KD01|clk1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~46_combout\ = (\KD01|clk1|count\(23) & (!\KD01|clk1|Add0~45\)) # (!\KD01|clk1|count\(23) & ((\KD01|clk1|Add0~45\) # (GND)))
-- \KD01|clk1|Add0~47\ = CARRY((!\KD01|clk1|Add0~45\) # (!\KD01|clk1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(23),
	datad => VCC,
	cin => \KD01|clk1|Add0~45\,
	combout => \KD01|clk1|Add0~46_combout\,
	cout => \KD01|clk1|Add0~47\);

-- Location: FF_X54_Y30_N15
\KD01|clk1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(23));

-- Location: LCCOMB_X54_Y30_N16
\KD01|clk1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~48_combout\ = (\KD01|clk1|count\(24) & (\KD01|clk1|Add0~47\ $ (GND))) # (!\KD01|clk1|count\(24) & (!\KD01|clk1|Add0~47\ & VCC))
-- \KD01|clk1|Add0~49\ = CARRY((\KD01|clk1|count\(24) & !\KD01|clk1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(24),
	datad => VCC,
	cin => \KD01|clk1|Add0~47\,
	combout => \KD01|clk1|Add0~48_combout\,
	cout => \KD01|clk1|Add0~49\);

-- Location: FF_X54_Y30_N17
\KD01|clk1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(24));

-- Location: LCCOMB_X54_Y30_N18
\KD01|clk1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~50_combout\ = (\KD01|clk1|count\(25) & (!\KD01|clk1|Add0~49\)) # (!\KD01|clk1|count\(25) & ((\KD01|clk1|Add0~49\) # (GND)))
-- \KD01|clk1|Add0~51\ = CARRY((!\KD01|clk1|Add0~49\) # (!\KD01|clk1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(25),
	datad => VCC,
	cin => \KD01|clk1|Add0~49\,
	combout => \KD01|clk1|Add0~50_combout\,
	cout => \KD01|clk1|Add0~51\);

-- Location: FF_X54_Y30_N19
\KD01|clk1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(25));

-- Location: LCCOMB_X54_Y30_N20
\KD01|clk1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~52_combout\ = (\KD01|clk1|count\(26) & (\KD01|clk1|Add0~51\ $ (GND))) # (!\KD01|clk1|count\(26) & (!\KD01|clk1|Add0~51\ & VCC))
-- \KD01|clk1|Add0~53\ = CARRY((\KD01|clk1|count\(26) & !\KD01|clk1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(26),
	datad => VCC,
	cin => \KD01|clk1|Add0~51\,
	combout => \KD01|clk1|Add0~52_combout\,
	cout => \KD01|clk1|Add0~53\);

-- Location: FF_X54_Y30_N21
\KD01|clk1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(26));

-- Location: LCCOMB_X54_Y30_N22
\KD01|clk1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~54_combout\ = (\KD01|clk1|count\(27) & (!\KD01|clk1|Add0~53\)) # (!\KD01|clk1|count\(27) & ((\KD01|clk1|Add0~53\) # (GND)))
-- \KD01|clk1|Add0~55\ = CARRY((!\KD01|clk1|Add0~53\) # (!\KD01|clk1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(27),
	datad => VCC,
	cin => \KD01|clk1|Add0~53\,
	combout => \KD01|clk1|Add0~54_combout\,
	cout => \KD01|clk1|Add0~55\);

-- Location: FF_X54_Y30_N23
\KD01|clk1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(27));

-- Location: LCCOMB_X55_Y30_N12
\KD01|clk1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~7_combout\ = (!\KD01|clk1|count\(27) & (!\KD01|clk1|count\(26) & (!\KD01|clk1|count\(24) & !\KD01|clk1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(27),
	datab => \KD01|clk1|count\(26),
	datac => \KD01|clk1|count\(24),
	datad => \KD01|clk1|count\(25),
	combout => \KD01|clk1|Equal0~7_combout\);

-- Location: LCCOMB_X55_Y30_N24
\KD01|clk1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~5_combout\ = (!\KD01|clk1|count\(16) & (!\KD01|clk1|count\(19) & (!\KD01|clk1|count\(18) & !\KD01|clk1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(16),
	datab => \KD01|clk1|count\(19),
	datac => \KD01|clk1|count\(18),
	datad => \KD01|clk1|count\(17),
	combout => \KD01|clk1|Equal0~5_combout\);

-- Location: LCCOMB_X54_Y30_N24
\KD01|clk1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~56_combout\ = (\KD01|clk1|count\(28) & (\KD01|clk1|Add0~55\ $ (GND))) # (!\KD01|clk1|count\(28) & (!\KD01|clk1|Add0~55\ & VCC))
-- \KD01|clk1|Add0~57\ = CARRY((\KD01|clk1|count\(28) & !\KD01|clk1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(28),
	datad => VCC,
	cin => \KD01|clk1|Add0~55\,
	combout => \KD01|clk1|Add0~56_combout\,
	cout => \KD01|clk1|Add0~57\);

-- Location: FF_X54_Y30_N25
\KD01|clk1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(28));

-- Location: LCCOMB_X54_Y30_N26
\KD01|clk1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~58_combout\ = (\KD01|clk1|count\(29) & (!\KD01|clk1|Add0~57\)) # (!\KD01|clk1|count\(29) & ((\KD01|clk1|Add0~57\) # (GND)))
-- \KD01|clk1|Add0~59\ = CARRY((!\KD01|clk1|Add0~57\) # (!\KD01|clk1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(29),
	datad => VCC,
	cin => \KD01|clk1|Add0~57\,
	combout => \KD01|clk1|Add0~58_combout\,
	cout => \KD01|clk1|Add0~59\);

-- Location: FF_X54_Y30_N27
\KD01|clk1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(29));

-- Location: LCCOMB_X54_Y30_N28
\KD01|clk1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~60_combout\ = (\KD01|clk1|count\(30) & (\KD01|clk1|Add0~59\ $ (GND))) # (!\KD01|clk1|count\(30) & (!\KD01|clk1|Add0~59\ & VCC))
-- \KD01|clk1|Add0~61\ = CARRY((\KD01|clk1|count\(30) & !\KD01|clk1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD01|clk1|count\(30),
	datad => VCC,
	cin => \KD01|clk1|Add0~59\,
	combout => \KD01|clk1|Add0~60_combout\,
	cout => \KD01|clk1|Add0~61\);

-- Location: FF_X54_Y30_N29
\KD01|clk1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(30));

-- Location: LCCOMB_X54_Y30_N30
\KD01|clk1|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Add0~62_combout\ = \KD01|clk1|count\(31) $ (\KD01|clk1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(31),
	cin => \KD01|clk1|Add0~61\,
	combout => \KD01|clk1|Add0~62_combout\);

-- Location: FF_X54_Y30_N31
\KD01|clk1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|count\(31));

-- Location: LCCOMB_X55_Y30_N30
\KD01|clk1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~8_combout\ = (!\KD01|clk1|count\(28) & (!\KD01|clk1|count\(30) & (!\KD01|clk1|count\(29) & !\KD01|clk1|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(28),
	datab => \KD01|clk1|count\(30),
	datac => \KD01|clk1|count\(29),
	datad => \KD01|clk1|count\(31),
	combout => \KD01|clk1|Equal0~8_combout\);

-- Location: LCCOMB_X55_Y30_N10
\KD01|clk1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~6_combout\ = (!\KD01|clk1|count\(22) & (!\KD01|clk1|count\(23) & (!\KD01|clk1|count\(21) & !\KD01|clk1|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(22),
	datab => \KD01|clk1|count\(23),
	datac => \KD01|clk1|count\(21),
	datad => \KD01|clk1|count\(20),
	combout => \KD01|clk1|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y30_N0
\KD01|clk1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~9_combout\ = (\KD01|clk1|Equal0~7_combout\ & (\KD01|clk1|Equal0~5_combout\ & (\KD01|clk1|Equal0~8_combout\ & \KD01|clk1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|Equal0~7_combout\,
	datab => \KD01|clk1|Equal0~5_combout\,
	datac => \KD01|clk1|Equal0~8_combout\,
	datad => \KD01|clk1|Equal0~6_combout\,
	combout => \KD01|clk1|Equal0~9_combout\);

-- Location: LCCOMB_X55_Y31_N26
\KD01|clk1|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|Equal0~10_combout\ = (\KD01|clk1|Equal0~2_combout\ & (\KD01|clk1|Equal0~4_combout\ & (\KD01|clk1|Equal0~3_combout\ & \KD01|clk1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|Equal0~2_combout\,
	datab => \KD01|clk1|Equal0~4_combout\,
	datac => \KD01|clk1|Equal0~3_combout\,
	datad => \KD01|clk1|Equal0~9_combout\,
	combout => \KD01|clk1|Equal0~10_combout\);

-- Location: LCCOMB_X55_Y31_N24
\KD01|clk1|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|clk1|tmp~0_combout\ = \KD01|clk1|Equal0~10_combout\ $ (\KD01|clk1|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|Equal0~10_combout\,
	datac => \KD01|clk1|tmp~q\,
	combout => \KD01|clk1|tmp~0_combout\);

-- Location: FF_X55_Y31_N25
\KD01|clk1|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KD01|clk1|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|clk1|tmp~q\);

-- Location: CLKCTRL_G7
\KD01|clk1|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KD01|clk1|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KD01|clk1|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y0_N22
\Ln2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ln2,
	o => \Ln2~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\Ln1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ln1,
	o => \Ln1~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\Ln4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ln4,
	o => \Ln4~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\Ln3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ln3,
	o => \Ln3~input_o\);

-- Location: LCCOMB_X45_Y29_N14
\KD01|KD01|ks01|PEnc1|V~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|ks01|PEnc1|V~0_combout\ = (((!\Ln3~input_o\) # (!\Ln4~input_o\)) # (!\Ln1~input_o\)) # (!\Ln2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ln2~input_o\,
	datab => \Ln1~input_o\,
	datac => \Ln4~input_o\,
	datad => \Ln3~input_o\,
	combout => \KD01|KD01|ks01|PEnc1|V~0_combout\);

-- Location: LCCOMB_X45_Y29_N0
\KD01|KD01|kc01|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|kc01|CurrentState.state_bit_1~0_combout\ = (\KD01|KD01|kc01|CurrentState.state_bit_0~q\ & ((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~0_combout\) # ((\KD01|KD01|ks01|PEnc1|V~0_combout\ & \KD01|KD01|kc01|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~0_combout\,
	datab => \KD01|KD01|ks01|PEnc1|V~0_combout\,
	datac => \KD01|KD01|kc01|CurrentState.state_bit_1~q\,
	datad => \KD01|KD01|kc01|CurrentState.state_bit_0~q\,
	combout => \KD01|KD01|kc01|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X45_Y29_N1
\KD01|KD01|kc01|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|KD01|kc01|CurrentState.state_bit_1~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|KD01|kc01|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X45_Y29_N28
\KD01|KD01|kc01|CurrentState.STATE_STORING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\ = (!\KD01|KD01|kc01|CurrentState.state_bit_1~q\ & \KD01|KD01|kc01|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|kc01|CurrentState.state_bit_1~q\,
	datad => \KD01|KD01|kc01|CurrentState.state_bit_0~q\,
	combout => \KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\);

-- Location: LCCOMB_X45_Y30_N6
\KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~0_combout\ = !\KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\,
	combout => \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~0_combout\);

-- Location: LCCOMB_X45_Y30_N4
\KD01|RingBuffer1|MAC1|enable_s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|enable_s~combout\ = (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ & (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\)) # 
-- (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ & (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\,
	combout => \KD01|RingBuffer1|MAC1|enable_s~combout\);

-- Location: FF_X45_Y30_N7
\KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \KD01|RingBuffer1|MAC1|enable_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\);

-- Location: LCCOMB_X45_Y30_N24
\KD01|RingBuffer1|MAC1|UA4bit_1|U2|U2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UA4bit_1|U2|U2|S~combout\ = \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\ $ (\KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q~q\ $ (((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\) # (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datac => \KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|MAC1|UA4bit_1|U2|U2|S~combout\);

-- Location: FF_X45_Y30_N25
\KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UA4bit_1|U2|U2|S~combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \KD01|RingBuffer1|MAC1|enable_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q~q\);

-- Location: LCCOMB_X45_Y30_N10
\KD01|RingBuffer1|MAC1|UA4bit_1|U2|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UA4bit_1|U2|Co~combout\ = (\KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\ & (((\KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q~q\) # (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\)) # (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\))) # 
-- (!\KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\ & (\KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q~q\ & ((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\) # (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datac => \KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|MAC1|UA4bit_1|U2|Co~combout\);

-- Location: LCCOMB_X45_Y30_N18
\KD01|RingBuffer1|MAC1|UA4bit_1|U3|U2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UA4bit_1|U3|U2|S~combout\ = \KD01|RingBuffer1|MAC1|UA4bit_1|U2|Co~combout\ $ (\KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q~q\ $ (((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\) # 
-- (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UA4bit_1|U2|Co~combout\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datac => \KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|MAC1|UA4bit_1|U3|U2|S~combout\);

-- Location: FF_X45_Y30_N19
\KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UA4bit_1|U3|U2|S~combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \KD01|RingBuffer1|MAC1|enable_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q~q\);

-- Location: LCCOMB_X45_Y30_N0
\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ = (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & !\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\);

-- Location: LCCOMB_X45_Y30_N26
\KD01|RingBuffer1|MAC1|UA4bit_1|U4|U2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UA4bit_1|U4|U2|S~combout\ = \KD01|RingBuffer1|MAC1|UR4bit_1|U3|Q~q\ $ (((\KD01|RingBuffer1|MAC1|UA4bit_1|U2|Co~combout\ & (\KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q~q\ & \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\)) # 
-- (!\KD01|RingBuffer1|MAC1|UA4bit_1|U2|Co~combout\ & (!\KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q~q\ & !\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UA4bit_1|U2|Co~combout\,
	datab => \KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q~q\,
	datac => \KD01|RingBuffer1|MAC1|UR4bit_1|U3|Q~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	combout => \KD01|RingBuffer1|MAC1|UA4bit_1|U4|U2|S~combout\);

-- Location: FF_X45_Y30_N27
\KD01|RingBuffer1|MAC1|UR4bit_1|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UA4bit_1|U4|U2|S~combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \KD01|RingBuffer1|MAC1|enable_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR4bit_1|U3|Q~q\);

-- Location: LCCOMB_X45_Y30_N20
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~1_combout\ = (\KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\) # ((\KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q~q\) # (\KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UR4bit_1|U0|Q~q\,
	datab => \KD01|RingBuffer1|MAC1|UR4bit_1|U1|Q~q\,
	datad => \KD01|RingBuffer1|MAC1|UR4bit_1|U2|Q~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X45_Y34_N6
\KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~0_combout\ = (!\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\ & (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ & (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ & 
-- !\KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	datad => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\,
	combout => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X45_Y34_N4
\KD01|OutputBuffer1|BC1|CurrentState.STATE_DONE_LOAD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|OutputBuffer1|BC1|CurrentState.STATE_DONE_LOAD~0_combout\ = (!\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\ & \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\,
	datad => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\,
	combout => \KD01|OutputBuffer1|BC1|CurrentState.STATE_DONE_LOAD~0_combout\);

-- Location: LCCOMB_X45_Y39_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X45_Y39_N26
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X44_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X44_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\);

-- Location: FF_X44_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X45_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X45_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X45_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X45_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X45_Y37_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X45_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X44_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X44_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X44_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X44_Y38_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X45_Y39_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: IOIBUF_X51_Y54_N1
\Mswitch~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mswitch,
	o => \Mswitch~input_o\);

-- Location: LCCOMB_X44_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \Mswitch~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: LCCOMB_X44_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X44_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X44_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X44_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: LCCOMB_X44_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X44_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: CLKCTRL_G10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\);

-- Location: LCCOMB_X60_Y37_N24
\SDC1|SR1|CUP1|U4|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|CUP1|U4|U0|Q~0_combout\ = !\SDC1|SR1|CUP1|U4|U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDC1|SR1|CUP1|U4|U0|Q~q\,
	combout => \SDC1|SR1|CUP1|U4|U0|Q~0_combout\);

-- Location: LCCOMB_X60_Y37_N10
\SDC1|SR1|CUP1|U4|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|CUP1|U4|U2|Q~0_combout\ = \SDC1|SR1|CUP1|U4|U2|Q~q\ $ (((\SDC1|SR1|CUP1|U4|U1|Q~q\ & \SDC1|SR1|CUP1|U4|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|CUP1|U4|U1|Q~q\,
	datac => \SDC1|SR1|CUP1|U4|U2|Q~q\,
	datad => \SDC1|SR1|CUP1|U4|U0|Q~q\,
	combout => \SDC1|SR1|CUP1|U4|U2|Q~0_combout\);

-- Location: FF_X60_Y37_N11
\SDC1|SR1|CUP1|U4|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SDC1|SR1|CUP1|U4|U2|Q~0_combout\,
	clrn => \SDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|CUP1|U4|U2|Q~q\);

-- Location: LCCOMB_X61_Y37_N22
\SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\ = (\SDC1|SR1|SC1|CurrentState.state_bit_0~q\ & !\SDC1|SR1|SC1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datac => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	combout => \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\);

-- Location: LCCOMB_X60_Y37_N8
\SDC1|SR1|SC1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\ = (\SDC1|SR1|CUP1|U4|U2|Q~q\ & (\SDC1|SR1|CUP1|U4|U0|Q~q\ & (!\SDC1|SR1|CUP1|U4|U1|Q~q\ & \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|CUP1|U4|U2|Q~q\,
	datab => \SDC1|SR1|CUP1|U4|U0|Q~q\,
	datac => \SDC1|SR1|CUP1|U4|U1|Q~q\,
	datad => \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	combout => \SDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X44_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X44_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X44_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X44_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LCCOMB_X61_Y37_N6
\SDC1|SR1|SR1|FF1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SR1|FF1|Q~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \SDC1|SR1|SR1|FF1|Q~feeder_combout\);

-- Location: FF_X61_Y37_N7
\SDC1|SR1|SR1|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SDC1|SR1|SR1|FF1|Q~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|SR1|FF1|Q~q\);

-- Location: LCCOMB_X61_Y37_N18
\SDC1|SR1|SR1|FF2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SR1|FF2|Q~feeder_combout\ = \SDC1|SR1|SR1|FF1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDC1|SR1|SR1|FF1|Q~q\,
	combout => \SDC1|SR1|SR1|FF2|Q~feeder_combout\);

-- Location: FF_X61_Y37_N19
\SDC1|SR1|SR1|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SDC1|SR1|SR1|FF2|Q~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|SR1|FF2|Q~q\);

-- Location: LCCOMB_X61_Y37_N8
\SDC1|SR1|SR1|FF3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SR1|FF3|Q~feeder_combout\ = \SDC1|SR1|SR1|FF2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDC1|SR1|SR1|FF2|Q~q\,
	combout => \SDC1|SR1|SR1|FF3|Q~feeder_combout\);

-- Location: FF_X61_Y37_N9
\SDC1|SR1|SR1|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SDC1|SR1|SR1|FF3|Q~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|SR1|FF3|Q~q\);

-- Location: LCCOMB_X61_Y37_N4
\SDC1|SR1|SR1|FF4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SR1|FF4|Q~feeder_combout\ = \SDC1|SR1|SR1|FF3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDC1|SR1|SR1|FF3|Q~q\,
	combout => \SDC1|SR1|SR1|FF4|Q~feeder_combout\);

-- Location: FF_X61_Y37_N5
\SDC1|SR1|SR1|FF4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SDC1|SR1|SR1|FF4|Q~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|SR1|FF4|Q~q\);

-- Location: FF_X61_Y37_N31
\SDC1|SR1|SR1|FF5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \SDC1|SR1|SR1|FF4|Q~q\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	ena => \SDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|SR1|FF5|Q~q\);

-- Location: LCCOMB_X61_Y37_N26
\SDC1|SR1|SC1|CurrentState.STATE_WAITING_DISPATCHER~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SC1|CurrentState.STATE_WAITING_DISPATCHER~0_combout\ = (\SDC1|SR1|SC1|CurrentState.state_bit_0~q\ & \SDC1|SR1|SC1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datac => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	combout => \SDC1|SR1|SC1|CurrentState.STATE_WAITING_DISPATCHER~0_combout\);

-- Location: LCCOMB_X61_Y37_N30
\SDC1|DC1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|CurrentState.state_bit_1~0_combout\ = (!\SDC1|DC1|CurrentState.state_bit_0~q\ & (((\SDC1|SR1|SR1|FF5|Q~q\) # (!\SDC1|SR1|SC1|CurrentState.state_bit_0~q\)) # (!\SDC1|SR1|SC1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datab => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datac => \SDC1|SR1|SR1|FF5|Q~q\,
	datad => \SDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	combout => \SDC1|DC1|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X66_Y38_N22
\SDC1|DC1|CurrentState.STATE_CLOSING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|CurrentState.STATE_CLOSING~0_combout\ = (!\SDC1|DC1|CurrentState.state_bit_0~q\ & \SDC1|DC1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datac => \SDC1|DC1|CurrentState.state_bit_1~q\,
	combout => \SDC1|DC1|CurrentState.STATE_CLOSING~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\Pswitch~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pswitch,
	o => \Pswitch~input_o\);

-- Location: LCCOMB_X45_Y28_N2
\DM1|UCLK|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~1_cout\ = CARRY((!\KD01|clk1|count\(0) & \KD01|clk1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|clk1|count\(0),
	datab => \KD01|clk1|count\(1),
	datad => VCC,
	cout => \DM1|UCLK|Add0~1_cout\);

-- Location: LCCOMB_X45_Y28_N4
\DM1|UCLK|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~2_combout\ = (\DM1|UCLK|count\(2) & (!\DM1|UCLK|Add0~1_cout\)) # (!\DM1|UCLK|count\(2) & ((\DM1|UCLK|Add0~1_cout\) # (GND)))
-- \DM1|UCLK|Add0~3\ = CARRY((!\DM1|UCLK|Add0~1_cout\) # (!\DM1|UCLK|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(2),
	datad => VCC,
	cin => \DM1|UCLK|Add0~1_cout\,
	combout => \DM1|UCLK|Add0~2_combout\,
	cout => \DM1|UCLK|Add0~3\);

-- Location: FF_X45_Y28_N5
\DM1|UCLK|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(2));

-- Location: LCCOMB_X45_Y28_N6
\DM1|UCLK|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~4_combout\ = (\DM1|UCLK|count\(3) & (\DM1|UCLK|Add0~3\ $ (GND))) # (!\DM1|UCLK|count\(3) & (!\DM1|UCLK|Add0~3\ & VCC))
-- \DM1|UCLK|Add0~5\ = CARRY((\DM1|UCLK|count\(3) & !\DM1|UCLK|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(3),
	datad => VCC,
	cin => \DM1|UCLK|Add0~3\,
	combout => \DM1|UCLK|Add0~4_combout\,
	cout => \DM1|UCLK|Add0~5\);

-- Location: FF_X45_Y28_N7
\DM1|UCLK|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(3));

-- Location: LCCOMB_X45_Y28_N8
\DM1|UCLK|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~6_combout\ = (\DM1|UCLK|count\(4) & (!\DM1|UCLK|Add0~5\)) # (!\DM1|UCLK|count\(4) & ((\DM1|UCLK|Add0~5\) # (GND)))
-- \DM1|UCLK|Add0~7\ = CARRY((!\DM1|UCLK|Add0~5\) # (!\DM1|UCLK|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(4),
	datad => VCC,
	cin => \DM1|UCLK|Add0~5\,
	combout => \DM1|UCLK|Add0~6_combout\,
	cout => \DM1|UCLK|Add0~7\);

-- Location: FF_X45_Y28_N9
\DM1|UCLK|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(4));

-- Location: LCCOMB_X45_Y28_N10
\DM1|UCLK|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~8_combout\ = (\DM1|UCLK|count\(5) & (\DM1|UCLK|Add0~7\ $ (GND))) # (!\DM1|UCLK|count\(5) & (!\DM1|UCLK|Add0~7\ & VCC))
-- \DM1|UCLK|Add0~9\ = CARRY((\DM1|UCLK|count\(5) & !\DM1|UCLK|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(5),
	datad => VCC,
	cin => \DM1|UCLK|Add0~7\,
	combout => \DM1|UCLK|Add0~8_combout\,
	cout => \DM1|UCLK|Add0~9\);

-- Location: FF_X45_Y28_N11
\DM1|UCLK|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(5));

-- Location: LCCOMB_X45_Y28_N12
\DM1|UCLK|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~10_combout\ = (\DM1|UCLK|count\(6) & (!\DM1|UCLK|Add0~9\)) # (!\DM1|UCLK|count\(6) & ((\DM1|UCLK|Add0~9\) # (GND)))
-- \DM1|UCLK|Add0~11\ = CARRY((!\DM1|UCLK|Add0~9\) # (!\DM1|UCLK|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(6),
	datad => VCC,
	cin => \DM1|UCLK|Add0~9\,
	combout => \DM1|UCLK|Add0~10_combout\,
	cout => \DM1|UCLK|Add0~11\);

-- Location: LCCOMB_X44_Y28_N24
\DM1|UCLK|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|count~0_combout\ = (\DM1|UCLK|Add0~10_combout\ & !\DM1|UCLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DM1|UCLK|Add0~10_combout\,
	datad => \DM1|UCLK|Equal0~9_combout\,
	combout => \DM1|UCLK|count~0_combout\);

-- Location: FF_X44_Y28_N25
\DM1|UCLK|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(6));

-- Location: LCCOMB_X45_Y28_N14
\DM1|UCLK|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~12_combout\ = (\DM1|UCLK|count\(7) & (\DM1|UCLK|Add0~11\ $ (GND))) # (!\DM1|UCLK|count\(7) & (!\DM1|UCLK|Add0~11\ & VCC))
-- \DM1|UCLK|Add0~13\ = CARRY((\DM1|UCLK|count\(7) & !\DM1|UCLK|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(7),
	datad => VCC,
	cin => \DM1|UCLK|Add0~11\,
	combout => \DM1|UCLK|Add0~12_combout\,
	cout => \DM1|UCLK|Add0~13\);

-- Location: FF_X45_Y28_N15
\DM1|UCLK|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(7));

-- Location: LCCOMB_X45_Y28_N16
\DM1|UCLK|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~14_combout\ = (\DM1|UCLK|count\(8) & (!\DM1|UCLK|Add0~13\)) # (!\DM1|UCLK|count\(8) & ((\DM1|UCLK|Add0~13\) # (GND)))
-- \DM1|UCLK|Add0~15\ = CARRY((!\DM1|UCLK|Add0~13\) # (!\DM1|UCLK|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(8),
	datad => VCC,
	cin => \DM1|UCLK|Add0~13\,
	combout => \DM1|UCLK|Add0~14_combout\,
	cout => \DM1|UCLK|Add0~15\);

-- Location: FF_X45_Y28_N17
\DM1|UCLK|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(8));

-- Location: LCCOMB_X45_Y28_N18
\DM1|UCLK|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~16_combout\ = (\DM1|UCLK|count\(9) & (\DM1|UCLK|Add0~15\ $ (GND))) # (!\DM1|UCLK|count\(9) & (!\DM1|UCLK|Add0~15\ & VCC))
-- \DM1|UCLK|Add0~17\ = CARRY((\DM1|UCLK|count\(9) & !\DM1|UCLK|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(9),
	datad => VCC,
	cin => \DM1|UCLK|Add0~15\,
	combout => \DM1|UCLK|Add0~16_combout\,
	cout => \DM1|UCLK|Add0~17\);

-- Location: LCCOMB_X44_Y28_N14
\DM1|UCLK|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|count~1_combout\ = (!\DM1|UCLK|Equal0~9_combout\ & \DM1|UCLK|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|Equal0~9_combout\,
	datad => \DM1|UCLK|Add0~16_combout\,
	combout => \DM1|UCLK|count~1_combout\);

-- Location: FF_X44_Y28_N15
\DM1|UCLK|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(9));

-- Location: LCCOMB_X45_Y28_N20
\DM1|UCLK|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~18_combout\ = (\DM1|UCLK|count\(10) & (!\DM1|UCLK|Add0~17\)) # (!\DM1|UCLK|count\(10) & ((\DM1|UCLK|Add0~17\) # (GND)))
-- \DM1|UCLK|Add0~19\ = CARRY((!\DM1|UCLK|Add0~17\) # (!\DM1|UCLK|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(10),
	datad => VCC,
	cin => \DM1|UCLK|Add0~17\,
	combout => \DM1|UCLK|Add0~18_combout\,
	cout => \DM1|UCLK|Add0~19\);

-- Location: FF_X45_Y28_N21
\DM1|UCLK|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(10));

-- Location: LCCOMB_X45_Y28_N22
\DM1|UCLK|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~20_combout\ = (\DM1|UCLK|count\(11) & (\DM1|UCLK|Add0~19\ $ (GND))) # (!\DM1|UCLK|count\(11) & (!\DM1|UCLK|Add0~19\ & VCC))
-- \DM1|UCLK|Add0~21\ = CARRY((\DM1|UCLK|count\(11) & !\DM1|UCLK|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(11),
	datad => VCC,
	cin => \DM1|UCLK|Add0~19\,
	combout => \DM1|UCLK|Add0~20_combout\,
	cout => \DM1|UCLK|Add0~21\);

-- Location: FF_X45_Y28_N23
\DM1|UCLK|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(11));

-- Location: LCCOMB_X45_Y28_N24
\DM1|UCLK|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~22_combout\ = (\DM1|UCLK|count\(12) & (!\DM1|UCLK|Add0~21\)) # (!\DM1|UCLK|count\(12) & ((\DM1|UCLK|Add0~21\) # (GND)))
-- \DM1|UCLK|Add0~23\ = CARRY((!\DM1|UCLK|Add0~21\) # (!\DM1|UCLK|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(12),
	datad => VCC,
	cin => \DM1|UCLK|Add0~21\,
	combout => \DM1|UCLK|Add0~22_combout\,
	cout => \DM1|UCLK|Add0~23\);

-- Location: FF_X45_Y28_N25
\DM1|UCLK|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(12));

-- Location: LCCOMB_X45_Y28_N26
\DM1|UCLK|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~24_combout\ = (\DM1|UCLK|count\(13) & (\DM1|UCLK|Add0~23\ $ (GND))) # (!\DM1|UCLK|count\(13) & (!\DM1|UCLK|Add0~23\ & VCC))
-- \DM1|UCLK|Add0~25\ = CARRY((\DM1|UCLK|count\(13) & !\DM1|UCLK|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(13),
	datad => VCC,
	cin => \DM1|UCLK|Add0~23\,
	combout => \DM1|UCLK|Add0~24_combout\,
	cout => \DM1|UCLK|Add0~25\);

-- Location: FF_X45_Y28_N27
\DM1|UCLK|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(13));

-- Location: LCCOMB_X45_Y28_N28
\DM1|UCLK|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~26_combout\ = (\DM1|UCLK|count\(14) & (!\DM1|UCLK|Add0~25\)) # (!\DM1|UCLK|count\(14) & ((\DM1|UCLK|Add0~25\) # (GND)))
-- \DM1|UCLK|Add0~27\ = CARRY((!\DM1|UCLK|Add0~25\) # (!\DM1|UCLK|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(14),
	datad => VCC,
	cin => \DM1|UCLK|Add0~25\,
	combout => \DM1|UCLK|Add0~26_combout\,
	cout => \DM1|UCLK|Add0~27\);

-- Location: LCCOMB_X44_Y28_N0
\DM1|UCLK|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|count~2_combout\ = (!\DM1|UCLK|Equal0~9_combout\ & \DM1|UCLK|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|Equal0~9_combout\,
	datad => \DM1|UCLK|Add0~26_combout\,
	combout => \DM1|UCLK|count~2_combout\);

-- Location: FF_X44_Y28_N1
\DM1|UCLK|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(14));

-- Location: LCCOMB_X45_Y28_N30
\DM1|UCLK|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~28_combout\ = (\DM1|UCLK|count\(15) & (\DM1|UCLK|Add0~27\ $ (GND))) # (!\DM1|UCLK|count\(15) & (!\DM1|UCLK|Add0~27\ & VCC))
-- \DM1|UCLK|Add0~29\ = CARRY((\DM1|UCLK|count\(15) & !\DM1|UCLK|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(15),
	datad => VCC,
	cin => \DM1|UCLK|Add0~27\,
	combout => \DM1|UCLK|Add0~28_combout\,
	cout => \DM1|UCLK|Add0~29\);

-- Location: FF_X45_Y28_N31
\DM1|UCLK|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(15));

-- Location: LCCOMB_X45_Y27_N0
\DM1|UCLK|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~30_combout\ = (\DM1|UCLK|count\(16) & (!\DM1|UCLK|Add0~29\)) # (!\DM1|UCLK|count\(16) & ((\DM1|UCLK|Add0~29\) # (GND)))
-- \DM1|UCLK|Add0~31\ = CARRY((!\DM1|UCLK|Add0~29\) # (!\DM1|UCLK|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(16),
	datad => VCC,
	cin => \DM1|UCLK|Add0~29\,
	combout => \DM1|UCLK|Add0~30_combout\,
	cout => \DM1|UCLK|Add0~31\);

-- Location: LCCOMB_X44_Y28_N20
\DM1|UCLK|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|count~3_combout\ = (!\DM1|UCLK|Equal0~9_combout\ & \DM1|UCLK|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|Equal0~9_combout\,
	datac => \DM1|UCLK|Add0~30_combout\,
	combout => \DM1|UCLK|count~3_combout\);

-- Location: FF_X44_Y28_N21
\DM1|UCLK|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(16));

-- Location: LCCOMB_X45_Y27_N2
\DM1|UCLK|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~32_combout\ = (\DM1|UCLK|count\(17) & (\DM1|UCLK|Add0~31\ $ (GND))) # (!\DM1|UCLK|count\(17) & (!\DM1|UCLK|Add0~31\ & VCC))
-- \DM1|UCLK|Add0~33\ = CARRY((\DM1|UCLK|count\(17) & !\DM1|UCLK|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(17),
	datad => VCC,
	cin => \DM1|UCLK|Add0~31\,
	combout => \DM1|UCLK|Add0~32_combout\,
	cout => \DM1|UCLK|Add0~33\);

-- Location: LCCOMB_X44_Y28_N22
\DM1|UCLK|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|count~4_combout\ = (!\DM1|UCLK|Equal0~9_combout\ & \DM1|UCLK|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|Equal0~9_combout\,
	datac => \DM1|UCLK|Add0~32_combout\,
	combout => \DM1|UCLK|count~4_combout\);

-- Location: FF_X44_Y28_N23
\DM1|UCLK|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(17));

-- Location: LCCOMB_X45_Y27_N4
\DM1|UCLK|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~34_combout\ = (\DM1|UCLK|count\(18) & (!\DM1|UCLK|Add0~33\)) # (!\DM1|UCLK|count\(18) & ((\DM1|UCLK|Add0~33\) # (GND)))
-- \DM1|UCLK|Add0~35\ = CARRY((!\DM1|UCLK|Add0~33\) # (!\DM1|UCLK|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(18),
	datad => VCC,
	cin => \DM1|UCLK|Add0~33\,
	combout => \DM1|UCLK|Add0~34_combout\,
	cout => \DM1|UCLK|Add0~35\);

-- Location: LCCOMB_X44_Y28_N16
\DM1|UCLK|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|count~5_combout\ = (!\DM1|UCLK|Equal0~9_combout\ & \DM1|UCLK|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|Equal0~9_combout\,
	datad => \DM1|UCLK|Add0~34_combout\,
	combout => \DM1|UCLK|count~5_combout\);

-- Location: FF_X44_Y28_N17
\DM1|UCLK|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(18));

-- Location: LCCOMB_X45_Y27_N6
\DM1|UCLK|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~36_combout\ = (\DM1|UCLK|count\(19) & (\DM1|UCLK|Add0~35\ $ (GND))) # (!\DM1|UCLK|count\(19) & (!\DM1|UCLK|Add0~35\ & VCC))
-- \DM1|UCLK|Add0~37\ = CARRY((\DM1|UCLK|count\(19) & !\DM1|UCLK|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(19),
	datad => VCC,
	cin => \DM1|UCLK|Add0~35\,
	combout => \DM1|UCLK|Add0~36_combout\,
	cout => \DM1|UCLK|Add0~37\);

-- Location: LCCOMB_X44_Y28_N10
\DM1|UCLK|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|count~6_combout\ = (!\DM1|UCLK|Equal0~9_combout\ & \DM1|UCLK|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|Equal0~9_combout\,
	datac => \DM1|UCLK|Add0~36_combout\,
	combout => \DM1|UCLK|count~6_combout\);

-- Location: FF_X44_Y28_N11
\DM1|UCLK|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(19));

-- Location: LCCOMB_X45_Y27_N8
\DM1|UCLK|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~38_combout\ = (\DM1|UCLK|count\(20) & (!\DM1|UCLK|Add0~37\)) # (!\DM1|UCLK|count\(20) & ((\DM1|UCLK|Add0~37\) # (GND)))
-- \DM1|UCLK|Add0~39\ = CARRY((!\DM1|UCLK|Add0~37\) # (!\DM1|UCLK|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(20),
	datad => VCC,
	cin => \DM1|UCLK|Add0~37\,
	combout => \DM1|UCLK|Add0~38_combout\,
	cout => \DM1|UCLK|Add0~39\);

-- Location: FF_X45_Y27_N9
\DM1|UCLK|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(20));

-- Location: LCCOMB_X45_Y27_N10
\DM1|UCLK|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~40_combout\ = (\DM1|UCLK|count\(21) & (\DM1|UCLK|Add0~39\ $ (GND))) # (!\DM1|UCLK|count\(21) & (!\DM1|UCLK|Add0~39\ & VCC))
-- \DM1|UCLK|Add0~41\ = CARRY((\DM1|UCLK|count\(21) & !\DM1|UCLK|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(21),
	datad => VCC,
	cin => \DM1|UCLK|Add0~39\,
	combout => \DM1|UCLK|Add0~40_combout\,
	cout => \DM1|UCLK|Add0~41\);

-- Location: FF_X45_Y27_N11
\DM1|UCLK|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(21));

-- Location: LCCOMB_X45_Y27_N12
\DM1|UCLK|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~42_combout\ = (\DM1|UCLK|count\(22) & (!\DM1|UCLK|Add0~41\)) # (!\DM1|UCLK|count\(22) & ((\DM1|UCLK|Add0~41\) # (GND)))
-- \DM1|UCLK|Add0~43\ = CARRY((!\DM1|UCLK|Add0~41\) # (!\DM1|UCLK|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(22),
	datad => VCC,
	cin => \DM1|UCLK|Add0~41\,
	combout => \DM1|UCLK|Add0~42_combout\,
	cout => \DM1|UCLK|Add0~43\);

-- Location: FF_X45_Y27_N13
\DM1|UCLK|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(22));

-- Location: LCCOMB_X45_Y27_N14
\DM1|UCLK|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~44_combout\ = (\DM1|UCLK|count\(23) & (\DM1|UCLK|Add0~43\ $ (GND))) # (!\DM1|UCLK|count\(23) & (!\DM1|UCLK|Add0~43\ & VCC))
-- \DM1|UCLK|Add0~45\ = CARRY((\DM1|UCLK|count\(23) & !\DM1|UCLK|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(23),
	datad => VCC,
	cin => \DM1|UCLK|Add0~43\,
	combout => \DM1|UCLK|Add0~44_combout\,
	cout => \DM1|UCLK|Add0~45\);

-- Location: FF_X45_Y27_N15
\DM1|UCLK|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(23));

-- Location: LCCOMB_X45_Y27_N16
\DM1|UCLK|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~46_combout\ = (\DM1|UCLK|count\(24) & (!\DM1|UCLK|Add0~45\)) # (!\DM1|UCLK|count\(24) & ((\DM1|UCLK|Add0~45\) # (GND)))
-- \DM1|UCLK|Add0~47\ = CARRY((!\DM1|UCLK|Add0~45\) # (!\DM1|UCLK|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(24),
	datad => VCC,
	cin => \DM1|UCLK|Add0~45\,
	combout => \DM1|UCLK|Add0~46_combout\,
	cout => \DM1|UCLK|Add0~47\);

-- Location: FF_X45_Y27_N17
\DM1|UCLK|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(24));

-- Location: LCCOMB_X45_Y27_N18
\DM1|UCLK|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~48_combout\ = (\DM1|UCLK|count\(25) & (\DM1|UCLK|Add0~47\ $ (GND))) # (!\DM1|UCLK|count\(25) & (!\DM1|UCLK|Add0~47\ & VCC))
-- \DM1|UCLK|Add0~49\ = CARRY((\DM1|UCLK|count\(25) & !\DM1|UCLK|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(25),
	datad => VCC,
	cin => \DM1|UCLK|Add0~47\,
	combout => \DM1|UCLK|Add0~48_combout\,
	cout => \DM1|UCLK|Add0~49\);

-- Location: FF_X45_Y27_N19
\DM1|UCLK|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(25));

-- Location: LCCOMB_X45_Y27_N20
\DM1|UCLK|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~50_combout\ = (\DM1|UCLK|count\(26) & (!\DM1|UCLK|Add0~49\)) # (!\DM1|UCLK|count\(26) & ((\DM1|UCLK|Add0~49\) # (GND)))
-- \DM1|UCLK|Add0~51\ = CARRY((!\DM1|UCLK|Add0~49\) # (!\DM1|UCLK|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(26),
	datad => VCC,
	cin => \DM1|UCLK|Add0~49\,
	combout => \DM1|UCLK|Add0~50_combout\,
	cout => \DM1|UCLK|Add0~51\);

-- Location: FF_X45_Y27_N21
\DM1|UCLK|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(26));

-- Location: LCCOMB_X45_Y27_N22
\DM1|UCLK|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~52_combout\ = (\DM1|UCLK|count\(27) & (\DM1|UCLK|Add0~51\ $ (GND))) # (!\DM1|UCLK|count\(27) & (!\DM1|UCLK|Add0~51\ & VCC))
-- \DM1|UCLK|Add0~53\ = CARRY((\DM1|UCLK|count\(27) & !\DM1|UCLK|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(27),
	datad => VCC,
	cin => \DM1|UCLK|Add0~51\,
	combout => \DM1|UCLK|Add0~52_combout\,
	cout => \DM1|UCLK|Add0~53\);

-- Location: FF_X45_Y27_N23
\DM1|UCLK|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(27));

-- Location: LCCOMB_X45_Y27_N24
\DM1|UCLK|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~54_combout\ = (\DM1|UCLK|count\(28) & (!\DM1|UCLK|Add0~53\)) # (!\DM1|UCLK|count\(28) & ((\DM1|UCLK|Add0~53\) # (GND)))
-- \DM1|UCLK|Add0~55\ = CARRY((!\DM1|UCLK|Add0~53\) # (!\DM1|UCLK|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(28),
	datad => VCC,
	cin => \DM1|UCLK|Add0~53\,
	combout => \DM1|UCLK|Add0~54_combout\,
	cout => \DM1|UCLK|Add0~55\);

-- Location: FF_X45_Y27_N25
\DM1|UCLK|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(28));

-- Location: LCCOMB_X45_Y27_N26
\DM1|UCLK|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~56_combout\ = (\DM1|UCLK|count\(29) & (\DM1|UCLK|Add0~55\ $ (GND))) # (!\DM1|UCLK|count\(29) & (!\DM1|UCLK|Add0~55\ & VCC))
-- \DM1|UCLK|Add0~57\ = CARRY((\DM1|UCLK|count\(29) & !\DM1|UCLK|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(29),
	datad => VCC,
	cin => \DM1|UCLK|Add0~55\,
	combout => \DM1|UCLK|Add0~56_combout\,
	cout => \DM1|UCLK|Add0~57\);

-- Location: FF_X45_Y27_N27
\DM1|UCLK|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(29));

-- Location: LCCOMB_X45_Y27_N28
\DM1|UCLK|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~58_combout\ = (\DM1|UCLK|count\(30) & (!\DM1|UCLK|Add0~57\)) # (!\DM1|UCLK|count\(30) & ((\DM1|UCLK|Add0~57\) # (GND)))
-- \DM1|UCLK|Add0~59\ = CARRY((!\DM1|UCLK|Add0~57\) # (!\DM1|UCLK|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DM1|UCLK|count\(30),
	datad => VCC,
	cin => \DM1|UCLK|Add0~57\,
	combout => \DM1|UCLK|Add0~58_combout\,
	cout => \DM1|UCLK|Add0~59\);

-- Location: FF_X45_Y27_N29
\DM1|UCLK|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(30));

-- Location: LCCOMB_X45_Y27_N30
\DM1|UCLK|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Add0~60_combout\ = \DM1|UCLK|count\(31) $ (!\DM1|UCLK|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(31),
	cin => \DM1|UCLK|Add0~59\,
	combout => \DM1|UCLK|Add0~60_combout\);

-- Location: FF_X45_Y27_N31
\DM1|UCLK|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|count\(31));

-- Location: LCCOMB_X44_Y27_N12
\DM1|UCLK|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~7_combout\ = (!\DM1|UCLK|count\(29) & (!\DM1|UCLK|count\(30) & (!\DM1|UCLK|count\(31) & !\DM1|UCLK|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(29),
	datab => \DM1|UCLK|count\(30),
	datac => \DM1|UCLK|count\(31),
	datad => \DM1|UCLK|count\(28),
	combout => \DM1|UCLK|Equal0~7_combout\);

-- Location: LCCOMB_X44_Y27_N24
\DM1|UCLK|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~5_combout\ = (!\DM1|UCLK|count\(22) & (!\DM1|UCLK|count\(20) & (!\DM1|UCLK|count\(21) & !\DM1|UCLK|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(22),
	datab => \DM1|UCLK|count\(20),
	datac => \DM1|UCLK|count\(21),
	datad => \DM1|UCLK|count\(23),
	combout => \DM1|UCLK|Equal0~5_combout\);

-- Location: LCCOMB_X44_Y28_N28
\DM1|UCLK|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~4_combout\ = (\DM1|UCLK|count\(19) & (\DM1|UCLK|count\(18) & (\DM1|UCLK|count\(17) & \DM1|UCLK|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(19),
	datab => \DM1|UCLK|count\(18),
	datac => \DM1|UCLK|count\(17),
	datad => \DM1|UCLK|count\(16),
	combout => \DM1|UCLK|Equal0~4_combout\);

-- Location: LCCOMB_X44_Y27_N10
\DM1|UCLK|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~6_combout\ = (!\DM1|UCLK|count\(25) & (!\DM1|UCLK|count\(24) & (!\DM1|UCLK|count\(26) & !\DM1|UCLK|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(25),
	datab => \DM1|UCLK|count\(24),
	datac => \DM1|UCLK|count\(26),
	datad => \DM1|UCLK|count\(27),
	combout => \DM1|UCLK|Equal0~6_combout\);

-- Location: LCCOMB_X44_Y27_N6
\DM1|UCLK|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~8_combout\ = (\DM1|UCLK|Equal0~7_combout\ & (\DM1|UCLK|Equal0~5_combout\ & (\DM1|UCLK|Equal0~4_combout\ & \DM1|UCLK|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|Equal0~7_combout\,
	datab => \DM1|UCLK|Equal0~5_combout\,
	datac => \DM1|UCLK|Equal0~4_combout\,
	datad => \DM1|UCLK|Equal0~6_combout\,
	combout => \DM1|UCLK|Equal0~8_combout\);

-- Location: LCCOMB_X45_Y28_N0
\DM1|UCLK|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~2_combout\ = (\DM1|UCLK|count\(9) & (!\DM1|UCLK|count\(8) & (!\DM1|UCLK|count\(11) & !\DM1|UCLK|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(9),
	datab => \DM1|UCLK|count\(8),
	datac => \DM1|UCLK|count\(11),
	datad => \DM1|UCLK|count\(10),
	combout => \DM1|UCLK|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y28_N26
\DM1|UCLK|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~3_combout\ = (!\DM1|UCLK|count\(13) & (\DM1|UCLK|count\(14) & (!\DM1|UCLK|count\(15) & !\DM1|UCLK|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(13),
	datab => \DM1|UCLK|count\(14),
	datac => \DM1|UCLK|count\(15),
	datad => \DM1|UCLK|count\(12),
	combout => \DM1|UCLK|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y28_N18
\DM1|UCLK|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~0_combout\ = (!\DM1|UCLK|count\(4) & (!\DM1|UCLK|count\(7) & (!\DM1|UCLK|count\(5) & \DM1|UCLK|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(4),
	datab => \DM1|UCLK|count\(7),
	datac => \DM1|UCLK|count\(5),
	datad => \DM1|UCLK|count\(6),
	combout => \DM1|UCLK|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y28_N12
\DM1|UCLK|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~1_combout\ = (!\DM1|UCLK|count\(3) & (\KD01|clk1|Equal0~0_combout\ & (\DM1|UCLK|Equal0~0_combout\ & !\DM1|UCLK|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|count\(3),
	datab => \KD01|clk1|Equal0~0_combout\,
	datac => \DM1|UCLK|Equal0~0_combout\,
	datad => \DM1|UCLK|count\(2),
	combout => \DM1|UCLK|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y28_N6
\DM1|UCLK|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|Equal0~9_combout\ = (\DM1|UCLK|Equal0~8_combout\ & (\DM1|UCLK|Equal0~2_combout\ & (\DM1|UCLK|Equal0~3_combout\ & \DM1|UCLK|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|UCLK|Equal0~8_combout\,
	datab => \DM1|UCLK|Equal0~2_combout\,
	datac => \DM1|UCLK|Equal0~3_combout\,
	datad => \DM1|UCLK|Equal0~1_combout\,
	combout => \DM1|UCLK|Equal0~9_combout\);

-- Location: LCCOMB_X44_Y24_N8
\DM1|UCLK|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|UCLK|tmp~0_combout\ = \DM1|UCLK|tmp~q\ $ (\DM1|UCLK|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DM1|UCLK|tmp~q\,
	datad => \DM1|UCLK|Equal0~9_combout\,
	combout => \DM1|UCLK|tmp~0_combout\);

-- Location: FF_X44_Y24_N9
\DM1|UCLK|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DM1|UCLK|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|UCLK|tmp~q\);

-- Location: CLKCTRL_G17
\DM1|UCLK|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DM1|UCLK|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DM1|UCLK|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X61_Y38_N12
\DM1|U6|cnt_atual_pl[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U6|cnt_atual_pl[0]~2_combout\ = (!\DM1|U6|U2|Q\(0) & !\DM1|shift_clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DM1|U6|U2|Q\(0),
	datad => \DM1|shift_clk~combout\,
	combout => \DM1|U6|cnt_atual_pl[0]~2_combout\);

-- Location: LCCOMB_X66_Y38_N0
\SDC1|DC1|Dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|Dout\(0) = (\SDC1|DC1|CurrentState.state_bit_2~q\) # ((!\SDC1|DC1|CurrentState.state_bit_1~q\ & \SDC1|DC1|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.state_bit_1~q\,
	datab => \SDC1|DC1|CurrentState.state_bit_2~q\,
	datac => \SDC1|DC1|CurrentState.state_bit_0~q\,
	combout => \SDC1|DC1|Dout\(0));

-- Location: LCCOMB_X70_Y41_N16
\DM1|U7|dataShift_in[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U7|dataShift_in[6]~8_combout\ = (\SDC1|DC1|Dout\(0) & ((\DM1|U7|U1|Q\(7)))) # (!\SDC1|DC1|Dout\(0) & (\DM1|U7|U1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|Dout\(0),
	datab => \DM1|U7|U1|Q\(5),
	datac => \DM1|U7|U1|Q\(7),
	combout => \DM1|U7|dataShift_in[6]~8_combout\);

-- Location: FF_X70_Y41_N17
\DM1|U7|U1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|shift_clk~clkctrl_outclk\,
	d => \DM1|U7|dataShift_in[6]~8_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U7|U1|Q\(6));

-- Location: LCCOMB_X70_Y41_N2
\DM1|U7|dataShift_in[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U7|dataShift_in[5]~3_combout\ = (\SDC1|DC1|Dout\(0) & (\DM1|U7|U1|Q\(6))) # (!\SDC1|DC1|Dout\(0) & ((\DM1|U7|U1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|Dout\(0),
	datab => \DM1|U7|U1|Q\(6),
	datad => \DM1|U7|U1|Q\(4),
	combout => \DM1|U7|dataShift_in[5]~3_combout\);

-- Location: FF_X70_Y41_N3
\DM1|U7|U1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|shift_clk~clkctrl_outclk\,
	d => \DM1|U7|dataShift_in[5]~3_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U7|U1|Q\(5));

-- Location: LCCOMB_X70_Y41_N28
\DM1|U7|dataShift_in[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U7|dataShift_in[4]~4_combout\ = (\SDC1|DC1|Dout\(0) & (\DM1|U7|U1|Q\(5))) # (!\SDC1|DC1|Dout\(0) & ((\DM1|U7|U1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|Dout\(0),
	datab => \DM1|U7|U1|Q\(5),
	datac => \DM1|U7|U1|Q\(3),
	combout => \DM1|U7|dataShift_in[4]~4_combout\);

-- Location: FF_X70_Y41_N29
\DM1|U7|U1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|shift_clk~clkctrl_outclk\,
	d => \DM1|U7|dataShift_in[4]~4_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U7|U1|Q\(4));

-- Location: LCCOMB_X70_Y41_N30
\DM1|U7|dataShift_in[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U7|dataShift_in[3]~5_combout\ = (\SDC1|DC1|Dout\(0) & ((\DM1|U7|U1|Q\(4)))) # (!\SDC1|DC1|Dout\(0) & (\DM1|U7|U1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|Dout\(0),
	datab => \DM1|U7|U1|Q\(2),
	datad => \DM1|U7|U1|Q\(4),
	combout => \DM1|U7|dataShift_in[3]~5_combout\);

-- Location: FF_X70_Y41_N31
\DM1|U7|U1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|shift_clk~clkctrl_outclk\,
	d => \DM1|U7|dataShift_in[3]~5_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U7|U1|Q\(3));

-- Location: LCCOMB_X70_Y41_N24
\DM1|U7|dataShift_in[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U7|dataShift_in[2]~1_combout\ = (\SDC1|DC1|Dout\(0) & ((\DM1|U7|U1|Q\(3)))) # (!\SDC1|DC1|Dout\(0) & (\DM1|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|Dout\(0),
	datab => \DM1|U7|U1|Q\(1),
	datac => \DM1|U7|U1|Q\(3),
	combout => \DM1|U7|dataShift_in[2]~1_combout\);

-- Location: FF_X70_Y41_N25
\DM1|U7|U1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|shift_clk~clkctrl_outclk\,
	d => \DM1|U7|dataShift_in[2]~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U7|U1|Q\(2));

-- Location: LCCOMB_X66_Y38_N24
\DM1|U7|dataShift_in[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U7|dataShift_in[0]~0_combout\ = (!\DM1|U7|U1|Q\(1) & ((\SDC1|DC1|CurrentState.state_bit_2~q\) # ((!\SDC1|DC1|CurrentState.state_bit_1~q\ & \SDC1|DC1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.state_bit_1~q\,
	datab => \SDC1|DC1|CurrentState.state_bit_2~q\,
	datac => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datad => \DM1|U7|U1|Q\(1),
	combout => \DM1|U7|dataShift_in[0]~0_combout\);

-- Location: FF_X66_Y38_N25
\DM1|U7|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|shift_clk~clkctrl_outclk\,
	d => \DM1|U7|dataShift_in[0]~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U7|U1|Q\(0));

-- Location: LCCOMB_X66_Y38_N10
\DM1|U7|dataShift_in[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U7|dataShift_in[1]~2_combout\ = (\SDC1|DC1|Dout\(0) & (\DM1|U7|U1|Q\(2))) # (!\SDC1|DC1|Dout\(0) & ((!\DM1|U7|U1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDC1|DC1|Dout\(0),
	datac => \DM1|U7|U1|Q\(2),
	datad => \DM1|U7|U1|Q\(0),
	combout => \DM1|U7|dataShift_in[1]~2_combout\);

-- Location: FF_X66_Y38_N11
\DM1|U7|U1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|shift_clk~clkctrl_outclk\,
	d => \DM1|U7|dataShift_in[1]~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U7|U1|Q\(1));

-- Location: LCCOMB_X66_Y38_N18
\DM1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|Equal0~0_combout\ = (!\DM1|U7|U1|Q\(1) & (!\DM1|U7|U1|Q\(0) & (!\DM1|U7|U1|Q\(2) & !\DM1|U7|U1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U7|U1|Q\(1),
	datab => \DM1|U7|U1|Q\(0),
	datac => \DM1|U7|U1|Q\(2),
	datad => \DM1|U7|U1|Q\(3),
	combout => \DM1|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y41_N0
\DM1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|Equal0~1_combout\ = (!\DM1|U7|U1|Q\(6) & (!\DM1|U7|U1|Q\(4) & (!\DM1|U7|U1|Q\(7) & !\DM1|U7|U1|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U7|U1|Q\(6),
	datab => \DM1|U7|U1|Q\(4),
	datac => \DM1|U7|U1|Q\(7),
	datad => \DM1|U7|U1|Q\(5),
	combout => \DM1|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y38_N2
\DM1|U7|dataShift_in[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U7|dataShift_in[8]~6_combout\ = (!\SDC1|DC1|CurrentState.state_bit_2~q\ & (\DM1|U7|U1|Q\(7) & ((\SDC1|DC1|CurrentState.state_bit_1~q\) # (!\SDC1|DC1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.state_bit_1~q\,
	datab => \SDC1|DC1|CurrentState.state_bit_2~q\,
	datac => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datad => \DM1|U7|U1|Q\(7),
	combout => \DM1|U7|dataShift_in[8]~6_combout\);

-- Location: FF_X66_Y38_N3
\DM1|U7|U1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|shift_clk~clkctrl_outclk\,
	d => \DM1|U7|dataShift_in[8]~6_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U7|U1|Q\(8));

-- Location: LCCOMB_X66_Y38_N20
\SDC1|DC1|OnOff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|OnOff~0_combout\ = (\Pswitch~input_o\ & (((\DM1|U7|U1|Q\(8)) # (!\DM1|Equal0~1_combout\)) # (!\DM1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pswitch~input_o\,
	datab => \DM1|Equal0~0_combout\,
	datac => \DM1|Equal0~1_combout\,
	datad => \DM1|U7|U1|Q\(8),
	combout => \SDC1|DC1|OnOff~0_combout\);

-- Location: LCCOMB_X66_Y38_N6
\SDC1|DC1|OnOff~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|OnOff~1_combout\ = (\SDC1|DC1|CurrentState.state_bit_2~q\ & ((\SDC1|DC1|OnOff~0_combout\) # ((!\SDC1|DC1|CurrentState.state_bit_1~q\ & \SDC1|DC1|CurrentState.state_bit_0~q\)))) # (!\SDC1|DC1|CurrentState.state_bit_2~q\ & 
-- (\SDC1|DC1|CurrentState.state_bit_1~q\ $ ((\SDC1|DC1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.state_bit_1~q\,
	datab => \SDC1|DC1|CurrentState.state_bit_2~q\,
	datac => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datad => \SDC1|DC1|OnOff~0_combout\,
	combout => \SDC1|DC1|OnOff~1_combout\);

-- Location: FF_X61_Y38_N13
\DM1|U6|U2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|UCLK|tmp~clkctrl_outclk\,
	d => \DM1|U6|cnt_atual_pl[0]~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U6|U2|Q\(0));

-- Location: LCCOMB_X61_Y38_N16
\DM1|U6|cnt_atual_pl[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U6|cnt_atual_pl[1]~4_combout\ = (\DM1|shift_clk~combout\ & (\SDC1|SR1|SR1|FF4|Q~q\)) # (!\DM1|shift_clk~combout\ & ((\DM1|U6|U2|Q\(1) $ (\DM1|U6|U2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|SR1|FF4|Q~q\,
	datab => \DM1|shift_clk~combout\,
	datac => \DM1|U6|U2|Q\(1),
	datad => \DM1|U6|U2|Q\(0),
	combout => \DM1|U6|cnt_atual_pl[1]~4_combout\);

-- Location: FF_X61_Y38_N17
\DM1|U6|U2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|UCLK|tmp~clkctrl_outclk\,
	d => \DM1|U6|cnt_atual_pl[1]~4_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U6|U2|Q\(1));

-- Location: LCCOMB_X61_Y38_N8
\DM1|U6|U1|SC:2:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U6|U1|SC:2:U1|S~combout\ = \DM1|U6|U2|Q\(2) $ (((\DM1|U6|U2|Q\(0) & \DM1|U6|U2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U6|U2|Q\(0),
	datac => \DM1|U6|U2|Q\(2),
	datad => \DM1|U6|U2|Q\(1),
	combout => \DM1|U6|U1|SC:2:U1|S~combout\);

-- Location: LCCOMB_X61_Y38_N26
\DM1|U6|cnt_atual_pl[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U6|cnt_atual_pl[2]~1_combout\ = (\DM1|shift_clk~combout\ & (\SDC1|SR1|SR1|FF3|Q~q\)) # (!\DM1|shift_clk~combout\ & ((\DM1|U6|U1|SC:2:U1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|SR1|FF3|Q~q\,
	datac => \DM1|U6|U1|SC:2:U1|S~combout\,
	datad => \DM1|shift_clk~combout\,
	combout => \DM1|U6|cnt_atual_pl[2]~1_combout\);

-- Location: FF_X61_Y38_N27
\DM1|U6|U2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|UCLK|tmp~clkctrl_outclk\,
	d => \DM1|U6|cnt_atual_pl[2]~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U6|U2|Q\(2));

-- Location: LCCOMB_X61_Y38_N10
\DM1|U6|U1|SC:3:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U6|U1|SC:3:U1|S~combout\ = \DM1|U6|U2|Q\(3) $ (((\DM1|U6|U2|Q\(0) & (\DM1|U6|U2|Q\(1) & \DM1|U6|U2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U6|U2|Q\(0),
	datab => \DM1|U6|U2|Q\(1),
	datac => \DM1|U6|U2|Q\(2),
	datad => \DM1|U6|U2|Q\(3),
	combout => \DM1|U6|U1|SC:3:U1|S~combout\);

-- Location: LCCOMB_X61_Y38_N6
\DM1|U6|cnt_atual_pl[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U6|cnt_atual_pl[3]~3_combout\ = (\DM1|shift_clk~combout\ & (\SDC1|SR1|SR1|FF2|Q~q\)) # (!\DM1|shift_clk~combout\ & ((\DM1|U6|U1|SC:3:U1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|SR1|FF2|Q~q\,
	datab => \DM1|shift_clk~combout\,
	datad => \DM1|U6|U1|SC:3:U1|S~combout\,
	combout => \DM1|U6|cnt_atual_pl[3]~3_combout\);

-- Location: FF_X61_Y38_N7
\DM1|U6|U2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|UCLK|tmp~clkctrl_outclk\,
	d => \DM1|U6|cnt_atual_pl[3]~3_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U6|U2|Q\(3));

-- Location: LCCOMB_X61_Y38_N18
\DM1|shift_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|shift_clk~0_combout\ = (\DM1|U6|U2|Q\(1) & \DM1|U6|U2|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DM1|U6|U2|Q\(1),
	datad => \DM1|U6|U2|Q\(3),
	combout => \DM1|shift_clk~0_combout\);

-- Location: LCCOMB_X61_Y38_N22
\DM1|shift_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|shift_clk~2_combout\ = (\DM1|U6|U2|Q\(0) & (\DM1|U6|U2|Q\(1) & (\DM1|U6|U2|Q\(2) & \DM1|U6|U2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U6|U2|Q\(0),
	datab => \DM1|U6|U2|Q\(1),
	datac => \DM1|U6|U2|Q\(2),
	datad => \DM1|U6|U2|Q\(3),
	combout => \DM1|shift_clk~2_combout\);

-- Location: LCCOMB_X61_Y38_N24
\DM1|U6|cnt_atual_pl[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U6|cnt_atual_pl[4]~0_combout\ = (\DM1|shift_clk~combout\ & (((\SDC1|SR1|SR1|FF1|Q~q\)))) # (!\DM1|shift_clk~combout\ & (\DM1|shift_clk~2_combout\ $ (((\DM1|U6|U2|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|shift_clk~2_combout\,
	datab => \SDC1|SR1|SR1|FF1|Q~q\,
	datac => \DM1|U6|U2|Q\(4),
	datad => \DM1|shift_clk~combout\,
	combout => \DM1|U6|cnt_atual_pl[4]~0_combout\);

-- Location: FF_X61_Y38_N25
\DM1|U6|U2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|UCLK|tmp~clkctrl_outclk\,
	d => \DM1|U6|cnt_atual_pl[4]~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U6|U2|Q\(4));

-- Location: LCCOMB_X61_Y38_N28
\DM1|shift_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|shift_clk~combout\ = LCELL((\DM1|U6|U2|Q\(0) & (\DM1|shift_clk~0_combout\ & (\DM1|U6|U2|Q\(2) & \DM1|U6|U2|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U6|U2|Q\(0),
	datab => \DM1|shift_clk~0_combout\,
	datac => \DM1|U6|U2|Q\(2),
	datad => \DM1|U6|U2|Q\(4),
	combout => \DM1|shift_clk~combout\);

-- Location: CLKCTRL_G6
\DM1|shift_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DM1|shift_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DM1|shift_clk~clkctrl_outclk\);

-- Location: LCCOMB_X70_Y41_N22
\DM1|U7|dataShift_in[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U7|dataShift_in[7]~7_combout\ = (\SDC1|DC1|Dout\(0) & (\DM1|U7|U1|Q\(8))) # (!\SDC1|DC1|Dout\(0) & ((\DM1|U7|U1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|Dout\(0),
	datac => \DM1|U7|U1|Q\(8),
	datad => \DM1|U7|U1|Q\(6),
	combout => \DM1|U7|dataShift_in[7]~7_combout\);

-- Location: FF_X70_Y41_N23
\DM1|U7|U1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DM1|shift_clk~clkctrl_outclk\,
	d => \DM1|U7|dataShift_in[7]~7_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \SDC1|DC1|OnOff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DM1|U7|U1|Q\(7));

-- Location: LCCOMB_X70_Y41_N18
\DM1|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|Equal1~3_combout\ = (\DM1|U7|U1|Q\(3) & (\DM1|U7|U1|Q\(8) & (\DM1|U7|U1|Q\(1) & \DM1|U7|U1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U7|U1|Q\(3),
	datab => \DM1|U7|U1|Q\(8),
	datac => \DM1|U7|U1|Q\(1),
	datad => \DM1|U7|U1|Q\(2),
	combout => \DM1|Equal1~3_combout\);

-- Location: LCCOMB_X70_Y41_N4
\DM1|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|Equal1~4_combout\ = (\DM1|U7|U1|Q\(4) & (\DM1|U7|U1|Q\(6) & \DM1|U7|U1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DM1|U7|U1|Q\(4),
	datac => \DM1|U7|U1|Q\(6),
	datad => \DM1|U7|U1|Q\(5),
	combout => \DM1|Equal1~4_combout\);

-- Location: LCCOMB_X70_Y41_N14
\DM1|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|Equal1~5_combout\ = (\DM1|U7|U1|Q\(7) & (\DM1|Equal1~3_combout\ & (\DM1|Equal1~4_combout\ & !\DM1|U7|U1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U7|U1|Q\(7),
	datab => \DM1|Equal1~3_combout\,
	datac => \DM1|Equal1~4_combout\,
	datad => \DM1|U7|U1|Q\(0),
	combout => \DM1|Equal1~5_combout\);

-- Location: LCCOMB_X66_Y38_N8
\SDC1|DC1|CurrentState.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|CurrentState.state_bit_2~0_combout\ = (\SDC1|DC1|CurrentState.STATE_CLOSING~0_combout\ & (\Pswitch~input_o\ & ((\SDC1|DC1|CurrentState.state_bit_2~q\) # (!\DM1|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.STATE_CLOSING~0_combout\,
	datab => \Pswitch~input_o\,
	datac => \SDC1|DC1|CurrentState.state_bit_2~q\,
	datad => \DM1|Equal1~5_combout\,
	combout => \SDC1|DC1|CurrentState.state_bit_2~0_combout\);

-- Location: FF_X66_Y38_N9
\SDC1|DC1|CurrentState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SDC1|DC1|CurrentState.state_bit_2~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|DC1|CurrentState.state_bit_2~q\);

-- Location: LCCOMB_X66_Y38_N26
\SDC1|DC1|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|CurrentState.state_bit_1~1_combout\ = (\SDC1|DC1|CurrentState.state_bit_2~q\ & (((\SDC1|DC1|CurrentState.state_bit_0~q\) # (!\SDC1|DC1|CurrentState.state_bit_1~q\)))) # (!\SDC1|DC1|CurrentState.state_bit_2~q\ & 
-- (\SDC1|DC1|CurrentState.state_bit_1~0_combout\ & ((!\SDC1|DC1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.state_bit_1~0_combout\,
	datab => \SDC1|DC1|CurrentState.state_bit_2~q\,
	datac => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datad => \SDC1|DC1|CurrentState.state_bit_1~q\,
	combout => \SDC1|DC1|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X61_Y37_N16
\SDC1|DC1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|CurrentState.state_bit_0~0_combout\ = ((\SDC1|SR1|SC1|CurrentState.state_bit_0~q\ & \SDC1|SR1|SC1|CurrentState.state_bit_1~q\)) # (!\SDC1|DC1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datac => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datad => \SDC1|DC1|CurrentState.state_bit_1~q\,
	combout => \SDC1|DC1|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X66_Y38_N12
\SDC1|DC1|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|CurrentState.state_bit_1~2_combout\ = (!\SDC1|DC1|CurrentState.state_bit_1~q\ & (((\DM1|U7|U1|Q\(8)) # (!\DM1|Equal0~1_combout\)) # (!\DM1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.state_bit_1~q\,
	datab => \DM1|Equal0~0_combout\,
	datac => \DM1|Equal0~1_combout\,
	datad => \DM1|U7|U1|Q\(8),
	combout => \SDC1|DC1|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X66_Y38_N28
\SDC1|DC1|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|CurrentState.state_bit_1~3_combout\ = (!\SDC1|DC1|CurrentState.state_bit_1~1_combout\ & (((\SDC1|DC1|CurrentState.state_bit_0~0_combout\ & !\SDC1|DC1|CurrentState.state_bit_1~2_combout\)) # (!\SDC1|DC1|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.state_bit_1~1_combout\,
	datab => \SDC1|DC1|CurrentState.state_bit_0~0_combout\,
	datac => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datad => \SDC1|DC1|CurrentState.state_bit_1~2_combout\,
	combout => \SDC1|DC1|CurrentState.state_bit_1~3_combout\);

-- Location: FF_X66_Y38_N29
\SDC1|DC1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SDC1|DC1|CurrentState.state_bit_1~3_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|DC1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X61_Y37_N20
\SDC1|DC1|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|CurrentState.state_bit_0~1_combout\ = (\SDC1|DC1|CurrentState.state_bit_0~q\ & (((\SDC1|SR1|SC1|CurrentState.STATE_WAITING_DISPATCHER~0_combout\) # (!\SDC1|DC1|CurrentState.state_bit_1~q\)))) # (!\SDC1|DC1|CurrentState.state_bit_0~q\ & 
-- (\SDC1|SR1|SR1|FF5|Q~q\ & (\SDC1|SR1|SC1|CurrentState.STATE_WAITING_DISPATCHER~0_combout\ & !\SDC1|DC1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|SR1|FF5|Q~q\,
	datab => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datac => \SDC1|SR1|SC1|CurrentState.STATE_WAITING_DISPATCHER~0_combout\,
	datad => \SDC1|DC1|CurrentState.state_bit_1~q\,
	combout => \SDC1|DC1|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X66_Y38_N30
\SDC1|DC1|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|DC1|CurrentState.state_bit_0~2_combout\ = (\SDC1|DC1|CurrentState.state_bit_0~1_combout\ & (((\SDC1|DC1|CurrentState.STATE_CLOSING~0_combout\)) # (!\SDC1|DC1|CurrentState.state_bit_2~q\))) # (!\SDC1|DC1|CurrentState.state_bit_0~1_combout\ & 
-- (!\SDC1|DC1|CurrentState.state_bit_2~q\ & (\SDC1|DC1|CurrentState.STATE_CLOSING~0_combout\ & \DM1|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|DC1|CurrentState.state_bit_0~1_combout\,
	datab => \SDC1|DC1|CurrentState.state_bit_2~q\,
	datac => \SDC1|DC1|CurrentState.STATE_CLOSING~0_combout\,
	datad => \DM1|Equal1~5_combout\,
	combout => \SDC1|DC1|CurrentState.state_bit_0~2_combout\);

-- Location: FF_X66_Y38_N31
\SDC1|DC1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SDC1|DC1|CurrentState.state_bit_0~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|DC1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X61_Y37_N24
\SDC1|SR1|SC1|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\ = (\SDC1|SR1|SC1|CurrentState.state_bit_1~q\ & (\SDC1|SR1|SC1|CurrentState.state_bit_0~q\ & ((!\SDC1|DC1|CurrentState.state_bit_1~q\) # (!\SDC1|DC1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datab => \SDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datac => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datad => \SDC1|DC1|CurrentState.state_bit_1~q\,
	combout => \SDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X61_Y37_N28
\SDC1|SR1|SC1|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SC1|CurrentState.state_bit_0~2_combout\ = (\SDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\) # ((\SDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & !\SDC1|SR1|SC1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datac => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datad => \SDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\,
	combout => \SDC1|SR1|SC1|CurrentState.state_bit_0~2_combout\);

-- Location: FF_X61_Y37_N29
\SDC1|SR1|SC1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SDC1|SR1|SC1|CurrentState.state_bit_0~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|SC1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X61_Y37_N2
\SDC1|SR1|SC1|CurrentState.STATE_WAITING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SC1|CurrentState.STATE_WAITING~0_combout\ = (!\SDC1|SR1|SC1|CurrentState.state_bit_0~q\ & !\SDC1|SR1|SC1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datac => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	combout => \SDC1|SR1|SC1|CurrentState.STATE_WAITING~0_combout\);

-- Location: CLKCTRL_G5
\SDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_outclk\);

-- Location: FF_X60_Y37_N25
\SDC1|SR1|CUP1|U4|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SDC1|SR1|CUP1|U4|U0|Q~0_combout\,
	clrn => \SDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|CUP1|U4|U0|Q~q\);

-- Location: LCCOMB_X60_Y37_N12
\SDC1|SR1|CUP1|U4|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|CUP1|U4|U1|Q~0_combout\ = \SDC1|SR1|CUP1|U4|U1|Q~q\ $ (\SDC1|SR1|CUP1|U4|U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDC1|SR1|CUP1|U4|U1|Q~q\,
	datad => \SDC1|SR1|CUP1|U4|U0|Q~q\,
	combout => \SDC1|SR1|CUP1|U4|U1|Q~0_combout\);

-- Location: FF_X60_Y37_N13
\SDC1|SR1|CUP1|U4|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SDC1|SR1|CUP1|U4|U1|Q~0_combout\,
	clrn => \SDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|CUP1|U4|U1|Q~q\);

-- Location: LCCOMB_X60_Y37_N14
\SDC1|SR1|SC1|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SC1|CurrentState.state_bit_1~1_combout\ = (!\SDC1|SR1|CUP1|U4|U1|Q~q\ & (\SDC1|SR1|CUP1|U4|U0|Q~q\ & 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & \SDC1|SR1|CUP1|U4|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|CUP1|U4|U1|Q~q\,
	datab => \SDC1|SR1|CUP1|U4|U0|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datad => \SDC1|SR1|CUP1|U4|U2|Q~q\,
	combout => \SDC1|SR1|SC1|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X61_Y37_N10
\SDC1|SR1|SC1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\ = (\SDC1|SR1|SC1|CurrentState.state_bit_1~q\ & (\SDC1|DC1|CurrentState.state_bit_0~q\ & \SDC1|DC1|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datac => \SDC1|DC1|CurrentState.state_bit_0~q\,
	datad => \SDC1|DC1|CurrentState.state_bit_1~q\,
	combout => \SDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X61_Y37_N0
\SDC1|SR1|SC1|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDC1|SR1|SC1|CurrentState.state_bit_1~2_combout\ = (\SDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\) # ((\SDC1|SR1|SC1|CurrentState.state_bit_0~q\ & ((\SDC1|SR1|SC1|CurrentState.state_bit_1~1_combout\) # (\SDC1|SR1|SC1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDC1|SR1|SC1|CurrentState.state_bit_1~1_combout\,
	datab => \SDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datac => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datad => \SDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\,
	combout => \SDC1|SR1|SC1|CurrentState.state_bit_1~2_combout\);

-- Location: FF_X61_Y37_N1
\SDC1|SR1|SC1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SDC1|SR1|SC1|CurrentState.state_bit_1~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X44_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datac => \SDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X44_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X44_Y37_N8
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X44_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datab => \~GND~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X44_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X44_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|OutputBuffer1|BC1|CurrentState.STATE_DONE_LOAD~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X44_Y37_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X46_Y31_N12
\KD01|RingBuffer1|RBC1|CurrentState.STATE_NEW~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.STATE_NEW~0_combout\ = (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ & \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.STATE_NEW~0_combout\);

-- Location: LCCOMB_X46_Y31_N10
\KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~0_combout\ = \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\ $ (((!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ & 
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\,
	datac => \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~0_combout\);

-- Location: FF_X46_Y31_N11
\KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\);

-- Location: LCCOMB_X46_Y31_N26
\KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~0_combout\ = \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~q\ $ (((\KD01|RingBuffer1|RBC1|CurrentState.STATE_NEW~0_combout\ & \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.STATE_NEW~0_combout\,
	datac => \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~q\,
	datad => \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\,
	combout => \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~0_combout\);

-- Location: FF_X46_Y31_N27
\KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~q\);

-- Location: LCCOMB_X46_Y31_N4
\KD01|RingBuffer1|RBC1|selPG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|selPG~0_combout\ = (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ & ((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\) # (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|RBC1|selPG~0_combout\);

-- Location: LCCOMB_X46_Y31_N24
\KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~0_combout\ = \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\ $ (((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & !\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datac => \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~0_combout\);

-- Location: FF_X46_Y31_N25
\KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\);

-- Location: LCCOMB_X46_Y31_N0
\KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~0_combout\ = \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~q\ $ (((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & (\KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\ & !\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datab => \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\,
	datac => \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~0_combout\);

-- Location: FF_X46_Y31_N1
\KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~q\);

-- Location: LCCOMB_X46_Y31_N20
\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ = (\KD01|RingBuffer1|RBC1|selPG~0_combout\ & ((\KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~q\))) # (!\KD01|RingBuffer1|RBC1|selPG~0_combout\ & (\KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~q\,
	datac => \KD01|RingBuffer1|RBC1|selPG~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~q\,
	combout => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\);

-- Location: LCCOMB_X45_Y29_N24
\KD01|KD01|ks01|Counter1|U1|U1|U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|ks01|Counter1|U1|U1|U1|S~combout\ = \KD01|KD01|ks01|Counter1|U4|U0|Q~q\ $ (((!\KD01|KD01|ks01|PEnc1|V~0_combout\ & !\KD01|KD01|kc01|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|PEnc1|V~0_combout\,
	datac => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	datad => \KD01|KD01|kc01|CurrentState.state_bit_0~q\,
	combout => \KD01|KD01|ks01|Counter1|U1|U1|U1|S~combout\);

-- Location: FF_X45_Y29_N25
\KD01|KD01|ks01|Counter1|U4|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|KD01|ks01|Counter1|U1|U1|U1|S~combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\);

-- Location: LCCOMB_X45_Y29_N26
\KD01|KD01|ks01|Counter1|U1|U2|U2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|ks01|Counter1|U1|U2|U2|S~combout\ = \KD01|KD01|ks01|Counter1|U4|U1|Q~q\ $ (((!\KD01|KD01|kc01|CurrentState.state_bit_0~q\ & (!\KD01|KD01|ks01|PEnc1|V~0_combout\ & \KD01|KD01|ks01|Counter1|U4|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|kc01|CurrentState.state_bit_0~q\,
	datab => \KD01|KD01|ks01|PEnc1|V~0_combout\,
	datac => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datad => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	combout => \KD01|KD01|ks01|Counter1|U1|U2|U2|S~combout\);

-- Location: FF_X45_Y29_N27
\KD01|KD01|ks01|Counter1|U4|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|KD01|ks01|Counter1|U1|U2|U2|S~combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\);

-- Location: LCCOMB_X46_Y31_N8
\KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~0_combout\ = \KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~q\ $ (((\KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~q\ & (\KD01|RingBuffer1|RBC1|CurrentState.STATE_NEW~0_combout\ & \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UR3bit_1|U1|Q~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.STATE_NEW~0_combout\,
	datac => \KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~q\,
	datad => \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\,
	combout => \KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~0_combout\);

-- Location: FF_X46_Y31_N9
\KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~q\);

-- Location: LCCOMB_X46_Y31_N6
\KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~0_combout\ = \KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~q\ $ (((\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ & (\KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~q\ & \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	datab => \KD01|RingBuffer1|MAC1|UR3bit_2|U1|Q~q\,
	datac => \KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~q\,
	datad => \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\,
	combout => \KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~0_combout\);

-- Location: FF_X46_Y31_N7
\KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~q\);

-- Location: LCCOMB_X46_Y31_N2
\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ = (\KD01|RingBuffer1|RBC1|selPG~0_combout\ & ((\KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~q\))) # (!\KD01|RingBuffer1|RBC1|selPG~0_combout\ & (\KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|RingBuffer1|MAC1|UR3bit_1|U2|Q~q\,
	datac => \KD01|RingBuffer1|RBC1|selPG~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UR3bit_2|U2|Q~q\,
	combout => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\);

-- Location: LCCOMB_X46_Y31_N22
\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ = (\KD01|RingBuffer1|RBC1|selPG~0_combout\ & ((\KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\))) # (!\KD01|RingBuffer1|RBC1|selPG~0_combout\ & (\KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UR3bit_1|U0|Q~q\,
	datac => \KD01|RingBuffer1|RBC1|selPG~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UR3bit_2|U0|Q~q\,
	combout => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\);

-- Location: LCCOMB_X45_Y35_N8
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ & \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G13
\rtl~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X42_Y29_N0
\KD01|RingBuffer1|RAM1|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~7_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~7_combout\);

-- Location: LCCOMB_X45_Y35_N10
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ & !\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G11
\rtl~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X43_Y30_N12
\KD01|RingBuffer1|RAM1|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~3_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~3_combout\);

-- Location: LCCOMB_X43_Y30_N10
\KD01|RingBuffer1|RAM1|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~49_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & 
-- ((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & (\KD01|RingBuffer1|RAM1|ram~7_combout\)) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & ((\KD01|RingBuffer1|RAM1|ram~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~7_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datad => \KD01|RingBuffer1|RAM1|ram~3_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~49_combout\);

-- Location: LCCOMB_X45_Y35_N28
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ & \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G3
\rtl~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X43_Y29_N10
\KD01|RingBuffer1|RAM1|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~15_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~15_combout\);

-- Location: LCCOMB_X45_Y35_N22
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ & !\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G4
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X42_Y30_N10
\KD01|RingBuffer1|RAM1|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~11_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~11_combout\);

-- Location: LCCOMB_X43_Y30_N20
\KD01|RingBuffer1|RAM1|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~50_combout\ = (\KD01|RingBuffer1|RAM1|ram~49_combout\ & ((\KD01|RingBuffer1|RAM1|ram~15_combout\) # ((!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\)))) # (!\KD01|RingBuffer1|RAM1|ram~49_combout\ & 
-- (((\KD01|RingBuffer1|RAM1|ram~11_combout\ & \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~49_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~15_combout\,
	datac => \KD01|RingBuffer1|RAM1|ram~11_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~50_combout\);

-- Location: LCCOMB_X45_Y35_N30
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ & \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G9
\rtl~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X42_Y30_N0
\KD01|RingBuffer1|RAM1|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~23_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~23_combout\);

-- Location: LCCOMB_X45_Y35_N20
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ & \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G0
\rtl~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X43_Y30_N18
\KD01|RingBuffer1|RAM1|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7clkctrl_outclk\,
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datad => \KD01|RingBuffer1|RAM1|ram~31_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~31_combout\);

-- Location: LCCOMB_X45_Y35_N24
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ & !\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G8
\rtl~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X43_Y29_N0
\KD01|RingBuffer1|RAM1|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~27_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~27_combout\);

-- Location: LCCOMB_X45_Y35_N2
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\ & !\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.STATE_PUT~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G12
\rtl~6clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X43_Y30_N16
\KD01|RingBuffer1|RAM1|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~19_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~19_combout\);

-- Location: LCCOMB_X43_Y30_N22
\KD01|RingBuffer1|RAM1|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~47_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & ((\KD01|RingBuffer1|RAM1|ram~27_combout\) # ((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & 
-- (((!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & \KD01|RingBuffer1|RAM1|ram~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~27_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datad => \KD01|RingBuffer1|RAM1|ram~19_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~47_combout\);

-- Location: LCCOMB_X43_Y30_N8
\KD01|RingBuffer1|RAM1|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~48_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & ((\KD01|RingBuffer1|RAM1|ram~47_combout\ & ((\KD01|RingBuffer1|RAM1|ram~31_combout\))) # (!\KD01|RingBuffer1|RAM1|ram~47_combout\ & 
-- (\KD01|RingBuffer1|RAM1|ram~23_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & (((\KD01|RingBuffer1|RAM1|ram~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~23_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~31_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datad => \KD01|RingBuffer1|RAM1|ram~47_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~48_combout\);

-- Location: LCCOMB_X44_Y30_N12
\KD01|RingBuffer1|RAM1|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~51_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & ((\KD01|RingBuffer1|RAM1|ram~48_combout\))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (\KD01|RingBuffer1|RAM1|ram~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|RingBuffer1|RAM1|ram~50_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datad => \KD01|RingBuffer1|RAM1|ram~48_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~51_combout\);

-- Location: FF_X44_Y30_N13
\KD01|OutputBuffer1|Register1|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl_outclk\,
	d => \KD01|RingBuffer1|RAM1|ram~51_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|OutputBuffer1|Register1|U3|Q~q\);

-- Location: LCCOMB_X44_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datac => \KD01|OutputBuffer1|Register1|U3|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X44_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X44_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X44_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X44_Y41_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X44_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X44_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X44_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: LCCOMB_X44_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: FF_X44_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X45_Y34_N16
\KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~1_combout\ = (\KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~0_combout\) # ((\KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0_combout\) # 
-- ((\KD01|OutputBuffer1|BC1|CurrentState.STATE_DONE_LOAD~0_combout\ & !\auto_hub|i
-- nstrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~0_combout\,
	datab => \KD01|OutputBuffer1|BC1|CurrentState.STATE_DONE_LOAD~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datad => \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0_combout\,
	combout => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~1_combout\);

-- Location: FF_X45_Y34_N17
\KD01|OutputBuffer1|BC1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X45_Y30_N14
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~2_combout\ = (!\KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\ & ((\KD01|RingBuffer1|MAC1|UR4bit_1|U3|Q~q\) # ((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~1_combout\ & 
-- !\KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UR4bit_1|U3|Q~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~1_combout\,
	datac => \KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\,
	datad => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~2_combout\);

-- Location: LCCOMB_X45_Y30_N8
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~3_combout\ = (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ & (\KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\)) # (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ & 
-- (((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~2_combout\ & !\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~2_combout\,
	datac => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~3_combout\);

-- Location: LCCOMB_X45_Y30_N12
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~4_combout\ = (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ & ((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~3_combout\) # 
-- (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\)))) # (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ & ((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~3_combout\) # 
-- (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~3_combout\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~4_combout\);

-- Location: FF_X45_Y30_N13
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~4_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X45_Y30_N2
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~0_combout\ = (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ & (((\KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\ & \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\)) # 
-- (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~0_combout\);

-- Location: FF_X45_Y30_N3
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\);

-- Location: LCCOMB_X45_Y30_N30
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~0_combout\ = (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X45_Y29_N12
\KD01|KD01|kc01|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|kc01|CurrentState.state_bit_0~0_combout\ = (\KD01|KD01|ks01|PEnc1|V~0_combout\ & (((\KD01|KD01|kc01|CurrentState.state_bit_0~q\) # (!\KD01|KD01|kc01|CurrentState.state_bit_1~q\)))) # (!\KD01|KD01|ks01|PEnc1|V~0_combout\ & 
-- (\KD01|KD01|kc01|CurrentState.state_bit_0~q\ & ((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~0_combout\) # (!\KD01|KD01|kc01|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~0_combout\,
	datab => \KD01|KD01|ks01|PEnc1|V~0_combout\,
	datac => \KD01|KD01|kc01|CurrentState.state_bit_0~q\,
	datad => \KD01|KD01|kc01|CurrentState.state_bit_1~q\,
	combout => \KD01|KD01|kc01|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X45_Y29_N13
\KD01|KD01|kc01|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|KD01|kc01|CurrentState.state_bit_0~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|KD01|kc01|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X45_Y34_N24
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~0_combout\ = (!\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\ & !\KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\,
	datad => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X45_Y30_N28
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~1_combout\ = (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ & (((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~0_combout\)))) # (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ & 
-- ((\KD01|RingBuffer1|MAC1|UR4bit_1|U3|Q~q\) # ((!\KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UR4bit_1|U3|Q~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~0_combout\,
	datac => \KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X45_Y30_N22
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~2_combout\ = (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & (((\KD01|KD01|kc01|CurrentState.state_bit_1~q\)) # (!\KD01|KD01|kc01|CurrentState.state_bit_0~q\))) # 
-- (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\ & (((\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|kc01|CurrentState.state_bit_0~q\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~1_combout\,
	datac => \KD01|KD01|kc01|CurrentState.state_bit_1~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X45_Y30_N16
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~3_combout\ = (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ & (((!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~2_combout\ & \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\)) # 
-- (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\))) # (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ & (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~2_combout\ & (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~2_combout\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_2~q\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	combout => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~3_combout\);

-- Location: FF_X45_Y30_N17
\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~3_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X45_Y34_N26
\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~0_combout\ = (!\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\ & (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\ & ((\KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0_combout\) # 
-- (\KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0_combout\,
	datab => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~q\,
	datac => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_0~q\,
	datad => \KD01|RingBuffer1|RBC1|CurrentState.state_bit_1~0_combout\,
	combout => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X45_Y34_N10
\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~1_combout\ = (\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~0_combout\) # 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & 
-- (\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\ $ (\KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datac => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\,
	datad => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\,
	combout => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X45_Y34_N11
\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X45_Y34_N20
\KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0_combout\ = LCELL((\KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\ & \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_0~q\,
	datad => \KD01|OutputBuffer1|BC1|CurrentState.state_bit_1~q\,
	combout => \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0_combout\);

-- Location: CLKCTRL_G1
\KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl_outclk\);

-- Location: LCCOMB_X44_Y32_N6
\KD01|RingBuffer1|RAM1|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~10_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~10_combout\);

-- Location: LCCOMB_X45_Y32_N6
\KD01|RingBuffer1|RAM1|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~2_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~2_combout\);

-- Location: LCCOMB_X45_Y32_N12
\KD01|RingBuffer1|RAM1|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~6_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~6_combout\);

-- Location: LCCOMB_X44_Y32_N24
\KD01|RingBuffer1|RAM1|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~44_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & (((\KD01|RingBuffer1|RAM1|ram~6_combout\) # (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & 
-- (\KD01|RingBuffer1|RAM1|ram~2_combout\ & ((!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~2_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datac => \KD01|RingBuffer1|RAM1|ram~6_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~44_combout\);

-- Location: LCCOMB_X44_Y32_N0
\KD01|RingBuffer1|RAM1|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~14_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~14_combout\);

-- Location: LCCOMB_X44_Y32_N18
\KD01|RingBuffer1|RAM1|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~45_combout\ = (\KD01|RingBuffer1|RAM1|ram~44_combout\ & (((\KD01|RingBuffer1|RAM1|ram~14_combout\) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\)))) # (!\KD01|RingBuffer1|RAM1|ram~44_combout\ & 
-- (\KD01|RingBuffer1|RAM1|ram~10_combout\ & ((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~10_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~44_combout\,
	datac => \KD01|RingBuffer1|RAM1|ram~14_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~45_combout\);

-- Location: LCCOMB_X43_Y30_N14
\KD01|RingBuffer1|RAM1|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	datac => \KD01|RingBuffer1|RAM1|ram~18_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \KD01|RingBuffer1|RAM1|ram~18_combout\);

-- Location: LCCOMB_X44_Y30_N30
\KD01|RingBuffer1|RAM1|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	datac => \KD01|RingBuffer1|RAM1|ram~26_combout\,
	datad => \rtl~5clkctrl_outclk\,
	combout => \KD01|RingBuffer1|RAM1|ram~26_combout\);

-- Location: LCCOMB_X44_Y30_N10
\KD01|RingBuffer1|RAM1|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~42_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & (((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & 
-- ((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & ((\KD01|RingBuffer1|RAM1|ram~26_combout\))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RAM1|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~18_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datac => \KD01|RingBuffer1|RAM1|ram~26_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~42_combout\);

-- Location: LCCOMB_X44_Y30_N16
\KD01|RingBuffer1|RAM1|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~30_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~30_combout\);

-- Location: LCCOMB_X44_Y30_N28
\KD01|RingBuffer1|RAM1|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~22_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~22_combout\);

-- Location: LCCOMB_X44_Y30_N20
\KD01|RingBuffer1|RAM1|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~43_combout\ = (\KD01|RingBuffer1|RAM1|ram~42_combout\ & ((\KD01|RingBuffer1|RAM1|ram~30_combout\) # ((!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))) # (!\KD01|RingBuffer1|RAM1|ram~42_combout\ & 
-- (((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & \KD01|RingBuffer1|RAM1|ram~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~42_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~30_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datad => \KD01|RingBuffer1|RAM1|ram~22_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~43_combout\);

-- Location: LCCOMB_X44_Y30_N2
\KD01|RingBuffer1|RAM1|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~46_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & ((\KD01|RingBuffer1|RAM1|ram~43_combout\))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (\KD01|RingBuffer1|RAM1|ram~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~45_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~43_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~46_combout\);

-- Location: FF_X44_Y30_N3
\KD01|OutputBuffer1|Register1|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl_outclk\,
	d => \KD01|RingBuffer1|RAM1|ram~46_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|OutputBuffer1|Register1|U2|Q~q\);

-- Location: LCCOMB_X44_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|OutputBuffer1|Register1|U2|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X44_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X45_Y29_N22
\KD01|KD01|ks01|PEnc1|R[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|ks01|PEnc1|R[1]~0_combout\ = (!\Ln3~input_o\) # (!\Ln4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ln4~input_o\,
	datad => \Ln3~input_o\,
	combout => \KD01|KD01|ks01|PEnc1|R[1]~0_combout\);

-- Location: FF_X45_Y29_N23
\KD01|KD01|ks01|Reg1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|KD01|ks01|PEnc1|R[1]~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	ena => \KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|KD01|ks01|Reg1|U1|Q~q\);

-- Location: LCCOMB_X44_Y30_N22
\KD01|RingBuffer1|RAM1|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U1|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Reg1|U1|Q~q\,
	datac => \KD01|RingBuffer1|RAM1|ram~21_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \KD01|RingBuffer1|RAM1|ram~21_combout\);

-- Location: LCCOMB_X44_Y30_N18
\KD01|RingBuffer1|RAM1|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U1|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Reg1|U1|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~29_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~29_combout\);

-- Location: LCCOMB_X43_Y32_N0
\KD01|RingBuffer1|RAM1|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U1|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Reg1|U1|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~17_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~17_combout\);

-- Location: LCCOMB_X44_Y30_N0
\KD01|RingBuffer1|RAM1|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U1|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5clkctrl_outclk\,
	datac => \KD01|KD01|ks01|Reg1|U1|Q~q\,
	datad => \KD01|RingBuffer1|RAM1|ram~25_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~25_combout\);

-- Location: LCCOMB_X44_Y30_N6
\KD01|RingBuffer1|RAM1|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~37_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & (((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & 
-- ((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & ((\KD01|RingBuffer1|RAM1|ram~25_combout\))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (\KD01|RingBuffer1|RAM1|ram~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~17_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~25_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~37_combout\);

-- Location: LCCOMB_X44_Y30_N8
\KD01|RingBuffer1|RAM1|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~38_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & ((\KD01|RingBuffer1|RAM1|ram~37_combout\ & ((\KD01|RingBuffer1|RAM1|ram~29_combout\))) # (!\KD01|RingBuffer1|RAM1|ram~37_combout\ & 
-- (\KD01|RingBuffer1|RAM1|ram~21_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & (((\KD01|RingBuffer1|RAM1|ram~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~21_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~29_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datad => \KD01|RingBuffer1|RAM1|ram~37_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~38_combout\);

-- Location: LCCOMB_X44_Y32_N10
\KD01|RingBuffer1|RAM1|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U1|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Reg1|U1|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~9_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~9_combout\);

-- Location: LCCOMB_X44_Y32_N28
\KD01|RingBuffer1|RAM1|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U1|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Reg1|U1|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~13_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~13_combout\);

-- Location: LCCOMB_X43_Y32_N10
\KD01|RingBuffer1|RAM1|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U1|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Reg1|U1|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~1_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~1_combout\);

-- Location: LCCOMB_X45_Y32_N18
\KD01|RingBuffer1|RAM1|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U1|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Reg1|U1|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~5_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~5_combout\);

-- Location: LCCOMB_X44_Y32_N4
\KD01|RingBuffer1|RAM1|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~39_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & (((\KD01|RingBuffer1|RAM1|ram~5_combout\) # (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & 
-- (\KD01|RingBuffer1|RAM1|ram~1_combout\ & ((!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~1_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~5_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~39_combout\);

-- Location: LCCOMB_X44_Y32_N22
\KD01|RingBuffer1|RAM1|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~40_combout\ = (\KD01|RingBuffer1|RAM1|ram~39_combout\ & (((\KD01|RingBuffer1|RAM1|ram~13_combout\) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\)))) # (!\KD01|RingBuffer1|RAM1|ram~39_combout\ & 
-- (\KD01|RingBuffer1|RAM1|ram~9_combout\ & ((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~9_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~13_combout\,
	datac => \KD01|RingBuffer1|RAM1|ram~39_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~40_combout\);

-- Location: LCCOMB_X44_Y30_N24
\KD01|RingBuffer1|RAM1|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~41_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (\KD01|RingBuffer1|RAM1|ram~38_combout\)) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & ((\KD01|RingBuffer1|RAM1|ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~38_combout\,
	datac => \KD01|RingBuffer1|RAM1|ram~40_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~41_combout\);

-- Location: FF_X44_Y30_N25
\KD01|OutputBuffer1|Register1|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl_outclk\,
	d => \KD01|RingBuffer1|RAM1|ram~41_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|OutputBuffer1|Register1|U1|Q~q\);

-- Location: LCCOMB_X44_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \KD01|OutputBuffer1|Register1|U1|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: FF_X44_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X45_Y29_N2
\KD01|KD01|ks01|PEnc1|R[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|ks01|PEnc1|R\(0) = ((\Ln3~input_o\ & !\Ln2~input_o\)) # (!\Ln4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ln3~input_o\,
	datac => \Ln4~input_o\,
	datad => \Ln2~input_o\,
	combout => \KD01|KD01|ks01|PEnc1|R\(0));

-- Location: FF_X45_Y29_N3
\KD01|KD01|ks01|Reg1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|clk1|tmp~clkctrl_outclk\,
	d => \KD01|KD01|ks01|PEnc1|R\(0),
	clrn => \ALT_INV_Rst~input_o\,
	ena => \KD01|KD01|kc01|CurrentState.STATE_STORING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|KD01|ks01|Reg1|U0|Q~q\);

-- Location: LCCOMB_X45_Y35_N6
\KD01|RingBuffer1|RAM1|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U0|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Reg1|U0|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~24_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~24_combout\);

-- Location: LCCOMB_X45_Y35_N16
\KD01|RingBuffer1|RAM1|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U0|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Reg1|U0|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~16_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~16_combout\);

-- Location: LCCOMB_X45_Y35_N26
\KD01|RingBuffer1|RAM1|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~32_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & ((\KD01|RingBuffer1|RAM1|ram~24_combout\) # ((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & 
-- (((!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & \KD01|RingBuffer1|RAM1|ram~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~24_combout\,
	datab => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datad => \KD01|RingBuffer1|RAM1|ram~16_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~32_combout\);

-- Location: LCCOMB_X45_Y35_N18
\KD01|RingBuffer1|RAM1|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U0|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7clkctrl_outclk\,
	datac => \KD01|KD01|ks01|Reg1|U0|Q~q\,
	datad => \KD01|RingBuffer1|RAM1|ram~28_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~28_combout\);

-- Location: LCCOMB_X44_Y35_N0
\KD01|RingBuffer1|RAM1|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U0|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Reg1|U0|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~20_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~20_combout\);

-- Location: LCCOMB_X45_Y35_N12
\KD01|RingBuffer1|RAM1|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~33_combout\ = (\KD01|RingBuffer1|RAM1|ram~32_combout\ & ((\KD01|RingBuffer1|RAM1|ram~28_combout\) # ((!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\)))) # (!\KD01|RingBuffer1|RAM1|ram~32_combout\ & 
-- (((\KD01|RingBuffer1|RAM1|ram~20_combout\ & \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~32_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~28_combout\,
	datac => \KD01|RingBuffer1|RAM1|ram~20_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~33_combout\);

-- Location: LCCOMB_X44_Y32_N16
\KD01|RingBuffer1|RAM1|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U0|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Reg1|U0|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~12_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~12_combout\);

-- Location: LCCOMB_X44_Y32_N30
\KD01|RingBuffer1|RAM1|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U0|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Reg1|U0|Q~q\,
	datac => \KD01|RingBuffer1|RAM1|ram~4_combout\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \KD01|RingBuffer1|RAM1|ram~4_combout\);

-- Location: LCCOMB_X45_Y32_N24
\KD01|RingBuffer1|RAM1|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U0|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Reg1|U0|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~0_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~0_combout\);

-- Location: LCCOMB_X44_Y32_N8
\KD01|RingBuffer1|RAM1|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~34_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & ((\KD01|RingBuffer1|RAM1|ram~4_combout\) # ((\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\)))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\ & 
-- (((\KD01|RingBuffer1|RAM1|ram~0_combout\ & !\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~4_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~0_combout\,
	datac => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[0]~0_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~34_combout\);

-- Location: LCCOMB_X44_Y32_N20
\KD01|RingBuffer1|RAM1|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\KD01|KD01|ks01|Reg1|U0|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\KD01|RingBuffer1|RAM1|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|KD01|ks01|Reg1|U0|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \KD01|RingBuffer1|RAM1|ram~8_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~8_combout\);

-- Location: LCCOMB_X44_Y32_N26
\KD01|RingBuffer1|RAM1|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~35_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & ((\KD01|RingBuffer1|RAM1|ram~34_combout\ & (\KD01|RingBuffer1|RAM1|ram~12_combout\)) # (!\KD01|RingBuffer1|RAM1|ram~34_combout\ & 
-- ((\KD01|RingBuffer1|RAM1|ram~8_combout\))))) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\ & (((\KD01|RingBuffer1|RAM1|ram~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[1]~1_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~12_combout\,
	datac => \KD01|RingBuffer1|RAM1|ram~34_combout\,
	datad => \KD01|RingBuffer1|RAM1|ram~8_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~35_combout\);

-- Location: LCCOMB_X45_Y35_N0
\KD01|RingBuffer1|RAM1|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|RingBuffer1|RAM1|ram~36_combout\ = (\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & (\KD01|RingBuffer1|RAM1|ram~33_combout\)) # (!\KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\ & ((\KD01|RingBuffer1|RAM1|ram~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD01|RingBuffer1|RAM1|ram~33_combout\,
	datab => \KD01|RingBuffer1|RAM1|ram~35_combout\,
	datad => \KD01|RingBuffer1|MAC1|UMux3bit_1|R[2]~2_combout\,
	combout => \KD01|RingBuffer1|RAM1|ram~36_combout\);

-- Location: FF_X45_Y35_N1
\KD01|OutputBuffer1|Register1|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD01|OutputBuffer1|BC1|CurrentState.STATE_WAITING_LOAD~0clkctrl_outclk\,
	d => \KD01|RingBuffer1|RAM1|ram~36_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD01|OutputBuffer1|Register1|U0|Q~q\);

-- Location: LCCOMB_X44_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \KD01|OutputBuffer1|Register1|U0|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: FF_X44_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X45_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X45_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X45_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X45_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X45_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X45_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X45_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X45_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X45_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X45_Y38_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X45_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X45_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X45_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X45_Y38_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X45_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X46_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X47_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X47_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X46_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X46_Y38_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X46_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X47_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X47_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: FF_X47_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X47_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: FF_X47_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X47_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X47_Y37_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X47_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X47_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X47_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X47_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X47_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X46_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X46_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X46_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X46_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X47_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X46_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X47_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X46_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X46_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X46_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X46_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X46_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X46_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X45_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X45_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X45_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: LCCOMB_X46_Y34_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\);

-- Location: LCCOMB_X46_Y34_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~9_combout\);

-- Location: LCCOMB_X46_Y34_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~9_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\);

-- Location: LCCOMB_X46_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\);

-- Location: FF_X46_Y34_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X46_Y34_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~12\);

-- Location: FF_X46_Y34_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X46_Y34_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\);

-- Location: FF_X46_Y34_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LCCOMB_X46_Y34_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\);

-- Location: FF_X46_Y34_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X46_Y34_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: FF_X46_Y34_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X46_Y34_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X46_Y34_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X46_Y34_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\);

-- Location: LCCOMB_X46_Y34_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\);

-- Location: LCCOMB_X49_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X45_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X47_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X49_Y38_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X49_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X49_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X49_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X49_Y38_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X49_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X49_Y38_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X49_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X47_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X49_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X46_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X46_Y34_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: FF_X49_Y38_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X49_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X46_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X46_Y34_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X46_Y34_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X49_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\);

-- Location: FF_X49_Y38_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X46_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X46_Y34_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X46_Y34_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X49_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X49_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X46_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X46_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X46_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X46_Y37_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X46_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X46_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X46_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X45_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\);

-- Location: LCCOMB_X45_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\);

-- Location: FF_X45_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G14
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X44_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X44_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X43_Y7_N12
\SLDC1|SR1|SC1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\ = (\SLDC1|SR1|SC1|CurrentState.state_bit_1~q\ & (!\SLDC1|Disp1|CurrentState.state_bit_1~q\ & (\SLDC1|SR1|SC1|CurrentState.state_bit_0~q\))) # (!\SLDC1|SR1|SC1|CurrentState.state_bit_1~q\ & 
-- (((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CurrentState.state_bit_1~q\,
	datab => \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datac => \SLDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \SLDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X43_Y7_N22
\SLDC1|SR1|CUP1|U4|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|CUP1|U4|U0|Q~0_combout\ = !\SLDC1|SR1|CUP1|U4|U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLDC1|SR1|CUP1|U4|U0|Q~q\,
	combout => \SLDC1|SR1|CUP1|U4|U0|Q~0_combout\);

-- Location: LCCOMB_X43_Y7_N8
\SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0_combout\ = (!\SLDC1|SR1|SC1|CurrentState.state_bit_0~q\ & !\SLDC1|SR1|SC1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datad => \SLDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	combout => \SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0_combout\);

-- Location: CLKCTRL_G16
\SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SLDC1|SR1|SC1|CurrentState.STATE_WAITING~0clkctrl_outclk\);

-- Location: FF_X43_Y7_N23
\SLDC1|SR1|CUP1|U4|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SLDC1|SR1|CUP1|U4|U0|Q~0_combout\,
	clrn => \SLDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|CUP1|U4|U0|Q~q\);

-- Location: LCCOMB_X43_Y7_N10
\SLDC1|SR1|CUP1|U4|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|CUP1|U4|U1|Q~0_combout\ = \SLDC1|SR1|CUP1|U4|U0|Q~q\ $ (\SLDC1|SR1|CUP1|U4|U1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|SR1|CUP1|U4|U0|Q~q\,
	datac => \SLDC1|SR1|CUP1|U4|U1|Q~q\,
	combout => \SLDC1|SR1|CUP1|U4|U1|Q~0_combout\);

-- Location: FF_X43_Y7_N11
\SLDC1|SR1|CUP1|U4|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SLDC1|SR1|CUP1|U4|U1|Q~0_combout\,
	clrn => \SLDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|CUP1|U4|U1|Q~q\);

-- Location: LCCOMB_X43_Y7_N0
\SLDC1|SR1|CUP1|U4|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|CUP1|U4|U2|Q~0_combout\ = \SLDC1|SR1|CUP1|U4|U2|Q~q\ $ (((\SLDC1|SR1|CUP1|U4|U0|Q~q\ & \SLDC1|SR1|CUP1|U4|U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|SR1|CUP1|U4|U0|Q~q\,
	datac => \SLDC1|SR1|CUP1|U4|U2|Q~q\,
	datad => \SLDC1|SR1|CUP1|U4|U1|Q~q\,
	combout => \SLDC1|SR1|CUP1|U4|U2|Q~0_combout\);

-- Location: FF_X43_Y7_N1
\SLDC1|SR1|CUP1|U4|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \SLDC1|SR1|CUP1|U4|U2|Q~0_combout\,
	clrn => \SLDC1|SR1|SC1|ALT_INV_CurrentState.STATE_WAITING~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|CUP1|U4|U2|Q~q\);

-- Location: LCCOMB_X43_Y7_N4
\SLDC1|SR1|SC1|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\ = (\SLDC1|SR1|CUP1|U4|U2|Q~q\ & (\SLDC1|SR1|CUP1|U4|U0|Q~q\ & !\SLDC1|SR1|CUP1|U4|U1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|SR1|CUP1|U4|U2|Q~q\,
	datac => \SLDC1|SR1|CUP1|U4|U0|Q~q\,
	datad => \SLDC1|SR1|CUP1|U4|U1|Q~q\,
	combout => \SLDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X43_Y7_N24
\SLDC1|SR1|SC1|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|SC1|CurrentState.state_bit_0~2_combout\ = (\SLDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\) # ((\SLDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\ & (\SLDC1|SR1|SC1|CurrentState.state_bit_0~q\ & !\SLDC1|SR1|SC1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|SR1|SC1|CurrentState.state_bit_0~0_combout\,
	datab => \SLDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\,
	datac => \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datad => \SLDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	combout => \SLDC1|SR1|SC1|CurrentState.state_bit_0~2_combout\);

-- Location: FF_X43_Y7_N25
\SLDC1|SR1|SC1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|SR1|SC1|CurrentState.state_bit_0~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X43_Y7_N6
\SLDC1|SR1|SC1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\ = (\SLDC1|SR1|SC1|CurrentState.state_bit_1~q\ & ((\SLDC1|SR1|SC1|CurrentState.state_bit_0~q\) # (\SLDC1|Disp1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datac => \SLDC1|Disp1|CurrentState.state_bit_1~q\,
	datad => \SLDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	combout => \SLDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X43_Y7_N2
\SLDC1|SR1|SC1|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|SC1|CurrentState.state_bit_1~1_combout\ = (\SLDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\) # ((\SLDC1|SR1|SC1|CurrentState.state_bit_0~q\ & (\SLDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\ & 
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|SR1|SC1|CurrentState.state_bit_1~0_combout\,
	datab => \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datac => \SLDC1|SR1|SC1|CurrentState.state_bit_0~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \SLDC1|SR1|SC1|CurrentState.state_bit_1~1_combout\);

-- Location: FF_X43_Y7_N3
\SLDC1|SR1|SC1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLDC1|SR1|SC1|CurrentState.state_bit_1~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|SC1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X42_Y7_N24
\SLDC1|Disp1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CurrentState.state_bit_0~0_combout\ = (\SLDC1|Disp1|CurrentState.state_bit_1~q\ & (\SLDC1|SR1|SC1|CurrentState.state_bit_1~q\ & (\SLDC1|Disp1|CurrentState.state_bit_0~q\ & \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\))) # 
-- (!\SLDC1|Disp1|CurrentState.state_bit_1~q\ & ((\SLDC1|Disp1|CurrentState.state_bit_0~q\) # ((\SLDC1|SR1|SC1|CurrentState.state_bit_1~q\ & \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	datab => \SLDC1|Disp1|CurrentState.state_bit_1~q\,
	datac => \SLDC1|Disp1|CurrentState.state_bit_0~q\,
	datad => \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	combout => \SLDC1|Disp1|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X42_Y7_N25
\SLDC1|Disp1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLDC1|Disp1|CLKDIV1|tmp~clkctrl_outclk\,
	d => \SLDC1|Disp1|CurrentState.state_bit_0~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|Disp1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X42_Y7_N28
\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0_combout\ = (\SLDC1|Disp1|CurrentState.state_bit_0~q\ & !\SLDC1|Disp1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|Disp1|CurrentState.state_bit_0~q\,
	datad => \SLDC1|Disp1|CurrentState.state_bit_1~q\,
	combout => \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0_combout\);

-- Location: CLKCTRL_G18
\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\);

-- Location: LCCOMB_X42_Y7_N16
\SLDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\ = (\SLDC1|SR1|SC1|CurrentState.state_bit_0~q\ & !\SLDC1|SR1|SC1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLDC1|SR1|SC1|CurrentState.state_bit_0~q\,
	datad => \SLDC1|SR1|SC1|CurrentState.state_bit_1~q\,
	combout => \SLDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\);

-- Location: FF_X42_Y7_N23
\SLDC1|SR1|SR1|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	ena => \SLDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|SR1|FF1|Q~q\);

-- Location: FF_X42_Y7_N13
\SLDC1|SR1|SR1|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \SLDC1|SR1|SR1|FF1|Q~q\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	ena => \SLDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|SR1|FF2|Q~q\);

-- Location: FF_X42_Y7_N19
\SLDC1|SR1|SR1|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \SLDC1|SR1|SR1|FF2|Q~q\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	ena => \SLDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|SR1|FF3|Q~q\);

-- Location: FF_X42_Y7_N1
\SLDC1|SR1|SR1|FF4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \SLDC1|SR1|SR1|FF3|Q~q\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	ena => \SLDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|SR1|FF4|Q~q\);

-- Location: FF_X42_Y7_N7
\SLDC1|SR1|SR1|FF5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \SLDC1|SR1|SR1|FF4|Q~q\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	ena => \SLDC1|SR1|SC1|CurrentState.STATE_RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLDC1|SR1|SR1|FF5|Q~q\);

-- Location: LCCOMB_X42_Y7_N6
\SLDC1|Disp1|Dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|Dout\(0) = (GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & (\SLDC1|SR1|SR1|FF5|Q~q\)) # (!GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & ((\SLDC1|Disp1|Dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\,
	datac => \SLDC1|SR1|SR1|FF5|Q~q\,
	datad => \SLDC1|Disp1|Dout\(0),
	combout => \SLDC1|Disp1|Dout\(0));

-- Location: LCCOMB_X42_Y7_N0
\SLDC1|Disp1|Dout[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|Dout\(1) = (GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & (\SLDC1|SR1|SR1|FF4|Q~q\)) # (!GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & ((\SLDC1|Disp1|Dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\,
	datac => \SLDC1|SR1|SR1|FF4|Q~q\,
	datad => \SLDC1|Disp1|Dout\(1),
	combout => \SLDC1|Disp1|Dout\(1));

-- Location: LCCOMB_X42_Y7_N18
\SLDC1|Disp1|Dout[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|Dout\(2) = (GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & (\SLDC1|SR1|SR1|FF3|Q~q\)) # (!GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & ((\SLDC1|Disp1|Dout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\,
	datac => \SLDC1|SR1|SR1|FF3|Q~q\,
	datad => \SLDC1|Disp1|Dout\(2),
	combout => \SLDC1|Disp1|Dout\(2));

-- Location: LCCOMB_X42_Y7_N12
\SLDC1|Disp1|Dout[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|Dout\(3) = (GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & (\SLDC1|SR1|SR1|FF2|Q~q\)) # (!GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & ((\SLDC1|Disp1|Dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\,
	datac => \SLDC1|SR1|SR1|FF2|Q~q\,
	datad => \SLDC1|Disp1|Dout\(3),
	combout => \SLDC1|Disp1|Dout\(3));

-- Location: LCCOMB_X42_Y7_N22
\SLDC1|Disp1|Dout[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLDC1|Disp1|Dout\(4) = (GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & (\SLDC1|SR1|SR1|FF1|Q~q\)) # (!GLOBAL(\SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\) & ((\SLDC1|Disp1|Dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLDC1|Disp1|CurrentState.STATE_DISPATCHING~0clkctrl_outclk\,
	datac => \SLDC1|SR1|SR1|FF1|Q~q\,
	datad => \SLDC1|Disp1|Dout\(4),
	combout => \SLDC1|Disp1|Dout\(4));

-- Location: LCCOMB_X43_Y30_N24
\KD01|KD01|ks01|DEC1|Y0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|ks01|DEC1|Y0~combout\ = (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\) # (\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	combout => \KD01|KD01|ks01|DEC1|Y0~combout\);

-- Location: LCCOMB_X43_Y30_N26
\KD01|KD01|ks01|DEC1|Y1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|ks01|DEC1|Y1~combout\ = (!\KD01|KD01|ks01|Counter1|U4|U1|Q~q\ & \KD01|KD01|ks01|Counter1|U4|U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	combout => \KD01|KD01|ks01|DEC1|Y1~combout\);

-- Location: LCCOMB_X43_Y30_N28
\KD01|KD01|ks01|DEC1|Y2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KD01|KD01|ks01|DEC1|Y2~combout\ = (\KD01|KD01|ks01|Counter1|U4|U1|Q~q\ & !\KD01|KD01|ks01|Counter1|U4|U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD01|KD01|ks01|Counter1|U4|U1|Q~q\,
	datac => \KD01|KD01|ks01|Counter1|U4|U0|Q~q\,
	combout => \KD01|KD01|ks01|DEC1|Y2~combout\);

-- Location: LCCOMB_X66_Y38_N4
\DM1|U0|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U0|dOut[1]~0_combout\ = (\DM1|U7|U1|Q\(0)) # ((\DM1|U7|U1|Q\(2) & !\DM1|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DM1|U7|U1|Q\(0),
	datac => \DM1|U7|U1|Q\(2),
	datad => \DM1|U7|U1|Q\(1),
	combout => \DM1|U0|dOut[1]~0_combout\);

-- Location: LCCOMB_X66_Y38_N14
\DM1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|Equal1~0_combout\ = (!\DM1|U7|U1|Q\(0) & (\DM1|U7|U1|Q\(2) & \DM1|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DM1|U7|U1|Q\(0),
	datac => \DM1|U7|U1|Q\(2),
	datad => \DM1|U7|U1|Q\(1),
	combout => \DM1|Equal1~0_combout\);

-- Location: LCCOMB_X66_Y38_N16
\DM1|U5|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U5|dOut~0_combout\ = (!\DM1|U7|U1|Q\(0) & \DM1|U7|U1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DM1|U7|U1|Q\(0),
	datad => \DM1|U7|U1|Q\(1),
	combout => \DM1|U5|dOut~0_combout\);

-- Location: LCCOMB_X70_Y41_N8
\DM1|U1|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U1|dOut[1]~0_combout\ = ((\DM1|U7|U1|Q\(5) & !\DM1|U7|U1|Q\(4))) # (!\DM1|U7|U1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DM1|U7|U1|Q\(5),
	datac => \DM1|U7|U1|Q\(3),
	datad => \DM1|U7|U1|Q\(4),
	combout => \DM1|U1|dOut[1]~0_combout\);

-- Location: LCCOMB_X70_Y41_N26
\DM1|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|Equal1~1_combout\ = (\DM1|U7|U1|Q\(5) & (\DM1|U7|U1|Q\(3) & \DM1|U7|U1|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DM1|U7|U1|Q\(5),
	datac => \DM1|U7|U1|Q\(3),
	datad => \DM1|U7|U1|Q\(4),
	combout => \DM1|Equal1~1_combout\);

-- Location: LCCOMB_X70_Y41_N20
\DM1|U4|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U4|dOut~0_combout\ = (\DM1|U7|U1|Q\(3) & \DM1|U7|U1|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DM1|U7|U1|Q\(3),
	datad => \DM1|U7|U1|Q\(4),
	combout => \DM1|U4|dOut~0_combout\);

-- Location: LCCOMB_X70_Y41_N10
\DM1|U2|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U2|dOut[1]~0_combout\ = ((!\DM1|U7|U1|Q\(7) & \DM1|U7|U1|Q\(8))) # (!\DM1|U7|U1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U7|U1|Q\(7),
	datab => \DM1|U7|U1|Q\(6),
	datac => \DM1|U7|U1|Q\(8),
	combout => \DM1|U2|dOut[1]~0_combout\);

-- Location: LCCOMB_X70_Y41_N12
\DM1|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|Equal1~2_combout\ = (\DM1|U7|U1|Q\(7) & (\DM1|U7|U1|Q\(6) & \DM1|U7|U1|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DM1|U7|U1|Q\(7),
	datab => \DM1|U7|U1|Q\(6),
	datac => \DM1|U7|U1|Q\(8),
	combout => \DM1|Equal1~2_combout\);

-- Location: LCCOMB_X70_Y41_N6
\DM1|U3|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DM1|U3|dOut~0_combout\ = (\DM1|U7|U1|Q\(6) & \DM1|U7|U1|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DM1|U7|U1|Q\(6),
	datac => \DM1|U7|U1|Q\(7),
	combout => \DM1|U3|dOut~0_combout\);

-- Location: FF_X44_Y37_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: FF_X44_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: FF_X44_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: LCCOMB_X59_Y41_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X44_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X46_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


