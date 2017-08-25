#! /bin/bash

#http://jblevins.org/log/openmp

# we can compile the program as usual and run it,
gfortran -O3 -o mc1_serial.out mc1.f90
./mc1_serial.out
./mc1_serial.out >> serial_result.dat

# we compile the program with OpenMP and run it
gfortran -O3 -fopenmp -o mc1_parallel.out mc1.f90
./mc1_parallel.out
./mc1_parallel.out >> parallel_result.dat



## If this doesn’t work immediately on your system, you may need to set the OMP_NUM_THREADS environment variable depending on the number of processors in your system. For example, in bash, zsh, and other compatible shells for a system with 16 processors:

##  export OMP_NUM_THREADS=16