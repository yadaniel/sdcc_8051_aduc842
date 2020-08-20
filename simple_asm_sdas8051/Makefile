
.PHONY: clean


prog: main.a51
	sdas8051.exe -los main.a51
	sdld -i main
	packihx main.ihx > main.hex
	cp main.a51 main.asm

clean:
	rm -f main.ihx main.hex main.lst main.rel main.sym main.asm
