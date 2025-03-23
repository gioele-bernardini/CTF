
=> 0x555555555283:	push   r15
   0x555555555285:	push   r14
   0x555555555287:	push   r13
   0x555555555289:	push   r12
   0x55555555528b:	push   rbp
   0x55555555528c:	push   rbx
   0x55555555528d:	sub    rsp,0x48
   0x555555555291:	mov    rax,QWORD PTR fs:0x28
   0x55555555529a:	mov    QWORD PTR [rsp+0x38],rax
   0x55555555529f:	xor    eax,eax
   0x5555555552a1:	call   0x555555555110 <initscr@plt>
   0x5555555552a6:	call   0x555555555100 <cbreak@plt>
   0x5555555552ab:	call   0x555555555030 <noecho@plt>
   0x5555555552b0:	mov    edi,0x0
   0x5555555552b5:	call   0x555555555070 <curs_set@plt>
   0x5555555552ba:	mov    esi,0x1
   0x5555555552bf:	mov    rdi,QWORD PTR [rip+0x2f5a]        # 0x555555558220 <stdscr>
   0x5555555552c6:	call   0x5555555550e0 <keypad@plt>
   0x5555555552cb:	mov    rdi,QWORD PTR [rip+0x2f4e]        # 0x555555558220 <stdscr>
   0x5555555552d2:	call   0x555555555080 <getmaxy@plt>
   0x5555555552d7:	mov    ebx,eax
   0x5555555552d9:	mov    rdi,QWORD PTR [rip+0x2f40]        # 0x555555558220 <stdscr>
   0x5555555552e0:	call   0x5555555550d0 <getmaxx@plt>
   0x5555555552e5:	mov    edx,eax
   0x5555555552e7:	shr    edx,0x1f
   0x5555555552ea:	lea    eax,[rdx+rax*1]
   0x5555555552ed:	sar    eax,1
   0x5555555552ef:	mov    DWORD PTR [rsp+0x10],eax
   0x5555555552f3:	mov    eax,ebx
   0x5555555552f5:	shr    eax,0x1f
   0x5555555552f8:	add    eax,ebx
   0x5555555552fa:	sar    eax,1
   0x5555555552fc:	mov    DWORD PTR [rsp+0x14],eax
   0x555555555300:	mov    ebx,0x0
   0x555555555305:	lea    rax,[rsp+0x20]
   0x55555555530a:	mov    QWORD PTR [rsp+0x18],rax
   0x55555555530f:	jmp    0x5555555554ff
   0x555555555314:	cmp    ebx,0x105
   0x55555555531a:	sete   al
   0x55555555531d:	movzx  eax,al
   0x555555555320:	add    DWORD PTR [rsp+0x10],eax
   0x555555555324:	mov    rdi,QWORD PTR [rip+0x2ef5]        # 0x555555558220 <stdscr>
   0x55555555532b:	call   0x555555555050 <werase@plt>
   0x555555555330:	mov    edx,0x0
   0x555555555335:	mov    esi,0x100000
   0x55555555533a:	mov    rdi,QWORD PTR [rip+0x2edf]        # 0x555555558220 <stdscr>
   0x555555555341:	call   0x555555555060 <wattr_on@plt>
   0x555555555346:	sub    rsp,0x8
   0x55555555534a:	push   0x0
   0x55555555534c:	push   0x0
   0x55555555534e:	push   0x0
   0x555555555350:	mov    r9d,0x0
   0x555555555356:	mov    r8d,0x0
   0x55555555535c:	mov    ecx,0x0
   0x555555555361:	mov    edx,0x0
   0x555555555366:	mov    esi,0x0
   0x55555555536b:	mov    rdi,QWORD PTR [rip+0x2eae]        # 0x555555558220 <stdscr>
   0x555555555372:	call   0x5555555550f0 <wborder@plt>
   0x555555555377:	add    rsp,0x20
   0x55555555537b:	mov    eax,DWORD PTR [rsp+0xc]
   0x55555555537f:	cmp    eax,0x2
   0x555555555382:	jle    0x555555555433
   0x555555555388:	lea    r15d,[rax-0x1]
   0x55555555538c:	mov    r12d,0x1
   0x555555555392:	lea    r13d,[r14-0x1]
   0x555555555396:	jmp    0x555555555426
   0x55555555539b:	add    DWORD PTR [rsp+0x14],0x1
   0x5555555553a0:	jmp    0x555555555324
   0x5555555553a2:	mov    ecx,DWORD PTR [rsp+0x10]
   0x5555555553a6:	cmp    ecx,0x1
   0x5555555553a9:	setg   al
   0x5555555553ac:	movzx  eax,al
   0x5555555553af:	sub    ecx,eax
   0x5555555553b1:	mov    DWORD PTR [rsp+0x10],ecx
   0x5555555553b5:	jmp    0x555555555324
   0x5555555553ba:	sub    eax,0x3d
   0x5555555553bd:	cmp    eax,0x78
   0x5555555553c0:	sbb    ebx,ebx
   0x5555555553c2:	and    ebx,0xffffffca
   0x5555555553c5:	add    ebx,0x56
   0x5555555553c8:	mov    edx,r12d
   0x5555555553cb:	mov    esi,ebp
   0x5555555553cd:	mov    rdi,QWORD PTR [rip+0x2e4c]        # 0x555555558220 <stdscr>
   0x5555555553d4:	call   0x555555555040 <wmove@plt>
   0x5555555553d9:	cmp    eax,0xffffffff
   0x5555555553dc:	jne    0x55555555540c
   0x5555555553de:	add    ebp,0x1
   0x5555555553e1:	cmp    ebp,r13d
   0x5555555553e4:	je     0x55555555541d
   0x5555555553e6:	mov    esi,ebp
   0x5555555553e8:	mov    edi,r12d
   0x5555555553eb:	call   0x555555555249
   0x5555555553f0:	cmp    eax,0x3c
   0x5555555553f3:	jg     0x5555555553ba
   0x5555555553f5:	mov    ebx,0x41
   0x5555555553fa:	cmp    eax,0x1e
   0x5555555553fd:	jg     0x5555555553c8
   0x5555555553ff:	cmp    eax,0x1f
   0x555555555402:	sbb    ebx,ebx
   0x555555555404:	and    ebx,0xffffff85
