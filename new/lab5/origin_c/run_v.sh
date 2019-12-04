size=$1

#./gen $size $size M1.bin v
#./gen $size $size M2.bin v
#./gen $size 1 V.bin v

./lab5 src/M1_${size}.bin src/M2_${size}.bin src/V_${size}.bin a_out.bin m_out.bin -v
