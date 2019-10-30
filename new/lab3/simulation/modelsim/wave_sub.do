onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab3_vhd_tst/clk
add wave -noupdate /lab3_vhd_tst/Run
add wave -noupdate /lab3_vhd_tst/Resetn
add wave -noupdate /lab3_vhd_tst/Bus_out
add wave -noupdate /lab3_vhd_tst/DIN
add wave -noupdate /lab3_vhd_tst/Done
add wave -noupdate /lab3_vhd_tst/i1/state_machine/state
add wave -noupdate /lab3_vhd_tst/i1/R1/q
add wave -noupdate /lab3_vhd_tst/i1/R0/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {29774 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 271
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {168 ns}
