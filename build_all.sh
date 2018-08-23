#!/usr/bin/env bash


for OPENCV in 0 1
do

for OPENMP in 0 1
do

for GCC_VER in 4.8 5 6 7 8
do
	export CC=gcc-${GCC_VER}
	export EXEC=darknet-${CC}-${OPENCV}-${OPENMP}
	export SLIB=libdarknet-${CC}-${OPENCV}-${OPENMP}.so
	export ALIB=libdarknet-${CC}-${OPENCV}-${OPENMP}.a
	make clean
	make -j8
done # endfor GCC_VER

for CLANG_VER in 3.8 3.9 4.0 5.0 6.0 7
do
	export CC=clang-${CLANG_VER}
	export EXEC=darknet-${CC}-${OPENCV}-${OPENMP}
	export SLIB=libdarknet-${CC}-${OPENCV}-${OPENMP}.so
	export ALIB=libdarknet-${CC}-${OPENCV}-${OPENMP}.a
	make clean
	make -j8
done # endfor CLANG_VER

done # endfor OPENMP

done # endfor OPENCV
