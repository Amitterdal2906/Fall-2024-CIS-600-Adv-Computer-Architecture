transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/navee/OneDrive/Documents/eec18/JAN29_Assignment/inst_mem_128B.vhd}
vcom -93 -work work {C:/Users/navee/OneDrive/Documents/eec18/JAN29_Assignment/data_mem_64B.vhd}
vcom -93 -work work {C:/Users/navee/OneDrive/Documents/eec18/JAN29_Assignment/alu_32.vhd}
vcom -93 -work work {C:/Users/navee/OneDrive/Documents/eec18/JAN29_Assignment/hex.vhd}
vcom -93 -work work {C:/Users/navee/OneDrive/Documents/eec18/JAN29_Assignment/mips.vhd}
vcom -93 -work work {C:/Users/navee/OneDrive/Documents/eec18/JAN29_Assignment/ALU.vhd}
vcom -93 -work work {C:/Users/navee/OneDrive/Documents/eec18/JAN29_Assignment/microcomputer.vhd}

