Dump of assembler code for function duckling:
   0x00000000004014a0 <+0>:	endbr64
   0x00000000004014a4 <+4>:	push   rbp
   0x00000000004014a5 <+5>:	mov    rbp,rsp
   0x00000000004014a8 <+8>:	sub    rsp,0x90
   0x00000000004014af <+15>:	mov    rax,QWORD PTR fs:0x28
   0x00000000004014b8 <+24>:	mov    QWORD PTR [rbp-0x8],rax
   0x00000000004014bc <+28>:	xor    eax,eax
   0x00000000004014be <+30>:	mov    QWORD PTR [rbp-0x80],0x0
   0x00000000004014c6 <+38>:	mov    QWORD PTR [rbp-0x78],0x0
   0x00000000004014ce <+46>:	mov    QWORD PTR [rbp-0x70],0x0
   0x00000000004014d6 <+54>:	mov    QWORD PTR [rbp-0x68],0x0
   0x00000000004014de <+62>:	mov    QWORD PTR [rbp-0x60],0x0
   0x00000000004014e6 <+70>:	mov    QWORD PTR [rbp-0x58],0x0
   0x00000000004014ee <+78>:	mov    QWORD PTR [rbp-0x50],0x0
   0x00000000004014f6 <+86>:	mov    QWORD PTR [rbp-0x48],0x0
   0x00000000004014fe <+94>:	mov    QWORD PTR [rbp-0x40],0x0
   0x0000000000401506 <+102>:	mov    QWORD PTR [rbp-0x38],0x0
   0x000000000040150e <+110>:	mov    QWORD PTR [rbp-0x30],0x0
   0x0000000000401516 <+118>:	mov    QWORD PTR [rbp-0x28],0x0
   0x000000000040151e <+126>:	mov    QWORD PTR [rbp-0x20],0x0
   0x0000000000401526 <+134>:	mov    QWORD PTR [rbp-0x18],0x0
   0x000000000040152e <+142>:	lea    rax,[rip+0x17e8]        # 0x402d1d
   0x0000000000401535 <+149>:	mov    rdi,rax
   0x0000000000401538 <+152>:	mov    eax,0x0
   0x000000000040153d <+157>:	call   0x401120 <printf@plt>
   0x0000000000401542 <+162>:	mov    rax,QWORD PTR [rip+0x3ac7]        # 0x405010 <stdout@GLIBC_2.2.5>
   0x0000000000401549 <+169>:	mov    rdi,rax
   0x000000000040154c <+172>:	call   0x401170 <fflush@plt>
   0x0000000000401551 <+177>:	lea    rax,[rbp-0x80]
   0x0000000000401555 <+181>:	mov    edx,0x66
   0x000000000040155a <+186>:	mov    rsi,rax
   0x000000000040155d <+189>:	mov    edi,0x0
   0x0000000000401562 <+194>:	call   0x401160 <read@plt>
   0x0000000000401567 <+199>:	lea    rax,[rbp-0x80]
   0x000000000040156b <+203>:	lea    rdx,[rip+0x17bf]        # 0x402d31
   0x0000000000401572 <+210>:	mov    rsi,rdx
   0x0000000000401575 <+213>:	mov    rdi,rax
   0x0000000000401578 <+216>:	call   0x4011c0 <strstr@plt>
   0x000000000040157d <+221>:	mov    QWORD PTR [rbp-0x88],rax
   0x0000000000401584 <+228>:	cmp    QWORD PTR [rbp-0x88],0x0
   0x000000000040158c <+236>:	jne    0x4015a7 <duckling+263>
   0x000000000040158e <+238>:	lea    rax,[rip+0x17ab]        # 0x402d40
   0x0000000000401595 <+245>:	mov    rdi,rax
   0x0000000000401598 <+248>:	call   0x4012b6 <error>
   0x000000000040159d <+253>:	mov    edi,0x520
   0x00000000004015a2 <+258>:	call   0x4011b0 <exit@plt>
   0x00000000004015a7 <+263>:	mov    rax,QWORD PTR [rbp-0x88]
   0x00000000004015ae <+270>:	add    rax,0x20
   0x00000000004015b2 <+274>:	mov    rsi,rax
   0x00000000004015b5 <+277>:	lea    rax,[rip+0x17a4]        # 0x402d60
   0x00000000004015bc <+284>:	mov    rdi,rax
   0x00000000004015bf <+287>:	mov    eax,0x0
   0x00000000004015c4 <+292>:	call   0x401120 <printf@plt>
   0x00000000004015c9 <+297>:	lea    rax,[rbp-0x60]
   0x00000000004015cd <+301>:	mov    edx,0x6a
   0x00000000004015d2 <+306>:	mov    rsi,rax
   0x00000000004015d5 <+309>:	mov    edi,0x0
   0x00000000004015da <+314>:	call   0x401160 <read@plt>
   0x00000000004015df <+319>:	lea    rax,[rip+0x17aa]        # 0x402d90
   0x00000000004015e6 <+326>:	mov    rdi,rax
   0x00000000004015e9 <+329>:	call   0x401100 <puts@plt>
   0x00000000004015ee <+334>:	nop
   0x00000000004015ef <+335>:	mov    rax,QWORD PTR [rbp-0x8]
   0x00000000004015f3 <+339>:	sub    rax,QWORD PTR fs:0x28
   0x00000000004015fc <+348>:	je     0x401603 <duckling+355>
   0x00000000004015fe <+350>:	call   0x401110 <__stack_chk_fail@plt>
   0x0000000000401603 <+355>:	leave
   0x0000000000401604 <+356>:	ret
End of assembler dump.
