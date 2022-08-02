# 
# Run this script as:
# yosys -s build.tcl
#

plugin -i systemverilog

# SystemVerilog RTL
read_systemverilog -top test_union \
-parse riscv_isa_pkg.sv riscv_isa_c_pkg.sv test_union.sv

synth_xilinx -top test_union -edif top.edif

#hierarchy -top r5p_core

#write_ilang

#proc
#opt

#show -format ps #dot -viewer xdot

#techmap; opt

# SoC files

