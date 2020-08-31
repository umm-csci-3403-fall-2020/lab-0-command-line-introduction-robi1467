#!/usr/bin/env bash
# A Shell Script that takes two arguemnts--- one a number and the other a dir---

#CONSTANTS
NUMBER=$1
FileToTar=NthPrime.tgz

#MAIN
#UNARCHIVING
tar -xzf $FileToTar
cd NthPrime || exit
#COMPILINng
gcc nth_prime.c main.c -o NthPrime
#RUNING
./NthPrime "$NUMBER"
#END
