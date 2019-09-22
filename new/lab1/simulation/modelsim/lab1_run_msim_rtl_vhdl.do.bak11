transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/users/zicew/ece327/new/lab1/p5_comp3.vhd}
vcom -93 -work work {/users/zicew/ece327/new/lab1/p5_comp2.vhd}
vcom -93 -work work {/users/zicew/ece327/new/lab1/p5_comp.vhd}
vcom -93 -work work {/users/zicew/ece327/new/lab1/p5.vhd}
vcom -93 -work work {/users/zicew/ece327/new/lab1/p3.vhd}
vcom -93 -work work {/users/zicew/ece327/new/lab1/p2.vhd}

vcom -93 -work work {/users/zicew/ece327/new/lab1/simulation/modelsim/part5.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  part5_vhd_tst

add wave *
view structure
view signals
run -all
