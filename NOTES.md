# note per jeff0falltrades

- assembly x86

- E per il pre-processing
- S per la compilazione!
- c per l'assmblazione!

    xxd -b practice.exe > practive.exe.bin
    process hacker (programma per vedere composizione RAM)

.text -> .data -> .bss -> heap -> stack (da bassi ad alti!)
da 0000 0000 a 7fff ffff (7 per il complemento a 2!)

-----------------------------------
|   Kernel Space                  | <- Memoria riservata al kernel
-----------------------------------
|   Stack                         | <- Variabili locali, frame di funzione
|   (crescente verso il basso)    |
-----------------------------------
|   Mapped Memory (mmap, shared)  | <- Memoria mappata (librerie, file)
-----------------------------------
|   Thread Local Storage (TLS)    | <- Dati privati per thread
-----------------------------------
|   Heap                          | <- Allocazione dinamica (malloc, new, ...)
|   (crescente verso l'alto)      |
-----------------------------------
|   .bss                          | <- Variabili globali non inizializzate
-----------------------------------
|   .data                         | <- Variabili globali inizializzate
-----------------------------------
|   .rodata                       | <- Dati solo lettura (es. stringhe costanti)
-----------------------------------
|   .text                         | <- Codice eseguibile del programma
-----------------------------------
|   NULL (indirizzo 0)            | <- Accesso vietato (protezione)
-----------------------------------

esempio di hello world!
section .data
    msg db "Hello, World!", 0xA
    len equ $ - msg

section .text
    global_start ; Entry point per l'assembler/linker

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 60
    xor rdi, rdi ; rdi = 0
    syscall

OCCHIO AI REGISTRI DI SEGMENTAZIONE (16! COME fs ad esempio!)

stack unwinding!
ricorda che a volte i parametri possono essere passati
attraverso stack!
altrimenti
rdi, rsi, rdx, rcx, r8, r9 (poi stack)

calling conventions (3!, tra cui fastcall)

**cose che devo vedere**
1) live overflow (+esercizi allegati)
2) gdb mod
3) gdb guide
4) video in guarda piu' tardi
6) libri che ho scaricato (ovviamente non tutti!)
7) video sul reverse
8) libro su ghidra
9) picoCTF *tutto* definitivamente, con repo ordinata!

