transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/users/zicew/git/ece327/new/lab4/fsm.vhd}

vcom -93 -work work {/users/zicew/git/ece327/new/lab4/simulation/modelsim/fsm.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  fsm_vhd_tst

add wave *
view structure
view signals
run -all
