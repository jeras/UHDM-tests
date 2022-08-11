# 
# Run this script as:
# yosys -s build_gpr.tcl
#

plugin -i systemverilog

#+define+LANGUAGE_UNSUPPORTED_STREAM_OPERATOR \

# SystemVerilog RTL
read_systemverilog \
-top test_reverse \
-parse test_reverse.sv

synth_xilinx -top test_reverse -edif top.edif

#hierarchy -top test_reverse

#write_ilang

#proc
#opt

#show -format ps #dot -viewer xdot

#techmap; opt

# SoC files

