vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_1
vlib riviera/axi_vip_v1_1_1
vlib riviera/processing_system7_vip_v1_0_3

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 riviera/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 riviera/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 riviera/processing_system7_vip_v1_0_3

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_cam_reg_config_0_0/sim/design_2_cam_reg_config_0_0.v" \
"../../../bd/design_2/ip/design_2_camera_reg_0_0/sim/design_2_camera_reg_0_0.v" \
"../../../bd/design_2/ip/design_2_sccb_interface_0_0/sim/design_2_sccb_interface_0_0.v" \
"../../../bd/design_2/sim/design_2.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3  -sv2k12 "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../debug_prog.srcs/sources_1/bd/design_2/ipshared/1313/hdl" "+incdir+D:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_processing_system7_0_0/sim/design_2_processing_system7_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

