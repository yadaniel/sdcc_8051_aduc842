
.PHONY: clean cleanall debug

SRC = main.a51 lib_foo.a51 lib_bar.a51
# SRC = lib_foo.a51 lib_bar.a51 main.a51
REL = $(patsubst %.a51, %.rel, $(SRC))

%.rel: %.a51
	sdas8051.exe -los $<

prog: $(REL)
	sdld -im main $(REL)
	packihx main.ihx > main.hex
	mv main.ihx main__make.ihx
	mv main.hex main__make.hex

debug:
	@echo $(SRC)
	@echo $(REL)

clean:
	rm -f *.lst *.rel *.sym *.map

cleanall:
	rm -f *.ihx *.hex *.lst *.rel *.sym *.map

all: cleanall prog
	./build.sh
	ls -l *.ihx
	ls -l *.hex

