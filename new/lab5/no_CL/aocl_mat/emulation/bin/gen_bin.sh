size=$1

./gen $size $size src/M1_${size}.bin
./gen $size $size src/M2_${size}.bin
./gen $size 1 src/V_${size}.bin

#./lab5 src/M1_${size}.bin src/M2_${size}.bin src/V_${size}.bin src/a_out_${size}.bin src/m_out_${size}.bin
