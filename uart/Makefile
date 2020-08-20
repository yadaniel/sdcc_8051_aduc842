CC = sdcc
CFLAGS = -mmcs51 --model-small --code-loc 0x0000
# CFLAGS = -mmcs51 --model-small --code-loc 0x0000 --xram-loc=0xB000

.phony: clean

main:
	sdcc $(CFLAGS) main.c
	mv main.ihx main.hex

clean:
	rm -f main.hex

