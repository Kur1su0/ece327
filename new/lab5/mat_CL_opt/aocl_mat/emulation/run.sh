#!/bin/bash
size=$1
PROJECT=mat_cl
set -e -x
export CL_CONTEXT_EMULATOR_DEVICE_ALTERA=1
export AOCL_BOARD_PACKAGE_ROOT="/usr/commercial_amd64/altera/15.1/hld/board/bittware/s5_mac"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ALTERAOCLSDKROOT/host/linux64/lib:$AOCL_BOARD_PACKAGE_ROOT/linux64/lib

aoc -g -v -L . -march=emulator ../device/${PROJECT}.cl



make clean
make
cp $PROJECT.aocx bin/
cd bin
./mat src/M1_${size}.bin src/M2_${size}.bin src/V_${size}.bin a_${size}.bin m_${size}.bin