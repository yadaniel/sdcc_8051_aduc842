
 .globl foo_add
 .globl foo_mult
 .globl foo_shift
 .globl foo, foo1, foo2, foo3, foo4

.local _cnt

.area FOO (code, abs)
.org 0x0100

foo1:
    inc A
    sjmp foo2
foo2: 
    inc A
    sjmp foo3
foo3: 
    inc A
    sjmp foo4
foo4: 
    inc A
    sjmp foo
foo: ret

foo_add:
foo_mult:
foo_shift:
    ret


