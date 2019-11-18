transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/lab4.vhd}
vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/fsm.vhd}
vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/real_adder.vhd}
vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/regB.vhd}
vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/regC.vhd}
vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/two_one_mux.vhd}
vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/regD.vhd}
vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/mux.vhd}
vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/regA.vhd}
vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/Adder.vhd}

vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab4/simulation/modelsim/lab4.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  lab4_vhd_tst

add wave *
view structure
view signals
run -all
