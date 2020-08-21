
.PHONY: clean


prog: main.a51
	c51asm main.a51
	cp main.a51 main.asm

clean:
	rm -f main.hex main.lst main.asm
