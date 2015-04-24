########################
# Physical Constraints #
########################

#
# ZedBoard HDMI I2C Controller
#

set_property PACKAGE_PIN AA18 [get_ports zed_hdmi_iic_scl_io]
set_property IOSTANDARD LVCMOS25 [get_ports zed_hdmi_iic_scl_io]
set_property SLEW SLOW [get_ports zed_hdmi_iic_scl_io]
set_property DRIVE 8 [get_ports zed_hdmi_iic_scl_io]

set_property PACKAGE_PIN Y16 [get_ports zed_hdmi_iic_sda_io]
set_property IOSTANDARD LVCMOS25 [get_ports zed_hdmi_iic_sda_io]
set_property SLEW SLOW [get_ports zed_hdmi_iic_sda_io]
set_property DRIVE 8 [get_ports zed_hdmi_iic_sda_io]

#
# ZedBoard HDMI Output
#

set_property PACKAGE_PIN W18 [get_ports hdmio_io_clk]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_clk]

set_property PACKAGE_PIN W17 [get_ports hdmio_io_vsync]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_vsync]

set_property PACKAGE_PIN V17 [get_ports hdmio_io_hsync]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_hsync]

set_property PACKAGE_PIN U16 [get_ports hdmio_io_de]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_de]

set_property PACKAGE_PIN Y13 [get_ports {hdmio_io_data[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[0]}]

set_property PACKAGE_PIN AA13 [get_ports {hdmio_io_data[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[1]}]

set_property PACKAGE_PIN AA14 [get_ports {hdmio_io_data[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[2]}]

set_property PACKAGE_PIN Y14 [get_ports {hdmio_io_data[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[3]}]

set_property PACKAGE_PIN AB15 [get_ports {hdmio_io_data[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[4]}]

set_property PACKAGE_PIN AB16 [get_ports {hdmio_io_data[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[5]}]

set_property PACKAGE_PIN AA16 [get_ports {hdmio_io_data[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[6]}]

set_property PACKAGE_PIN AB17 [get_ports {hdmio_io_data[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[7]}]

set_property PACKAGE_PIN AA17 [get_ports {hdmio_io_data[8]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[8]}]

set_property PACKAGE_PIN Y15 [get_ports {hdmio_io_data[9]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[9]}]

set_property PACKAGE_PIN W13 [get_ports {hdmio_io_data[10]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[10]}]

set_property PACKAGE_PIN W15 [get_ports {hdmio_io_data[11]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[11]}]

set_property PACKAGE_PIN V15 [get_ports {hdmio_io_data[12]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[12]}]

set_property PACKAGE_PIN U17 [get_ports {hdmio_io_data[13]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[13]}]

set_property PACKAGE_PIN V14 [get_ports {hdmio_io_data[14]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[14]}]

set_property PACKAGE_PIN V13 [get_ports {hdmio_io_data[15]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hdmio_io_data[15]}]

set_property PACKAGE_PIN U15 [get_ports hdmio_io_spdif]
set_property IOSTANDARD LVCMOS25 [get_ports hdmio_io_spdif]


##################
# Primary Clocks #
##################

# The following constraints are already created by the "ZYNQ7 Processing System" core
#create_clock -period 12.999 -name clk_fpga_0 [get_nets -hierarchical FCLK_CLK0]
#create_clock -period  7.000 -name clk_fpga_1 [get_nets -hierarchical FCLK_CLK1]
#create_clock -period 10.000 -name clk_fpga_2 [get_nets -hierarchical FCLK_CLK2]

####################
# Generated Clocks #
####################

# Rename auto-generated clocks from MMCM
create_generated_clock -name hdmio_clk [get_pins tutorial_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]

################
# Clock Groups #
################

set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks clk_fpga_1] -group [get_clocks hdmio_clk]




set_property MARK_DEBUG false [get_nets {tutorial_i/zed_hdmi_display/example_0_B_TSTRB[2]}]
set_property MARK_DEBUG false [get_nets {tutorial_i/zed_hdmi_display/example_0_B_TSTRB[1]}]
set_property MARK_DEBUG false [get_nets {tutorial_i/zed_hdmi_display/example_0_B_TSTRB[0]}]
set_property MARK_DEBUG false [get_nets {tutorial_i/zed_hdmi_display/example_0_B_TSTRB[3]}]
set_property MARK_DEBUG false [get_nets tutorial_i/zed_hdmi_display/example_0_B_TID]
set_property MARK_DEBUG false [get_nets tutorial_i/zed_hdmi_display/example_0_B_TDEST]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_0_axi4s_clk_1]


connect_debug_port dbg_hub/clk [get_nets u_ila_0_0_hdmio_clk_1]

connect_debug_port u_ila_1/probe0 [get_nets [list {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[0]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[1]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[2]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[3]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[4]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[5]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[6]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[7]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[8]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[9]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[10]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[11]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[12]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[13]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[14]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[15]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[16]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[17]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[18]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[19]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[20]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[21]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[22]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[23]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[24]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[25]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[26]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[27]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[28]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[29]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[30]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TDATA[31]}]]
connect_debug_port u_ila_1/probe1 [get_nets [list {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TKEEP[0]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TKEEP[1]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TKEEP[2]} {tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TKEEP[3]}]]
connect_debug_port u_ila_1/probe2 [get_nets [list {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[0]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[1]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[2]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[3]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[4]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[5]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[6]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[7]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[8]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[9]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[10]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[11]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[12]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[13]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[14]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[15]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[16]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[17]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[18]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[19]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[20]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[21]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[22]} {tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TDATA[23]}]]
connect_debug_port u_ila_1/probe3 [get_nets [list {tutorial_i/zed_hdmi_display/example_0_B_TDATA[0]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[1]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[2]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[3]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[4]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[5]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[6]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[7]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[8]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[9]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[10]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[11]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[12]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[13]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[14]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[15]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[16]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[17]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[18]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[19]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[20]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[21]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[22]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[23]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[24]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[25]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[26]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[27]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[28]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[29]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[30]} {tutorial_i/zed_hdmi_display/example_0_B_TDATA[31]}]]
connect_debug_port u_ila_1/probe4 [get_nets [list {tutorial_i/zed_hdmi_display/example_0_B_TKEEP[0]} {tutorial_i/zed_hdmi_display/example_0_B_TKEEP[1]} {tutorial_i/zed_hdmi_display/example_0_B_TKEEP[2]} {tutorial_i/zed_hdmi_display/example_0_B_TKEEP[3]}]]
connect_debug_port u_ila_1/probe5 [get_nets [list tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TLAST]]
connect_debug_port u_ila_1/probe6 [get_nets [list tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TREADY]]
connect_debug_port u_ila_1/probe7 [get_nets [list tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TUSER]]
connect_debug_port u_ila_1/probe8 [get_nets [list tutorial_i/zed_hdmi_display/axi_vdma_0_M_AXIS_MM2S_TVALID]]
connect_debug_port u_ila_1/probe9 [get_nets [list tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TLAST]]
connect_debug_port u_ila_1/probe10 [get_nets [list tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TREADY]]
connect_debug_port u_ila_1/probe11 [get_nets [list tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TUSER]]
connect_debug_port u_ila_1/probe12 [get_nets [list tutorial_i/zed_hdmi_display/axis_subset_converter_0_m_axis_TVALID]]
connect_debug_port u_ila_1/probe13 [get_nets [list tutorial_i/zed_hdmi_display/example_0_B_TLAST]]
connect_debug_port u_ila_1/probe14 [get_nets [list tutorial_i/zed_hdmi_display/example_0_B_TREADY]]
connect_debug_port u_ila_1/probe15 [get_nets [list tutorial_i/zed_hdmi_display/example_0_B_TUSER]]
connect_debug_port u_ila_1/probe16 [get_nets [list tutorial_i/zed_hdmi_display/example_0_B_TVALID]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_hdmio_clk_1]



connect_debug_port u_ila_0/probe0 [get_nets [list {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[0]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[1]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[2]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[3]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[4]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[5]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[6]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[7]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[8]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[9]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[10]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[11]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[12]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[13]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[14]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[15]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[16]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[17]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[18]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[19]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[20]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[21]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[22]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[23]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[24]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[25]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[26]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[27]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[28]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[29]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[30]} {tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TDATA[31]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TLAST]]
connect_debug_port u_ila_0/probe3 [get_nets [list tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TREADY]]
connect_debug_port u_ila_0/probe4 [get_nets [list tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TUSER]]
connect_debug_port u_ila_0/probe5 [get_nets [list tutorial_i/zed_hdmi_display/linebuf_op_0_OUTPUT_STREAM_TVALID]]

connect_debug_port dbg_hub/clk [get_nets u_ila_0_axi4s_clk_1]

connect_debug_port dbg_hub/clk [get_nets u_ila_0_0_axi4s_clk_1]

connect_debug_port dbg_hub/clk [get_nets u_ila_0_axi4s_clk_1]

connect_debug_port u_ila_0/probe2 [get_nets [list {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[0]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[1]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[2]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[3]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[4]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[5]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[6]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[7]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[8]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[9]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[10]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[11]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[12]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[13]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[14]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[15]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[16]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[17]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[18]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[19]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[20]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[21]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[22]} {tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TDATA[23]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TLAST]]
connect_debug_port u_ila_0/probe4 [get_nets [list tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TREADY]]
connect_debug_port u_ila_0/probe5 [get_nets [list tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TUSER]]
connect_debug_port u_ila_0/probe6 [get_nets [list tutorial_i/zed_hdmi_display/pixel_op_0_video_out_stream_TVALID]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_0_axi4s_clk_1]

connect_debug_port dbg_hub/clk [get_nets u_ila_0_axi4s_clk_1]

connect_debug_port u_ila_0/probe0 [get_nets [list {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[0]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[1]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[2]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[3]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[4]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[5]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[6]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[7]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[8]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[9]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[10]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[11]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[12]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[13]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[14]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[15]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[16]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[17]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[18]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[19]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[20]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[21]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[22]} {tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TDATA[23]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TLAST]]
connect_debug_port u_ila_0/probe4 [get_nets [list tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TREADY]]
connect_debug_port u_ila_0/probe5 [get_nets [list tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TUSER]]
connect_debug_port u_ila_0/probe6 [get_nets [list tutorial_i/zed_hdmi_display/filter_op_0_OUTPUT_STREAM_TVALID]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_0_axi4s_clk_1]

connect_debug_port dbg_hub/clk [get_nets u_ila_0_axi4s_clk_1]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 2 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list tutorial_i/axi4s_clk_1]]
set_property port_width 24 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[0]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[1]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[2]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[3]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[4]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[5]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[6]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[7]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[8]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[9]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[10]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[11]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[12]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[13]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[14]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[15]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[16]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[17]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[18]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[19]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[20]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[21]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[22]} {tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TDATA[23]}]]
create_debug_port u_ila_0 probe
set_property port_width 24 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[0]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[1]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[2]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[3]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[4]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[5]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[6]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[7]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[8]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[9]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[10]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[11]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[12]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[13]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[14]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[15]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[16]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[17]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[18]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[19]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[20]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[21]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[22]} {tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TDATA[23]}]]
create_debug_port u_ila_0 probe
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TDATA[0]} {tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TDATA[1]} {tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TDATA[2]} {tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TDATA[3]} {tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TDATA[4]} {tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TDATA[5]} {tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TDATA[6]} {tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TDATA[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TLAST]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TREADY]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TUSER]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list tutorial_i/zed_hdmi_display/pixelq_op_0_OUTPUT_STREAM_TVALID]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TLAST]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TREADY]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TUSER]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list tutorial_i/zed_hdmi_display/v_cfa_0_video_out_TVALID]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TLAST]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TREADY]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TUSER]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list tutorial_i/zed_hdmi_display/v_tpg_0_video_out_TVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_0_axi4s_clk_1]
