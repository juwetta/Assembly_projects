#!/bin/bash

set -e

asmFile = $1

nasm -f elf32 $asmFile -o proj.o
ld -m elf_i386 proj.o -o proj
