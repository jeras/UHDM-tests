# 
# Run this script as:
# yosys -s build_gpr.tcl
#

plugin -i systemverilog

#+define+LANGUAGE_UNSUPPORTED_ARRAY_ASSIGNMENT_PATTERN \

# SystemVerilog RTL
read_systemverilog \
-top r5p_gpr \
-parse r5p_gpr.sv

synth_xilinx -top r5p_gpr -edif top.edif

#hierarchy -top r5p_gpr

#write_ilang

#proc
#opt

#show -format ps #dot -viewer xdot

#techmap; opt

# SoC files

