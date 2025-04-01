   0x555555555283:	push   r15
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
   0x555555555407:	add    ebx,0x56
   0x55555555540a:	jmp    0x5555555553c8
   0x55555555540c:	movsx  esi,bl
   0x55555555540f:	mov    rdi,QWORD PTR [rip+0x2e0a]        # 0x555555558220 <stdscr>
   0x555555555416:	call   0x555555555130 <waddch@plt>
   0x55555555541b:	jmp    0x5555555553de
   0x55555555541d:	add    r12d,0x1
   0x555555555421:	cmp    r15d,r12d
   0x555555555424:	je     0x555555555433
   0x555555555426:	mov    ebp,0x1
   0x55555555542b:	cmp    r14d,0x2
   0x55555555542f:	jg     0x5555555553e6
   0x555555555431:	jmp    0x55555555541d
   0x555555555433:	mov    edx,0x0
   0x555555555438:	mov    esi,0x100000
   0x55555555543d:	mov    rdi,QWORD PTR [rip+0x2ddc]        # 0x555555558220 <stdscr>
   0x555555555444:	call   0x555555555120 <wattr_off@plt>
   0x555555555449:	mov    edx,0x0
   0x55555555544e:	mov    esi,0x200000
   0x555555555453:	mov    rdi,QWORD PTR [rip+0x2dc6]        # 0x555555558220 <stdscr>
   0x55555555545a:	call   0x555555555060 <wattr_on@plt>
   0x55555555545f:	mov    edx,DWORD PTR [rsp+0x10]
   0x555555555463:	mov    esi,DWORD PTR [rsp+0x14]
   0x555555555467:	mov    rdi,QWORD PTR [rip+0x2db2]        # 0x555555558220 <stdscr>
   0x55555555546e:	call   0x555555555040 <wmove@plt>
   0x555555555473:	cmp    eax,0xffffffff
   0x555555555476:	jne    0x555555555560
   0x55555555547c:	mov    edx,0x0
   0x555555555481:	mov    esi,0x200000
   0x555555555486:	mov    rdi,QWORD PTR [rip+0x2d93]        # 0x555555558220 <stdscr>
   0x55555555548d:	call   0x555555555120 <wattr_off@plt>
   0x555555555492:	mov    r8d,DWORD PTR [rsp+0xc]
   0x555555555497:	mov    ecx,r14d
   0x55555555549a:	lea    rdx,[rip+0xb63]        # 0x555555556004
   0x5555555554a1:	mov    esi,0x10
   0x5555555554a6:	mov    rbx,QWORD PTR [rsp+0x18]
   0x5555555554ab:	mov    rdi,rbx
   0x5555555554ae:	mov    eax,0x0
   0x5555555554b3:	call   0x5555555550b0 <snprintf@plt>
   0x5555555554b8:	mov    edx,0x0
   0x5555555554bd:	mov    esi,0x0
   0x5555555554c2:	mov    rdi,QWORD PTR [rip+0x2d57]        # 0x555555558220 <stdscr>
   0x5555555554c9:	call   0x555555555040 <wmove@plt>
   0x5555555554ce:	cmp    eax,0xffffffff
   0x5555555554d1:	jne    0x555555555576
   0x5555555554d7:	cmp    r14d,0xd
   0x5555555554db:	jne    0x5555555554e8
   0x5555555554dd:	cmp    DWORD PTR [rsp+0xc],0x25
   0x5555555554e2:	je     0x55555555558f
   0x5555555554e8:	mov    rdi,QWORD PTR [rip+0x2d31]        # 0x555555558220 <stdscr>
   0x5555555554ef:	call   0x5555555550c0 <wgetch@plt>
   0x5555555554f4:	mov    ebx,eax
   0x5555555554f6:	cmp    eax,0x71
   0x5555555554f9:	je     0x55555555563b
   0x5555555554ff:	mov    rdi,QWORD PTR [rip+0x2d1a]        # 0x555555558220 <stdscr>
   0x555555555506:	call   0x555555555080 <getmaxy@plt>
   0x55555555550b:	mov    r14d,eax
   0x55555555550e:	mov    rdi,QWORD PTR [rip+0x2d0b]        # 0x555555558220 <stdscr>
   0x555555555515:	call   0x5555555550d0 <getmaxx@plt>
   0x55555555551a:	mov    DWORD PTR [rsp+0xc],eax
   0x55555555551e:	cmp    ebx,0x104
   0x555555555524:	je     0x5555555553a2
   0x55555555552a:	jg     0x555555555314
   0x555555555530:	cmp    ebx,0x102
   0x555555555536:	je     0x55555555539b
   0x55555555553c:	cmp    ebx,0x103
   0x555555555542:	jne    0x555555555324
   0x555555555548:	mov    ecx,DWORD PTR [rsp+0x14]
   0x55555555554c:	cmp    ecx,0x1
   0x55555555554f:	setg   al
   0x555555555552:	movzx  eax,al
   0x555555555555:	sub    ecx,eax
   0x555555555557:	mov    DWORD PTR [rsp+0x14],ecx
   0x55555555555b:	jmp    0x555555555324
   0x555555555560:	mov    esi,0x58
   0x555555555565:	mov    rdi,QWORD PTR [rip+0x2cb4]        # 0x555555558220 <stdscr>
   0x55555555556c:	call   0x555555555130 <waddch@plt>
   0x555555555571:	jmp    0x55555555547c
   0x555555555576:	mov    edx,0xffffffff
   0x55555555557b:	mov    rsi,rbx
   0x55555555557e:	mov    rdi,QWORD PTR [rip+0x2c9b]        # 0x555555558220 <stdscr>
   0x555555555585:	call   0x555555555090 <waddnstr@plt>
   0x55555555558a:	jmp    0x5555555554d7
   0x55555555558f:	mov    edx,0x0
   0x555555555594:	mov    esi,0x80000
   0x555555555599:	mov    rdi,QWORD PTR [rip+0x2c80]        # 0x555555558220 <stdscr>
   0x5555555555a0:	call   0x555555555060 <wattr_on@plt>
   0x5555555555a5:	mov    edx,0x0
   0x5555555555aa:	mov    esi,0x200000
   0x5555555555af:	mov    rdi,QWORD PTR [rip+0x2c6a]        # 0x555555558220 <stdscr>
   0x5555555555b6:	call   0x555555555060 <wattr_on@plt>
   0x5555555555bb:	lea    rbp,[rip+0x2afe]        # 0x5555555580c0
   0x5555555555c2:	mov    ebx,0x6
   0x5555555555c7:	jmp    0x5555555555d2
   0x5555555555c9:	add    rbp,0x4
   0x5555555555cd:	cmp    ebx,0x1e
   0x5555555555d0:	je     0x55555555560a
   0x5555555555d2:	mov    edx,ebx
   0x5555555555d4:	add    ebx,0x1
   0x5555555555d7:	mov    esi,0x6
   0x5555555555dc:	mov    rdi,QWORD PTR [rip+0x2c3d]        # 0x555555558220 <stdscr>
   0x5555555555e3:	call   0x555555555040 <wmove@plt>
   0x5555555555e8:	cmp    eax,0xffffffff
   0x5555555555eb:	je     0x5555555555c9
   0x5555555555ed:	movsxd rax,DWORD PTR [rbp+0x0]
   0x5555555555f1:	lea    rcx,[rip+0x2b28]        # 0x555555558120
   0x5555555555f8:	movzx  esi,BYTE PTR [rcx+rax*1]
   0x5555555555fc:	mov    rdi,QWORD PTR [rip+0x2c1d]        # 0x555555558220 <stdscr>
   0x555555555603:	call   0x555555555130 <waddch@plt>
   0x555555555608:	jmp    0x5555555555c9
   0x55555555560a:	mov    edx,0x0
   0x55555555560f:	mov    esi,0x200000
   0x555555555614:	mov    rdi,QWORD PTR [rip+0x2c05]        # 0x555555558220 <stdscr>
   0x55555555561b:	call   0x555555555120 <wattr_off@plt>
   0x555555555620:	mov    edx,0x0
   0x555555555625:	mov    esi,0x80000
   0x55555555562a:	mov    rdi,QWORD PTR [rip+0x2bef]        # 0x555555558220 <stdscr>
   0x555555555631:	call   0x555555555120 <wattr_off@plt>
   0x555555555636:	jmp    0x5555555554e8
   0x55555555563b:	call   0x555555555140 <endwin@plt>
   0x555555555640:	mov    rax,QWORD PTR [rsp+0x38]
   0x555555555645:	sub    rax,QWORD PTR fs:0x28
   0x55555555564e:	jne    0x555555555664
   0x555555555650:	mov    eax,0x0
   0x555555555655:	add    rsp,0x48
   0x555555555659:	pop    rbx
   0x55555555565a:	pop    rbp
   0x55555555565b:	pop    r12
   0x55555555565d:	pop    r13
   0x55555555565f:	pop    r14
   0x555555555661:	pop    r15
   0x555555555663:	ret
   0x555555555664:	call   0x5555555550a0 <__stack_chk_fail@plt>
   0x555555555669:	add    BYTE PTR [rax],al
   0x55555555566b:	add    bl,dh
   0x55555555566d:	nop    edx
   0x555555555670:	sub    rsp,0x8
   0x555555555674:	add    rsp,0x8
   0x555555555678:	ret
   0x555555555679:	add    BYTE PTR [rax],al
   0x55555555567b:	add    BYTE PTR [rax],al
   0x55555555567d:	add    BYTE PTR [rax],al
   0x55555555567f:	add    BYTE PTR [rax],al
   0x555555555681:	add    BYTE PTR [rax],al
   0x555555555683:	add    BYTE PTR [rax],al
   0x555555555685:	add    BYTE PTR [rax],al
   0x555555555687:	add    BYTE PTR [rax],al
   0x555555555689:	add    BYTE PTR [rax],al
   0x55555555568b:	add    BYTE PTR [rax],al
   0x55555555568d:	add    BYTE PTR [rax],al
   0x55555555568f:	add    BYTE PTR [rax],al
   0x555555555691:	add    BYTE PTR [rax],al
   0x555555555693:	add    BYTE PTR [rax],al
   0x555555555695:	add    BYTE PTR [rax],al
   0x555555555697:	add    BYTE PTR [rax],al
   0x555555555699:	add    BYTE PTR [rax],al
   0x55555555569b:	add    BYTE PTR [rax],al
   0x55555555569d:	add    BYTE PTR [rax],al
   0x55555555569f:	add    BYTE PTR [rax],al
   0x5555555556a1:	add    BYTE PTR [rax],al
   0x5555555556a3:	add    BYTE PTR [rax],al
   0x5555555556a5:	add    BYTE PTR [rax],al
   0x5555555556a7:	add    BYTE PTR [rax],al
   0x5555555556a9:	add    BYTE PTR [rax],al
   0x5555555556ab:	add    BYTE PTR [rax],al
   0x5555555556ad:	add    BYTE PTR [rax],al
   0x5555555556af:	add    BYTE PTR [rax],al
   0x5555555556b1:	add    BYTE PTR [rax],al
   0x5555555556b3:	add    BYTE PTR [rax],al
   0x5555555556b5:	add    BYTE PTR [rax],al
   0x5555555556b7:	add    BYTE PTR [rax],al
   0x5555555556b9:	add    BYTE PTR [rax],al
   0x5555555556bb:	add    BYTE PTR [rax],al
   0x5555555556bd:	add    BYTE PTR [rax],al
   0x5555555556bf:	add    BYTE PTR [rax],al
   0x5555555556c1:	add    BYTE PTR [rax],al
   0x5555555556c3:	add    BYTE PTR [rax],al
   0x5555555556c5:	add    BYTE PTR [rax],al
   0x5555555556c7:	add    BYTE PTR [rax],al
   0x5555555556c9:	add    BYTE PTR [rax],al
   0x5555555556cb:	add    BYTE PTR [rax],al
   0x5555555556cd:	add    BYTE PTR [rax],al
   0x5555555556cf:	add    BYTE PTR [rax],al
   0x5555555556d1:	add    BYTE PTR [rax],al
   0x5555555556d3:	add    BYTE PTR [rax],al
   0x5555555556d5:	add    BYTE PTR [rax],al
   0x5555555556d7:	add    BYTE PTR [rax],al
   0x5555555556d9:	add    BYTE PTR [rax],al
   0x5555555556db:	add    BYTE PTR [rax],al
   0x5555555556dd:	add    BYTE PTR [rax],al
   0x5555555556df:	add    BYTE PTR [rax],al
   0x5555555556e1:	add    BYTE PTR [rax],al
   0x5555555556e3:	add    BYTE PTR [rax],al
   0x5555555556e5:	add    BYTE PTR [rax],al
   0x5555555556e7:	add    BYTE PTR [rax],al
   0x5555555556e9:	add    BYTE PTR [rax],al
   0x5555555556eb:	add    BYTE PTR [rax],al
   0x5555555556ed:	add    BYTE PTR [rax],al
   0x5555555556ef:	add    BYTE PTR [rax],al
   0x5555555556f1:	add    BYTE PTR [rax],al
   0x5555555556f3:	add    BYTE PTR [rax],al
   0x5555555556f5:	add    BYTE PTR [rax],al
   0x5555555556f7:	add    BYTE PTR [rax],al
   0x5555555556f9:	add    BYTE PTR [rax],al
   0x5555555556fb:	add    BYTE PTR [rax],al
   0x5555555556fd:	add    BYTE PTR [rax],al
   0x5555555556ff:	add    BYTE PTR [rax],al
   0x555555555701:	add    BYTE PTR [rax],al
   0x555555555703:	add    BYTE PTR [rax],al
   0x555555555705:	add    BYTE PTR [rax],al
   0x555555555707:	add    BYTE PTR [rax],al
   0x555555555709:	add    BYTE PTR [rax],al
   0x55555555570b:	add    BYTE PTR [rax],al
   0x55555555570d:	add    BYTE PTR [rax],al
   0x55555555570f:	add    BYTE PTR [rax],al
   0x555555555711:	add    BYTE PTR [rax],al
   0x555555555713:	add    BYTE PTR [rax],al
   0x555555555715:	add    BYTE PTR [rax],al
   0x555555555717:	add    BYTE PTR [rax],al
   0x555555555719:	add    BYTE PTR [rax],al
   0x55555555571b:	add    BYTE PTR [rax],al
   0x55555555571d:	add    BYTE PTR [rax],al
   0x55555555571f:	add    BYTE PTR [rax],al
   0x555555555721:	add    BYTE PTR [rax],al
   0x555555555723:	add    BYTE PTR [rax],al
   0x555555555725:	add    BYTE PTR [rax],al
   0x555555555727:	add    BYTE PTR [rax],al
   0x555555555729:	add    BYTE PTR [rax],al
   0x55555555572b:	add    BYTE PTR [rax],al
   0x55555555572d:	add    BYTE PTR [rax],al
   0x55555555572f:	add    BYTE PTR [rax],al
   0x555555555731:	add    BYTE PTR [rax],al
   0x555555555733:	add    BYTE PTR [rax],al
   0x555555555735:	add    BYTE PTR [rax],al
   0x555555555737:	add    BYTE PTR [rax],al
   0x555555555739:	add    BYTE PTR [rax],al
   0x55555555573b:	add    BYTE PTR [rax],al
   0x55555555573d:	add    BYTE PTR [rax],al
   0x55555555573f:	add    BYTE PTR [rax],al
   0x555555555741:	add    BYTE PTR [rax],al
   0x555555555743:	add    BYTE PTR [rax],al
   0x555555555745:	add    BYTE PTR [rax],al
   0x555555555747:	add    BYTE PTR [rax],al
   0x555555555749:	add    BYTE PTR [rax],al
   0x55555555574b:	add    BYTE PTR [rax],al
   0x55555555574d:	add    BYTE PTR [rax],al
   0x55555555574f:	add    BYTE PTR [rax],al
   0x555555555751:	add    BYTE PTR [rax],al
   0x555555555753:	add    BYTE PTR [rax],al
   0x555555555755:	add    BYTE PTR [rax],al
   0x555555555757:	add    BYTE PTR [rax],al
   0x555555555759:	add    BYTE PTR [rax],al
   0x55555555575b:	add    BYTE PTR [rax],al
   0x55555555575d:	add    BYTE PTR [rax],al
   0x55555555575f:	add    BYTE PTR [rax],al
   0x555555555761:	add    BYTE PTR [rax],al
   0x555555555763:	add    BYTE PTR [rax],al
   0x555555555765:	add    BYTE PTR [rax],al
   0x555555555767:	add    BYTE PTR [rax],al
   0x555555555769:	add    BYTE PTR [rax],al
   0x55555555576b:	add    BYTE PTR [rax],al
   0x55555555576d:	add    BYTE PTR [rax],al
   0x55555555576f:	add    BYTE PTR [rax],al
   0x555555555771:	add    BYTE PTR [rax],al
   0x555555555773:	add    BYTE PTR [rax],al
   0x555555555775:	add    BYTE PTR [rax],al
   0x555555555777:	add    BYTE PTR [rax],al
   0x555555555779:	add    BYTE PTR [rax],al
   0x55555555577b:	add    BYTE PTR [rax],al
   0x55555555577d:	add    BYTE PTR [rax],al
   0x55555555577f:	add    BYTE PTR [rax],al
   0x555555555781:	add    BYTE PTR [rax],al
   0x555555555783:	add    BYTE PTR [rax],al
   0x555555555785:	add    BYTE PTR [rax],al
   0x555555555787:	add    BYTE PTR [rax],al
   0x555555555789:	add    BYTE PTR [rax],al
   0x55555555578b:	add    BYTE PTR [rax],al
   0x55555555578d:	add    BYTE PTR [rax],al
   0x55555555578f:	add    BYTE PTR [rax],al
   0x555555555791:	add    BYTE PTR [rax],al
   0x555555555793:	add    BYTE PTR [rax],al
   0x555555555795:	add    BYTE PTR [rax],al
   0x555555555797:	add    BYTE PTR [rax],al
   0x555555555799:	add    BYTE PTR [rax],al
   0x55555555579b:	add    BYTE PTR [rax],al
   0x55555555579d:	add    BYTE PTR [rax],al
   0x55555555579f:	add    BYTE PTR [rax],al
   0x5555555557a1:	add    BYTE PTR [rax],al
   0x5555555557a3:	add    BYTE PTR [rax],al
   0x5555555557a5:	add    BYTE PTR [rax],al
   0x5555555557a7:	add    BYTE PTR [rax],al
   0x5555555557a9:	add    BYTE PTR [rax],al
   0x5555555557ab:	add    BYTE PTR [rax],al
   0x5555555557ad:	add    BYTE PTR [rax],al
   0x5555555557af:	add    BYTE PTR [rax],al
   0x5555555557b1:	add    BYTE PTR [rax],al
   0x5555555557b3:	add    BYTE PTR [rax],al
   0x5555555557b5:	add    BYTE PTR [rax],al
   0x5555555557b7:	add    BYTE PTR [rax],al
   0x5555555557b9:	add    BYTE PTR [rax],al
   0x5555555557bb:	add    BYTE PTR [rax],al
   0x5555555557bd:	add    BYTE PTR [rax],al
   0x5555555557bf:	add    BYTE PTR [rax],al
   0x5555555557c1:	add    BYTE PTR [rax],al
   0x5555555557c3:	add    BYTE PTR [rax],al
   0x5555555557c5:	add    BYTE PTR [rax],al
   0x5555555557c7:	add    BYTE PTR [rax],al
   0x5555555557c9:	add    BYTE PTR [rax],al
   0x5555555557cb:	add    BYTE PTR [rax],al
   0x5555555557cd:	add    BYTE PTR [rax],al
   0x5555555557cf:	add    BYTE PTR [rax],al
   0x5555555557d1:	add    BYTE PTR [rax],al
   0x5555555557d3:	add    BYTE PTR [rax],al
   0x5555555557d5:	add    BYTE PTR [rax],al
   0x5555555557d7:	add    BYTE PTR [rax],al
   0x5555555557d9:	add    BYTE PTR [rax],al
   0x5555555557db:	add    BYTE PTR [rax],al
   0x5555555557dd:	add    BYTE PTR [rax],al
   0x5555555557df:	add    BYTE PTR [rax],al
   0x5555555557e1:	add    BYTE PTR [rax],al
   0x5555555557e3:	add    BYTE PTR [rax],al
   0x5555555557e5:	add    BYTE PTR [rax],al
   0x5555555557e7:	add    BYTE PTR [rax],al
   0x5555555557e9:	add    BYTE PTR [rax],al
   0x5555555557eb:	add    BYTE PTR [rax],al
   0x5555555557ed:	add    BYTE PTR [rax],al
   0x5555555557ef:	add    BYTE PTR [rax],al
   0x5555555557f1:	add    BYTE PTR [rax],al
   0x5555555557f3:	add    BYTE PTR [rax],al
   0x5555555557f5:	add    BYTE PTR [rax],al
   0x5555555557f7:	add    BYTE PTR [rax],al
   0x5555555557f9:	add    BYTE PTR [rax],al
   0x5555555557fb:	add    BYTE PTR [rax],al
   0x5555555557fd:	add    BYTE PTR [rax],al
   0x5555555557ff:	add    BYTE PTR [rax],al
   0x555555555801:	add    BYTE PTR [rax],al
   0x555555555803:	add    BYTE PTR [rax],al
   0x555555555805:	add    BYTE PTR [rax],al
   0x555555555807:	add    BYTE PTR [rax],al
   0x555555555809:	add    BYTE PTR [rax],al
   0x55555555580b:	add    BYTE PTR [rax],al
   0x55555555580d:	add    BYTE PTR [rax],al
   0x55555555580f:	add    BYTE PTR [rax],al
   0x555555555811:	add    BYTE PTR [rax],al
   0x555555555813:	add    BYTE PTR [rax],al
   0x555555555815:	add    BYTE PTR [rax],al
   0x555555555817:	add    BYTE PTR [rax],al
   0x555555555819:	add    BYTE PTR [rax],al
   0x55555555581b:	add    BYTE PTR [rax],al
   0x55555555581d:	add    BYTE PTR [rax],al
   0x55555555581f:	add    BYTE PTR [rax],al
   0x555555555821:	add    BYTE PTR [rax],al
   0x555555555823:	add    BYTE PTR [rax],al
   0x555555555825:	add    BYTE PTR [rax],al
   0x555555555827:	add    BYTE PTR [rax],al
   0x555555555829:	add    BYTE PTR [rax],al
   0x55555555582b:	add    BYTE PTR [rax],al
   0x55555555582d:	add    BYTE PTR [rax],al
   0x55555555582f:	add    BYTE PTR [rax],al
   0x555555555831:	add    BYTE PTR [rax],al
   0x555555555833:	add    BYTE PTR [rax],al
   0x555555555835:	add    BYTE PTR [rax],al
   0x555555555837:	add    BYTE PTR [rax],al
   0x555555555839:	add    BYTE PTR [rax],al
   0x55555555583b:	add    BYTE PTR [rax],al
   0x55555555583d:	add    BYTE PTR [rax],al
   0x55555555583f:	add    BYTE PTR [rax],al
   0x555555555841:	add    BYTE PTR [rax],al
   0x555555555843:	add    BYTE PTR [rax],al
   0x555555555845:	add    BYTE PTR [rax],al
   0x555555555847:	add    BYTE PTR [rax],al
   0x555555555849:	add    BYTE PTR [rax],al
   0x55555555584b:	add    BYTE PTR [rax],al
   0x55555555584d:	add    BYTE PTR [rax],al
   0x55555555584f:	add    BYTE PTR [rax],al
   0x555555555851:	add    BYTE PTR [rax],al
   0x555555555853:	add    BYTE PTR [rax],al
   0x555555555855:	add    BYTE PTR [rax],al
   0x555555555857:	add    BYTE PTR [rax],al
   0x555555555859:	add    BYTE PTR [rax],al
   0x55555555585b:	add    BYTE PTR [rax],al
   0x55555555585d:	add    BYTE PTR [rax],al
   0x55555555585f:	add    BYTE PTR [rax],al
   0x555555555861:	add    BYTE PTR [rax],al
   0x555555555863:	add    BYTE PTR [rax],al
   0x555555555865:	add    BYTE PTR [rax],al
   0x555555555867:	add    BYTE PTR [rax],al
   0x555555555869:	add    BYTE PTR [rax],al
   0x55555555586b:	add    BYTE PTR [rax],al
   0x55555555586d:	add    BYTE PTR [rax],al
   0x55555555586f:	add    BYTE PTR [rax],al
   0x555555555871:	add    BYTE PTR [rax],al
   0x555555555873:	add    BYTE PTR [rax],al
   0x555555555875:	add    BYTE PTR [rax],al
   0x555555555877:	add    BYTE PTR [rax],al
   0x555555555879:	add    BYTE PTR [rax],al
   0x55555555587b:	add    BYTE PTR [rax],al
   0x55555555587d:	add    BYTE PTR [rax],al
   0x55555555587f:	add    BYTE PTR [rax],al
   0x555555555881:	add    BYTE PTR [rax],al
