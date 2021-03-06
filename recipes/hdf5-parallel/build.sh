#!/bin/bash

# pick up SLAC's site-specific version of openmpi (LSF aware)
# could perhaps replace this with mpi4py as a build/run dependency
# since it sets this when the env gets activated.
export PATH=/reg/common/package/openmpi/openmpi-4.0.2-verbs-lsf/install/bin:$PATH
export CC=mpicc
export CXX=mpicxx
export FC=mpif90
./configure --prefix=$PREFIX --enable-largefile --enable-unsupported --enable-build-mode=production --with-pthread --with-zlib=$PREFIX --with-ssl --enable-parallel --enable-shared --enable-cxx --enable-fortran
make -j${CPU_COUNT}
make install
