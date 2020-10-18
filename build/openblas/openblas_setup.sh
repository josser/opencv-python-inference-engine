#!/bin/bash

# Please refer here for details: <https://github.com/xianyi/OpenBLAS/issues/2528>
#
# If you compile it with `make FC=gfortran`,
# you'll need `libgfortran.so.4` and `libquadmath.so.0`

cmake -D NO_LAPACKE=1 \
      -D CMAKE_BUILD_TYPE=Release \
      -D NOFORTRAN=ON \
      -D BUILD_RELAPACK=OFF \
      -D NO_AFFINITY=1 \
      -D USE_OPENMP=0 \
      -D NO_WARMUP=1 \
      -D NUM_THREADS=64 \
      -D GEMM_MULTITHREAD_THRESHOLD=64 \
      -D BUILD_SHARED_LIBS=ON \
      -D CMAKE_INSTALL_PREFIX=./ ../../openblas/
