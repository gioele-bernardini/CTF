No symbol table is loaded.  Use the "file" command.
Dump of assembler code for function duck_attack:
   0x000000000040137f <+0>:	endbr64
   0x0000000000401383 <+4>:	push   rbp
   0x0000000000401384 <+5>:	mov    rbp,rsp
   0x0000000000401387 <+8>:	sub    rsp,0x10
   0x000000000040138b <+12>:	mov    rax,QWORD PTR fs:0x28
   0x0000000000401394 <+21>:	mov    QWORD PTR [rbp-0x8],rax
   0x0000000000401398 <+25>:	xor    eax,eax
   0x000000000040139a <+27>:	mov    esi,0x0
   0x000000000040139f <+32>:	lea    rax,[rip+0xc8d]        # 0x402033
   0x00000000004013a6 <+39>:	mov    rdi,rax
   0x00000000004013a9 <+42>:	mov    eax,0x0
   0x00000000004013ae <+47>:	call   0x401190 <open@plt>
   0x00000000004013b3 <+52>:	mov    DWORD PTR [rbp-0xc],eax
   0x00000000004013b6 <+55>:	cmp    DWORD PTR [rbp-0xc],0x0
   0x00000000004013ba <+59>:	jns    0x4013ed <duck_attack+110>
   0x00000000004013bc <+61>:	lea    rax,[rip+0xc7d]        # 0x402040
   0x00000000004013c3 <+68>:	mov    rdi,rax
   0x00000000004013c6 <+71>:	call   0x4011a0 <perror@plt>
   0x00000000004013cb <+76>:	mov    edi,0x1
   0x00000000004013d0 <+81>:	call   0x4011b0 <exit@plt>
   0x00000000004013d5 <+86>:	movzx  eax,BYTE PTR [rbp-0xd]
   0x00000000004013d9 <+90>:	movsx  eax,al
   0x00000000004013dc <+93>:	mov    rdx,QWORD PTR [rip+0x3c2d]        # 0x405010 <stdout@GLIBC_2.2.5>
   0x00000000004013e3 <+100>:	mov    rsi,rdx
   0x00000000004013e6 <+103>:	mov    edi,eax
   0x00000000004013e8 <+105>:	call   0x401150 <fputc@plt>
   0x00000000004013ed <+110>:	lea    rcx,[rbp-0xd]
   0x00000000004013f1 <+114>:	mov    eax,DWORD PTR [rbp-0xc]
   0x00000000004013f4 <+117>:	mov    edx,0x1
   0x00000000004013f9 <+122>:	mov    rsi,rcx
   0x00000000004013fc <+125>:	mov    edi,eax
   0x00000000004013fe <+127>:	call   0x401160 <read@plt>
   0x0000000000401403 <+132>:	test   rax,rax
   0x0000000000401406 <+135>:	jg     0x4013d5 <duck_attack+86>
   0x0000000000401408 <+137>:	mov    eax,DWORD PTR [rbp-0xc]
   0x000000000040140b <+140>:	mov    edi,eax
   0x000000000040140d <+142>:	call   0x401140 <close@plt>
   0x0000000000401412 <+147>:	nop
   0x0000000000401413 <+148>:	mov    rax,QWORD PTR [rbp-0x8]
   0x0000000000401417 <+152>:	sub    rax,QWORD PTR fs:0x28
   0x0000000000401420 <+161>:	je     0x401427 <duck_attack+168>
   0x0000000000401422 <+163>:	call   0x401110 <__stack_chk_fail@plt>
   0x0000000000401427 <+168>:	leave
   0x0000000000401428 <+169>:	ret
End of assembler dump.
