#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Error: Must provide shared object file path"
    exit 1
fi

set -ex

ls -la "$1" > dump_mangled.txt
greadelf -aW "$1" >> dump_mangled.txt
llvm-objdump -print-imm-hex --source --disassemble "$1" >> dump_mangled.txt
sed s/://g < dump_mangled.txt | rustfilt > dump.txt

