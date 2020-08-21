#!/bin/bash -x

rm -f *.LST *.OBJ *.ABS *.M51 *.hex

A51 lib_foo.a51
A51 lib_bar.a51
A51 main.a51

BL51.EXE lib_foo.OBJ,lib_bar.OBJ,main.OBJ TO main.ABS
OH51 MAIN.ABS

