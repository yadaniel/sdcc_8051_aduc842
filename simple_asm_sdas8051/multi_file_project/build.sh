#!/bin/bash -x

# combined
rm -f *.lst *.rel *.sym *.map
sdas8051.exe -los main.rel main.a51 lib_foo.a51 lib_bar.a51
# rel files are not created for each file
# main.rel is output file
# sdld -m -i main.rel
# hex file shorter, probably missing parts
sdld -m -i main main.rel
packihx main.ihx > main.hex
mv main.ihx main_combined.ihx
mv main.hex main_combined.hex

# separate
rm -f *.lst *.rel *.sym *.map
sdas8051.exe -los main.a51
sdas8051.exe -los lib_foo.a51
sdas8051.exe -los lib_bar.a51
# sdld -m -i main.rel lib_foo.rel lib_bar.rel
# hex file shorter, probably missing parts
sdld -m -i main main.rel lib_foo.rel lib_bar.rel
packihx main.ihx > main.hex
mv main.ihx main_separate.ihx
mv main.hex main_separate.hex

