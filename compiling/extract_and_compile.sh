#!/bin/bash
tar -xvzf ./NthPrime.tgz
cd NthPrime || exit
gcc -o NthPrime nth_prime.c main.c
./NthPrime "$1"



