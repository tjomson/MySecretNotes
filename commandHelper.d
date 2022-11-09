
commandHelper:     file format elf64-x86-64


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
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40105f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401060 <system@plt>:
  401060:	f3 0f 1e fa          	endbr64 
  401064:	f2 ff 25 ad 2f 00 00 	bnd jmp *0x2fad(%rip)        # 404018 <system@GLIBC_2.2.5>
  40106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401070 <printf@plt>:
  401070:	f3 0f 1e fa          	endbr64 
  401074:	f2 ff 25 a5 2f 00 00 	bnd jmp *0x2fa5(%rip)        # 404020 <printf@GLIBC_2.2.5>
  40107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401080 <__isoc99_scanf@plt>:
  401080:	f3 0f 1e fa          	endbr64 
  401084:	f2 ff 25 9d 2f 00 00 	bnd jmp *0x2f9d(%rip)        # 404028 <__isoc99_scanf@GLIBC_2.7>
  40108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401090 <_start>:
  401090:	f3 0f 1e fa          	endbr64 
  401094:	31 ed                	xor    %ebp,%ebp
  401096:	49 89 d1             	mov    %rdx,%r9
  401099:	5e                   	pop    %rsi
  40109a:	48 89 e2             	mov    %rsp,%rdx
  40109d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4010a1:	50                   	push   %rax
  4010a2:	54                   	push   %rsp
  4010a3:	45 31 c0             	xor    %r8d,%r8d
  4010a6:	31 c9                	xor    %ecx,%ecx
  4010a8:	48 c7 c7 fb 11 40 00 	mov    $0x4011fb,%rdi
  4010af:	ff 15 3b 2f 00 00    	call   *0x2f3b(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  4010b5:	f4                   	hlt    
  4010b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4010bd:	00 00 00 

00000000004010c0 <_dl_relocate_static_pie>:
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	c3                   	ret    
  4010c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4010cc:	00 00 00 
  4010cf:	90                   	nop

00000000004010d0 <deregister_tm_clones>:
  4010d0:	b8 40 40 40 00       	mov    $0x404040,%eax
  4010d5:	48 3d 40 40 40 00    	cmp    $0x404040,%rax
  4010db:	74 13                	je     4010f0 <deregister_tm_clones+0x20>
  4010dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e2:	48 85 c0             	test   %rax,%rax
  4010e5:	74 09                	je     4010f0 <deregister_tm_clones+0x20>
  4010e7:	bf 40 40 40 00       	mov    $0x404040,%edi
  4010ec:	ff e0                	jmp    *%rax
  4010ee:	66 90                	xchg   %ax,%ax
  4010f0:	c3                   	ret    
  4010f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401100 <register_tm_clones>:
  401100:	be 40 40 40 00       	mov    $0x404040,%esi
  401105:	48 81 ee 40 40 40 00 	sub    $0x404040,%rsi
  40110c:	48 89 f0             	mov    %rsi,%rax
  40110f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401113:	48 c1 f8 03          	sar    $0x3,%rax
  401117:	48 01 c6             	add    %rax,%rsi
  40111a:	48 d1 fe             	sar    %rsi
  40111d:	74 11                	je     401130 <register_tm_clones+0x30>
  40111f:	b8 00 00 00 00       	mov    $0x0,%eax
  401124:	48 85 c0             	test   %rax,%rax
  401127:	74 07                	je     401130 <register_tm_clones+0x30>
  401129:	bf 40 40 40 00       	mov    $0x404040,%edi
  40112e:	ff e0                	jmp    *%rax
  401130:	c3                   	ret    
  401131:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401138:	00 00 00 00 
  40113c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401140 <__do_global_dtors_aux>:
  401140:	f3 0f 1e fa          	endbr64 
  401144:	80 3d f5 2e 00 00 00 	cmpb   $0x0,0x2ef5(%rip)        # 404040 <__TMC_END__>
  40114b:	75 13                	jne    401160 <__do_global_dtors_aux+0x20>
  40114d:	55                   	push   %rbp
  40114e:	48 89 e5             	mov    %rsp,%rbp
  401151:	e8 7a ff ff ff       	call   4010d0 <deregister_tm_clones>
  401156:	c6 05 e3 2e 00 00 01 	movb   $0x1,0x2ee3(%rip)        # 404040 <__TMC_END__>
  40115d:	5d                   	pop    %rbp
  40115e:	c3                   	ret    
  40115f:	90                   	nop
  401160:	c3                   	ret    
  401161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401168:	00 00 00 00 
  40116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401170 <frame_dummy>:
  401170:	f3 0f 1e fa          	endbr64 
  401174:	eb 8a                	jmp    401100 <register_tm_clones>

0000000000401176 <run>:
  401176:	f3 0f 1e fa          	endbr64 
  40117a:	55                   	push   %rbp
  40117b:	48 89 e5             	mov    %rsp,%rbp
  40117e:	48 83 ec 20          	sub    $0x20,%rsp
  401182:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401186:	48 89 c6             	mov    %rax,%rsi
  401189:	48 8d 05 78 0e 00 00 	lea    0xe78(%rip),%rax        # 402008 <_IO_stdin_used+0x8>
  401190:	48 89 c7             	mov    %rax,%rdi
  401193:	b8 00 00 00 00       	mov    $0x0,%eax
  401198:	e8 e3 fe ff ff       	call   401080 <__isoc99_scanf@plt>
  40119d:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4011a0:	83 7d fc 07          	cmpl   $0x7,-0x4(%rbp)
  4011a4:	7e 16                	jle    4011bc <run+0x46>
  4011a6:	48 8d 05 5e 0e 00 00 	lea    0xe5e(%rip),%rax        # 40200b <_IO_stdin_used+0xb>
  4011ad:	48 89 c7             	mov    %rax,%rdi
  4011b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4011b5:	e8 b6 fe ff ff       	call   401070 <printf@plt>
  4011ba:	eb 14                	jmp    4011d0 <run+0x5a>
  4011bc:	48 8d 05 4d 0e 00 00 	lea    0xe4d(%rip),%rax        # 402010 <_IO_stdin_used+0x10>
  4011c3:	48 89 c7             	mov    %rax,%rdi
  4011c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4011cb:	e8 a0 fe ff ff       	call   401070 <printf@plt>
  4011d0:	90                   	nop
  4011d1:	c9                   	leave  
  4011d2:	c3                   	ret    

00000000004011d3 <executeIf>:
  4011d3:	f3 0f 1e fa          	endbr64 
  4011d7:	55                   	push   %rbp
  4011d8:	48 89 e5             	mov    %rsp,%rbp
  4011db:	48 83 ec 10          	sub    $0x10,%rsp
  4011df:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4011e3:	89 75 f4             	mov    %esi,-0xc(%rbp)
  4011e6:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  4011ea:	74 0c                	je     4011f8 <executeIf+0x25>
  4011ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4011f0:	48 89 c7             	mov    %rax,%rdi
  4011f3:	e8 68 fe ff ff       	call   401060 <system@plt>
  4011f8:	90                   	nop
  4011f9:	c9                   	leave  
  4011fa:	c3                   	ret    

00000000004011fb <main>:
  4011fb:	f3 0f 1e fa          	endbr64 
  4011ff:	55                   	push   %rbp
  401200:	48 89 e5             	mov    %rsp,%rbp
  401203:	b8 00 00 00 00       	mov    $0x0,%eax
  401208:	e8 69 ff ff ff       	call   401176 <run>
  40120d:	b8 00 00 00 00       	mov    $0x0,%eax
  401212:	5d                   	pop    %rbp
  401213:	c3                   	ret    

Disassembly of section .fini:

0000000000401214 <_fini>:
  401214:	f3 0f 1e fa          	endbr64 
  401218:	48 83 ec 08          	sub    $0x8,%rsp
  40121c:	48 83 c4 08          	add    $0x8,%rsp
  401220:	c3                   	ret    
