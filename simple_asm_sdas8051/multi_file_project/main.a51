.title(program)

.local start
.globl delay

.globl foo1, foo_add
.globl bar1, bar_add

.area MAIN(code, abs)
.org 0x0000
    ;; mov SP, #0x50
    ;; mov SP, #0x07 ;; default
    mov A, #0xAA
    push A
    mov A, #0
    pop A
    ljmp start

.org 0x0020
start:
    lcall delay
    cpl P0.0
    cpl P1.0
    cpl P2.0
    cpl P3.0
    ajmp start
    ljmp start
    lcall foo1
    lcall foo_add
    lcall bar1
    lcall bar_add

.org 0x050
delay:
    mov r1, #0xFF
outer:
    mov r0, #0xFF
inner:
    djnz R0, inner
    djnz R1, outer
    ret

