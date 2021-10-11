-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Sep 28 20:36:32 2021
-- Host        : DESKTOP-JHOPN9P running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/CG4002/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_mlp_nn_0_0/design_1_mlp_nn_0_0_stub.vhdl
-- Design      : design_1_mlp_nn_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_mlp_nn_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    S_AXIS_V_TVALID : in STD_LOGIC;
    S_AXIS_V_TREADY : out STD_LOGIC;
    S_AXIS_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_V_TVALID : out STD_LOGIC;
    M_AXIS_V_TREADY : in STD_LOGIC;
    M_AXIS_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end design_1_mlp_nn_0_0;

architecture stub of design_1_mlp_nn_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,S_AXIS_V_TVALID,S_AXIS_V_TREADY,S_AXIS_V_TDATA[63:0],M_AXIS_V_TVALID,M_AXIS_V_TREADY,M_AXIS_V_TDATA[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mlp_nn,Vivado 2020.2";
begin
end;
