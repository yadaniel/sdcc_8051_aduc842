.area FOO (code)
.area BAR (code)
.area CSEG (abs, code)

.org 0x0000
    ;; mov SP, #0x50
    mov A, #0xAA
    push A
    push A
    mov A, #0
    pop A
    pop A
    ljmp start

.org 0x0010
start:
    lcall delay
    cpl P0.0
    cpl P1.0
    cpl P2.0
    cpl P3.0
    lcall addfunc
    ;;lcall multfunc
    ajmp start
    ljmp start

;; .org 0x0020
;; not enough space for start
;; carefull with placing code at some location, when more space is needed the ljmp target will be wrong
.org 0x0024
delay:
    mov r1, #0xFF
outer:
    mov r0, #0xFF
inner:
    djnz R0, inner
    djnz R1, outer
    ret

.org 0x0030
addfunc:
    ;; mov R0, #1
    ;; mov A, #127
    ;; mov A, #255
    ;; inc A
    ;; add A, R0
    clr A
    inc A
    inc A
    inc A
    inc A
    orl PSW, #0b1000
    mov R0, #0b00000001
    mov R1, #0b00000010
    mov R2, #0b00000100
    mov R3, #0b00001000
    mov R4, #0b00010000
    mov R5, #0b00100000
    mov R6, #0b01000000
    mov R7, #0b10000000
    orl PSW, #0b10000
    mov R0, #0b00000011
    mov R1, #0b00000110
    mov R2, #0b00001100
    mov R3, #0b00011000
    mov R4, #0b00110000
    mov R5, #0b01100000
    mov R6, #0b11000000
    mov R7, #0b10000001
    anl PSW, #0b11100111
    ret

.org 0x0050
multfunc:
    mov A, #1
loop:
    mov B, #2
    mul AB
    jnb A.7, loop
    ret

unused_func:
    mov A, #0
    mov ACC, #0
    setb PSW.5  ;; F0
    setb F0
    clr F0
    clr PSW.5
    ret

;; end
;; not required by sdas8051

