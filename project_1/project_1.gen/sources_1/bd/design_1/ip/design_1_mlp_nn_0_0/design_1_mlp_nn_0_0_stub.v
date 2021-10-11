// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Sep 28 20:36:32 2021
// Host        : DESKTOP-JHOPN9P running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/CG4002/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_mlp_nn_0_0/design_1_mlp_nn_0_0_stub.v
// Design      : design_1_mlp_nn_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mlp_nn,Vivado 2020.2" *)
module design_1_mlp_nn_0_0(ap_clk, ap_rst_n, S_AXIS_V_TVALID, 
  S_AXIS_V_TREADY, S_AXIS_V_TDATA, M_AXIS_V_TVALID, M_AXIS_V_TREADY, M_AXIS_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,S_AXIS_V_TVALID,S_AXIS_V_TREADY,S_AXIS_V_TDATA[63:0],M_AXIS_V_TVALID,M_AXIS_V_TREADY,M_AXIS_V_TDATA[63:0]" */;
  input ap_clk;
  input ap_rst_n;
  input S_AXIS_V_TVALID;
  output S_AXIS_V_TREADY;
  input [63:0]S_AXIS_V_TDATA;
  output M_AXIS_V_TVALID;
  input M_AXIS_V_TREADY;
  output [63:0]M_AXIS_V_TDATA;
endmodule
