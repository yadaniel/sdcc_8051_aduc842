#!/bin/bash -x

rm -f main.hex main.ihx main.lst main.sym

sdas8051.exe -los main.a51
sdld -i main
packihx main.ihx > main.hex

