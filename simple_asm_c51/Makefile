
.PHONY: clean

SRC = lib_foo.a51 lib_bar.a51 main.a51
OBJ = $(patsubst %.a51, %.OBJ, $(SRC))

null  :=
space := $(null) #
comma := ,
OBJ_LIST := $(subst $(space),$(comma),$(strip $(OBJ)))

%.OBJ: %.a51
	A51 $<

prog: $(OBJ)
	BL51 $(OBJ_LIST) TO main.ABS
	OH51 MAIN.ABS

clean:
	rm -f *.OBJ *.LST *.ABS *.M51 *.hex

