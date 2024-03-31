nc jupiter.challenges.picoctf.org 44566

qui occorre sapere qualcosa sui numeri in complemento a 2
che sono memorizzati nel computer

in c, gli int sono dei ca2 a 32 bit
valore MASSIMO => 2^(32 -1) -1 
- alla 31 perche' a 32 tolgo 1 per il bit di segno
- -1 alla fine in quanto il valore iniziale e' 0 (pensare a 2 cifre base 10 => 99)

quando do' a un programma un numero abbastanza grande
o e' troppo grande e quindi non lo prende, si aspetta un int e diamo un long...

==> oppure lo prende e una operazione interna risulta in un overflow!

il ca2 e' ciclico
con 4 bit, 7 + 3 fa -6
massimo valore 7 => aggiungo 3 => -8 => -7 => -6!

in formula
2^(n bit -1) - modulo della somma con 2^(nbit -1) => tutto negativo

esempio
30 e 15 con 6 bit
valore massimo => 2^5 = 32

OVERFLOW? CERTO
(30 + 15) % 32 = 13   //posso immaginare anche di star sottraendo 19 :)
32 - 13 = 19
RISULTATO ==> -19 di overflow



insomma, fornendo un int abbastanza grande da generare un overflow con un operazione
interna al programma, l'overflow dell'int risultera' in un valore negativo
se poi questo valore aggiornera' il nostro conto... avremo un incremento di soldi :))
