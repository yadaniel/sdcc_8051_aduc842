CC = sdcc
CFLAGS = -c -mmcs51 --model-small
LDFLAGS = --model-small --code-loc 0x0000 --code-size 0xF800 --xram-size 0x800

C_FILES = main.c interrupt.c
ASM_FILES = $(patsubst %.c, %.asm, $(C_FILES))
OBJ_FILES = $(patsubst %.c, %.rel, $(C_FILES))
BASE_FILES = $(patsubst %.c, %, $(C_FILES))

.phony: clean cleanall show

%.rel: %.c
	sdcc $(CFLAGS) $<

%.rel: %.asm
	asx8051 -losa $<

hex: $(OBJ_FILES)
	sdcc $(LDFLAGS) $^
	packihx main.ihx > main.hex

clean:
	$(foreach F , $(BASE_FILES), rm -f $F.{asm,rel,lst,sym,rst})

cleanall: clean
	rm -f main.{ihx,lk,map,mem}

show:
	@echo $(C_FILES)
	@echo $(ASM_FILES)
	@echo $(OBJ_FILES)
	@echo $(BASE_FILES)


