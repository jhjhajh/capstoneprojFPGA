############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mlp_nn
set_top hls
add_files define.h
add_files main.cpp
add_files math_func.h
add_files -tb test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
set_clock_uncertainty 0
source "./mlp_nn/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format sysgen -output /home/jiahui/cg4002/week7/capstoneprojFPGA/vivado/mlp_nn
