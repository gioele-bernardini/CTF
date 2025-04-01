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

# keygen video

aaa
s sym.main
pdf
ood <wrong_key>
db <cmp>
dc
dr
dr rip = <printa il success>

trovare il loop
afvm previos name i

<python script per il keygen>


## STRIPPED BINARY
info files
x/20i *<address>
break __libc_start_main

## Per le challenge
0xcfd2bc5b
x/158xb $rax
dump binary memory <file> <start> <end>


BUFFER OVERFLOW
ssh
/bin/sh (echo $SHELL)
setuid in file <file>
gdb e il drop dei privilegi

<hook di gdb, da controllare>

x win // esamino la funzione windows (info functions)
python asd.py > exp # qui posso usare byte!

import struct! struct.pack

## Buffer overflow con privilegi! (shellcode)
possiamo mettere codice nello stack
// payload += \xCC
codice originale <=> lista dei break di GDB
 r < /tmp/exp (anche da gdb per iniettare il payload!)

occhio alla variabile di ambiente di esecuzione!
come rimedio?
1) env -i ./my_program unset env
2) nop operation

shellstorm per miriade di shell code
ls -la /bin/sh (per vedere che punta a dash!)

QUALE E' IL PROBLEMA TOP?
la shell si chiude subito come rimedio?
cat
(python <exploit> ; cat) | ./challenge

## LEZIONE 0X10
problema di __builtin_return_address(int: innest);
problema ulteriore => gli indirizzi nello stack iniziano con 0xbf
ergo, non possiamo ritornare a uno stack address!

soluzione generale
=> W^X (NX)

ret2libc
lancio gdb (p system per ottenere address __Libc_system!)
strings -a -t -x /lib/libc-2.11.2.so " grep "/bin/sh"
e copio l'offset nel payload???

## Reversing C programs (64 bit vs 32!)
molto interessante paper sul reversing C++
differenze banali con for, while
40 080 per capire che siamo nella porzione di codice (64, 32)
(non ho ben capito insomma faro' un esercizio)

## 10 (format string!)
problema principale di printf => variadico (inevitabile!)
"` per fare robe fighe una dopo l'altra

## GOT e PLT
ldd ./challenge
se aslr e' abilitato a livello di sistema, cambiera'
il base address di libc... ma se non lo e' nel programma...
beh, vuol dire che la GOT sara' sempre allo stesso posto!

## Parte 2
quindi hello %x %x per vedere se succede qualcosa
x <funzione utile>
vado nella funzione called e x <indirizzo sottofunzione utile>
(ad esempio exit())
=> andro' allora al plt
funzionamento: plt => got => plt (la prima volta!)

set {int}<indirizzo got>=<indirizzo utile>
script fighissimo che devi rivedere in vanilla python
%n e problema del numero


