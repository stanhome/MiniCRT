# MiniCRT
Mini CRT for study c/c++

## Project
### - src
source codes.

### - build
build script

### - test
test for mini crt project.

## Build
### - Linux

##### method 1:
run build/build.sh

##### method 2:
```
$ gcc -c -fno-builtin -nostdlib -fno-stack-protector -m32 entry.c malloc.c stdio.c string.c printf.c
$ ar -rs minicrt.a malloc.o printf.o stdio.o string.o
ar: creating minicrt.a   
```

### -Windows
```
>cl /c /DWIN32 /GS- entry.c malloc.c printf.c stdio.c string.c
>lib entry.obj malloc.obj printf.obj stdio.obj string.obj /OUT:minicrt.lib
