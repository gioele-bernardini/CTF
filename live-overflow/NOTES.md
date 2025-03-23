run *main
ni
si
<plt, got>
break *<indirizzo del test>

continue
info registers
set $eax=0

<printable char assigned (blue)>
objdump -x -d <file>; stack eseguibile
x/s (valore dentro un registro come parametro strcmp)

strace ./license1
ltrace ./license1

hopper!

radare2
- aaa
- afl
- ?

- s sym.main (tab colpletion)
- pdf
- VV (tab shift tab shift jkl (vim), p, ?, shift r)
- rd -d <file>
s sym.

db
: dc
s, shift s


## STRIPPED BINARY
info files
x/20i *<address>
break __libc_start_main

## Per le challenge
0xcfd2bc5b
x/158xb $rax
dump binary memory <file> <start> <end>
