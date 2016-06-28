#!/bin/sh
#build minicrt.a
gcc -c -fno-builtin -nostdlib -fno-stack-protector -m32 ../src/entry.c ../src/malloc.c ../src/stdio.c ../src/string.c ../src/printf.c
ar -rs minicrt.a malloc.o printf.o stdio.o string.o

