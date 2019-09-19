transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/users/zicew/ece327/new/lab0/example_board.vhd}
vcom -93 -work work {/users/zicew/ece327/new/lab0/example.vhd}

vcom -93 -work work {/users/zicew/ece327/new/lab0/simulation/modelsim/example.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  example_vhd_tst

add wave *
view structure
view signals
run -all
