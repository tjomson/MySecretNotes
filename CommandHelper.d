
CommandHelper:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 2f 00 00 	bnd jmp *0x2fe3(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40104f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401050 <system@plt>:
  401050:	f3 0f 1e fa          	endbr64 
  401054:	f2 ff 25 bd 2f 00 00 	bnd jmp *0x2fbd(%rip)        # 404018 <system@GLIBC_2.2.5>
  40105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401060 <gets@plt>:
  401060:	f3 0f 1e fa          	endbr64 
  401064:	f2 ff 25 b5 2f 00 00 	bnd jmp *0x2fb5(%rip)        # 404020 <gets@GLIBC_2.2.5>
  40106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401070 <_start>:
  401070:	f3 0f 1e fa          	endbr64 
  401074:	31 ed                	xor    %ebp,%ebp
  401076:	49 89 d1             	mov    %rdx,%r9
  401079:	5e                   	pop    %rsi
  40107a:	48 89 e2             	mov    %rsp,%rdx
  40107d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401081:	50                   	push   %rax
  401082:	54                   	push   %rsp
  401083:	45 31 c0             	xor    %r8d,%r8d
  401086:	31 c9                	xor    %ecx,%ecx
  401088:	48 c7 c7 95 11 40 00 	mov    $0x401195,%rdi
  40108f:	ff 15 5b 2f 00 00    	call   *0x2f5b(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  401095:	f4                   	hlt    
  401096:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40109d:	00 00 00 

00000000004010a0 <_dl_relocate_static_pie>:
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	c3                   	ret    
  4010a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4010ac:	00 00 00 
  4010af:	90                   	nop

00000000004010b0 <deregister_tm_clones>:
  4010b0:	b8 38 40 40 00       	mov    $0x404038,%eax
  4010b5:	48 3d 38 40 40 00    	cmp    $0x404038,%rax
  4010bb:	74 13                	je     4010d0 <deregister_tm_clones+0x20>
  4010bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4010c2:	48 85 c0             	test   %rax,%rax
  4010c5:	74 09                	je     4010d0 <deregister_tm_clones+0x20>
  4010c7:	bf 38 40 40 00       	mov    $0x404038,%edi
  4010cc:	ff e0                	jmp    *%rax
  4010ce:	66 90                	xchg   %ax,%ax
  4010d0:	c3                   	ret    
  4010d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4010d8:	00 00 00 00 
  4010dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010e0 <register_tm_clones>:
  4010e0:	be 38 40 40 00       	mov    $0x404038,%esi
  4010e5:	48 81 ee 38 40 40 00 	sub    $0x404038,%rsi
  4010ec:	48 89 f0             	mov    %rsi,%rax
  4010ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010f3:	48 c1 f8 03          	sar    $0x3,%rax
  4010f7:	48 01 c6             	add    %rax,%rsi
  4010fa:	48 d1 fe             	sar    %rsi
  4010fd:	74 11                	je     401110 <register_tm_clones+0x30>
  4010ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401104:	48 85 c0             	test   %rax,%rax
  401107:	74 07                	je     401110 <register_tm_clones+0x30>
  401109:	bf 38 40 40 00       	mov    $0x404038,%edi
  40110e:	ff e0                	jmp    *%rax
  401110:	c3                   	ret    
  401111:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401118:	00 00 00 00 
  40111c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401120 <__do_global_dtors_aux>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	80 3d 0d 2f 00 00 00 	cmpb   $0x0,0x2f0d(%rip)        # 404038 <__TMC_END__>
  40112b:	75 13                	jne    401140 <__do_global_dtors_aux+0x20>
  40112d:	55                   	push   %rbp
  40112e:	48 89 e5             	mov    %rsp,%rbp
  401131:	e8 7a ff ff ff       	call   4010b0 <deregister_tm_clones>
  401136:	c6 05 fb 2e 00 00 01 	movb   $0x1,0x2efb(%rip)        # 404038 <__TMC_END__>
  40113d:	5d                   	pop    %rbp
  40113e:	c3                   	ret    
  40113f:	90                   	nop
  401140:	c3                   	ret    
  401141:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401148:	00 00 00 00 
  40114c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401150 <frame_dummy>:
  401150:	f3 0f 1e fa          	endbr64 
  401154:	eb 8a                	jmp    4010e0 <register_tm_clones>

0000000000401156 <run>:
  401156:	f3 0f 1e fa          	endbr64 
  40115a:	55                   	push   %rbp
  40115b:	48 89 e5             	mov    %rsp,%rbp
  40115e:	48 83 ec 10          	sub    $0x10,%rsp
  401162:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401166:	48 89 c7             	mov    %rax,%rdi
  401169:	b8 00 00 00 00       	mov    $0x0,%eax
  40116e:	e8 ed fe ff ff       	call   401060 <gets@plt>
  401173:	90                   	nop
  401174:	c9                   	leave  
  401175:	c3                   	ret    

0000000000401176 <executeIf>:
  401176:	f3 0f 1e fa          	endbr64 
  40117a:	55                   	push   %rbp
  40117b:	48 89 e5             	mov    %rsp,%rbp
  40117e:	48 83 ec 10          	sub    $0x10,%rsp
  401182:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401186:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40118a:	48 89 c7             	mov    %rax,%rdi
  40118d:	e8 be fe ff ff       	call   401050 <system@plt>
  401192:	90                   	nop
  401193:	c9                   	leave  
  401194:	c3                   	ret    

0000000000401195 <main>:
  401195:	f3 0f 1e fa          	endbr64 
  401199:	55                   	push   %rbp
  40119a:	48 89 e5             	mov    %rsp,%rbp
  40119d:	b8 00 00 00 00       	mov    $0x0,%eax
  4011a2:	e8 af ff ff ff       	call   401156 <run>
  4011a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4011ac:	5d                   	pop    %rbp
  4011ad:	c3                   	ret    

Disassembly of section .fini:

00000000004011b0 <_fini>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	48 83 ec 08          	sub    $0x8,%rsp
  4011b8:	48 83 c4 08          	add    $0x8,%rsp
  4011bc:	c3                   	ret    
