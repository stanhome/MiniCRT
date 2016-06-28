#!/bin/sh

#build test
gcc -c -ggdb -fno-builtin -nostdlib -fno-stack-protector -m32 test.c
ld -m elf_i386 -static -e mini_crt_entry ../build/entry.o test.o ../build/minicrt.a -o test

