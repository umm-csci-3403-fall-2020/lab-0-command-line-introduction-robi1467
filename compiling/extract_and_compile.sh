#!/usr/bin/env bash
# A Shell Script that takes two arguemnts--- one a number and the other a dir---

NUMBER=$1
#DIR_NAME=$2
FileToTar=NthPrime.tgz
tar -xzf $FileToTar
cd NthPrime || exit
gcc nth_prime.c nth_prime.h main.c -o NthPrime
./NthPrime "$NUMBER"
