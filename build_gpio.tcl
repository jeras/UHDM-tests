plugin -i systemverilog

#+define+LANGUAGE_UNSUPPORTED_ARRAY_ASSIGNMENT_PATTERN \

# SystemVerilog RTL
read_systemverilog \
-top tcb_gpio_wrap \
-parse tcb_if.sv tcb_gpio.sv tcb_gpio_wrap.sv

synth_xilinx -top tcb_gpio_wrap -edif top.edif

