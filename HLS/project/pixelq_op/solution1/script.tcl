############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project pixelq_op
set_top pixelq_op
add_files pixelq_op/pixel_op.cpp
add_files -tb pixelq_op/test_main.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./pixelq_op/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
