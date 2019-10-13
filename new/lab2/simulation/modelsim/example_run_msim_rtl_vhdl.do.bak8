transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab2/FSM.vhd}

vcom -93 -work work {C:/Users/W/Documents/ece327/new/lab2/simulation/modelsim/FSM.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  FSM_vhd_tst

add wave *
view structure
view signals
run -all
