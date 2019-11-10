onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fsm_vhd_tst/addreg
add wave -noupdate /fsm_vhd_tst/busy
add wave -noupdate /fsm_vhd_tst/clk
add wave -noupdate /fsm_vhd_tst/count
add wave -noupdate /fsm_vhd_tst/done
add wave -noupdate /fsm_vhd_tst/is_done
add wave -noupdate /fsm_vhd_tst/loadreg
add wave -noupdate /fsm_vhd_tst/rst
add wave -noupdate /fsm_vhd_tst/sel
add wave -noupdate /fsm_vhd_tst/sel_out
add wave -noupdate /fsm_vhd_tst/shiftreg
add wave -noupdate /fsm_vhd_tst/start
add wave -noupdate /fsm_vhd_tst/i1/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6035 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 192
configure wave -valuecolwidth 39
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {234954 ps}
