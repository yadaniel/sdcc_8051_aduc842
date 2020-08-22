
.globl bar_add
.globl bar_mult
.globl bar_shift
.globl bar1, bar2, bar3, bar4

.local _cnt

.area BAR (code, abs)
.org 0x0200

bar1: inc A
bar2: inc A
bar3: inc A
bar4: inc A
    ret

bar_add:
bar_mult:
bar_shift:
    ret
