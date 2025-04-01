Dump of assembler code for function main:
   0x00000000000015c2 <+0>:	endbr64
   0x00000000000015c6 <+4>:	push   rbp
   0x00000000000015c7 <+5>:	mov    rbp,rsp
   0x00000000000015ca <+8>:	sub    rsp,0x30
   0x00000000000015ce <+12>:	mov    rax,QWORD PTR fs:0x28
   0x00000000000015d7 <+21>:	mov    QWORD PTR [rbp-0x8],rax
   0x00000000000015db <+25>:	xor    eax,eax
   0x00000000000015dd <+27>:	call   0x154a <setup>
   0x00000000000015e2 <+32>:	call   0x14f0 <banner>
   0x00000000000015e7 <+37>:	mov    QWORD PTR [rbp-0x28],0x0
   0x00000000000015ef <+45>:	mov    edi,0x30000
   0x00000000000015f4 <+50>:	call   0x1200 <malloc@plt>
   0x00000000000015f9 <+55>:	mov    QWORD PTR [rbp-0x18],rax
   0x00000000000015fd <+59>:	mov    rax,QWORD PTR [rbp-0x18]
   0x0000000000001601 <+63>:	mov    QWORD PTR [rax],0x1
   0x0000000000001608 <+70>:	lea    rax,[rip+0xfb9]        # 0x25c8
   0x000000000000160f <+77>:	mov    rdi,rax
   0x0000000000001612 <+80>:	call   0x13cd <printstr>
   0x0000000000001617 <+85>:	mov    rax,QWORD PTR [rbp-0x18]
   0x000000000000161b <+89>:	mov    rsi,rax
   0x000000000000161e <+92>:	lea    rax,[rip+0x1015]        # 0x263a
   0x0000000000001625 <+99>:	mov    rdi,rax
   0x0000000000001628 <+102>:	mov    eax,0x0
   0x000000000000162d <+107>:	call   0x11b0 <printf@plt>
   0x0000000000001632 <+112>:	mov    edi,0x1
   0x0000000000001637 <+117>:	call   0x1260 <sleep@plt>
   0x000000000000163c <+122>:	mov    QWORD PTR [rbp-0x20],0x0
   0x0000000000001644 <+130>:	jmp    0x1669 <main+167>
   0x0000000000001646 <+132>:	lea    rax,[rip+0xff0]        # 0x263d
   0x000000000000164d <+139>:	mov    rdi,rax
   0x0000000000001650 <+142>:	mov    eax,0x0
   0x0000000000001655 <+147>:	call   0x11b0 <printf@plt>
   0x000000000000165a <+152>:	mov    edi,0xea60
   0x000000000000165f <+157>:	call   0x1270 <usleep@plt>
   0x0000000000001664 <+162>:	add    QWORD PTR [rbp-0x20],0x1
   0x0000000000001669 <+167>:	cmp    QWORD PTR [rbp-0x20],0xd
   0x000000000000166e <+172>:	jbe    0x1646 <main+132>
   0x0000000000001670 <+174>:	lea    rax,[rip+0xfca]        # 0x2641
   0x0000000000001677 <+181>:	mov    rdi,rax
   0x000000000000167a <+184>:	call   0x1170 <puts@plt>
   0x000000000000167f <+189>:	lea    rax,[rip+0x9dd]        # 0x2063
   0x0000000000001686 <+196>:	mov    rcx,rax
   0x0000000000001689 <+199>:	lea    rax,[rip+0xfb3]        # 0x2643
   0x0000000000001690 <+206>:	mov    rdx,rax
   0x0000000000001693 <+209>:	lea    rax,[rip+0x9c9]        # 0x2063
   0x000000000000169a <+216>:	mov    rsi,rax
   0x000000000000169d <+219>:	lea    rax,[rip+0xfac]        # 0x2650
   0x00000000000016a4 <+226>:	mov    rdi,rax
   0x00000000000016a7 <+229>:	mov    eax,0x0
   0x00000000000016ac <+234>:	call   0x11b0 <printf@plt>
   0x00000000000016b1 <+239>:	lea    rax,[rbp-0x28]
   0x00000000000016b5 <+243>:	mov    rsi,rax
   0x00000000000016b8 <+246>:	lea    rax,[rip+0xff2]        # 0x26b1
   0x00000000000016bf <+253>:	mov    rdi,rax
   0x00000000000016c2 <+256>:	mov    eax,0x0
   0x00000000000016c7 <+261>:	call   0x1240 <__isoc99_scanf@plt>
   0x00000000000016cc <+266>:	mov    rax,QWORD PTR [rbp-0x28]
   0x00000000000016d0 <+270>:	mov    rdi,rax
   0x00000000000016d3 <+273>:	call   0x1200 <malloc@plt>
   0x00000000000016d8 <+278>:	mov    QWORD PTR [rbp-0x10],rax
   0x00000000000016dc <+282>:	lea    rax,[rip+0x980]        # 0x2063
   0x00000000000016e3 <+289>:	mov    rcx,rax
   0x00000000000016e6 <+292>:	lea    rax,[rip+0xf56]        # 0x2643
   0x00000000000016ed <+299>:	mov    rdx,rax
   0x00000000000016f0 <+302>:	lea    rax,[rip+0x96c]        # 0x2063
   0x00000000000016f7 <+309>:	mov    rsi,rax
   0x00000000000016fa <+312>:	lea    rax,[rip+0xfb7]        # 0x26b8
   0x0000000000001701 <+319>:	mov    rdi,rax
   0x0000000000001704 <+322>:	mov    eax,0x0
   0x0000000000001709 <+327>:	call   0x11b0 <printf@plt>
   0x000000000000170e <+332>:	mov    rdx,QWORD PTR [rbp-0x28]
   0x0000000000001712 <+336>:	mov    rax,QWORD PTR [rbp-0x10]
   0x0000000000001716 <+340>:	mov    rsi,rax
   0x0000000000001719 <+343>:	mov    edi,0x0
   0x000000000000171e <+348>:	call   0x11f0 <read@plt>
   0x0000000000001723 <+353>:	mov    rdx,QWORD PTR [rbp-0x28]
   0x0000000000001727 <+357>:	mov    rax,QWORD PTR [rbp-0x10]
   0x000000000000172b <+361>:	add    rax,rdx
   0x000000000000172e <+364>:	sub    rax,0x1
   0x0000000000001732 <+368>:	mov    QWORD PTR [rax],0x0
   0x0000000000001739 <+375>:	mov    rdx,QWORD PTR [rbp-0x28]
   0x000000000000173d <+379>:	mov    rax,QWORD PTR [rbp-0x10]
   0x0000000000001741 <+383>:	mov    rsi,rax
   0x0000000000001744 <+386>:	mov    edi,0x1
   0x0000000000001749 <+391>:	call   0x1180 <write@plt>
   0x000000000000174e <+396>:	mov    rax,QWORD PTR [rbp-0x18]
   0x0000000000001752 <+400>:	mov    rax,QWORD PTR [rax]
   0x0000000000001755 <+403>:	test   rax,rax
   0x0000000000001758 <+406>:	jne    0x1766 <main+420>
   0x000000000000175a <+408>:	mov    eax,0x0
   0x000000000000175f <+413>:	call   0x1446 <read_flag>
   0x0000000000001764 <+418>:	jmp    0x1798 <main+470>
   0x0000000000001766 <+420>:	lea    rax,[rip+0xf7c]        # 0x26e9
   0x000000000000176d <+427>:	mov    rcx,rax
   0x0000000000001770 <+430>:	lea    rax,[rip+0xecc]        # 0x2643
   0x0000000000001777 <+437>:	mov    rdx,rax
   0x000000000000177a <+440>:	lea    rax,[rip+0xf68]        # 0x26e9
   0x0000000000001781 <+447>:	mov    rsi,rax
   0x0000000000001784 <+450>:	lea    rax,[rip+0xf6d]        # 0x26f8
   0x000000000000178b <+457>:	mov    rdi,rax
   0x000000000000178e <+460>:	mov    eax,0x0
   0x0000000000001793 <+465>:	call   0x11b0 <printf@plt>
   0x0000000000001798 <+470>:	mov    eax,0x0
   0x000000000000179d <+475>:	mov    rdx,QWORD PTR [rbp-0x8]
   0x00000000000017a1 <+479>:	sub    rdx,QWORD PTR fs:0x28
   0x00000000000017aa <+488>:	je     0x17b1 <main+495>
   0x00000000000017ac <+490>:	call   0x11a0 <__stack_chk_fail@plt>
   0x00000000000017b1 <+495>:	leave
   0x00000000000017b2 <+496>:	ret
End of assembler dump.
