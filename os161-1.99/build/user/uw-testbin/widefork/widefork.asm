
../../../build/user/uw-testbin/widefork/widefork:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <__start>:
  400000:	3c1c1001 	lui	gp,0x1001
  400004:	279c8000 	addiu	gp,gp,-32768
  400008:	2408fff8 	li	t0,-8
  40000c:	03a8e824 	and	sp,sp,t0
  400010:	27bdfff0 	addiu	sp,sp,-16
  400014:	3c011000 	lui	at,0x1000
  400018:	ac250014 	sw	a1,20(at)
  40001c:	0c10006e 	jal	4001b8 <main>
  400020:	00000000 	nop
  400024:	00408021 	move	s0,v0
  400028:	0c1000e1 	jal	400384 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c1000f7 	jal	4003dc <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <dowait>:
  400050:	27bdffd8 	addiu	sp,sp,-40
  400054:	afb00018 	sw	s0,24(sp)
  400058:	00003021 	move	a2,zero
  40005c:	00a08021 	move	s0,a1
  400060:	27a50010 	addiu	a1,sp,16
  400064:	afbf0020 	sw	ra,32(sp)
  400068:	0c1000f9 	jal	4003e4 <waitpid>
  40006c:	afb1001c 	sw	s1,28(sp)
  400070:	3c040040 	lui	a0,0x40
  400074:	04400025 	bltz	v0,40010c <dowait+0xbc>
  400078:	24841a80 	addiu	a0,a0,6784
  40007c:	8fa20010 	lw	v0,16(sp)
  400080:	24040074 	li	a0,116
  400084:	30420003 	andi	v0,v0,0x3
  400088:	1040000b 	beqz	v0,4000b8 <dowait+0x68>
  40008c:	3c110040 	lui	s1,0x40
  400090:	24040078 	li	a0,120
  400094:	0c1000c0 	jal	400300 <putchar>
  400098:	00000000 	nop
  40009c:	0c1000c0 	jal	400300 <putchar>
  4000a0:	2404000a 	li	a0,10
  4000a4:	8fbf0020 	lw	ra,32(sp)
  4000a8:	8fb1001c 	lw	s1,28(sp)
  4000ac:	8fb00018 	lw	s0,24(sp)
  4000b0:	03e00008 	jr	ra
  4000b4:	27bd0028 	addiu	sp,sp,40
  4000b8:	0c1000c0 	jal	400300 <putchar>
  4000bc:	00000000 	nop
  4000c0:	0c1000c0 	jal	400300 <putchar>
  4000c4:	2404000a 	li	a0,10
  4000c8:	8fa50010 	lw	a1,16(sp)
  4000cc:	26241a8c 	addiu	a0,s1,6796
  4000d0:	0c1000b3 	jal	4002cc <printf>
  4000d4:	00052883 	sra	a1,a1,0x2
  4000d8:	26241a8c 	addiu	a0,s1,6796
  4000dc:	0c1000b3 	jal	4002cc <printf>
  4000e0:	02002821 	move	a1,s0
  4000e4:	8fa20010 	lw	v0,16(sp)
  4000e8:	00000000 	nop
  4000ec:	00021083 	sra	v0,v0,0x2
  4000f0:	1202ffe8 	beq	s0,v0,400094 <dowait+0x44>
  4000f4:	26040060 	addiu	a0,s0,96
  4000f8:	8fbf0020 	lw	ra,32(sp)
  4000fc:	8fb1001c 	lw	s1,28(sp)
  400100:	8fb00018 	lw	s0,24(sp)
  400104:	03e00008 	jr	ra
  400108:	27bd0028 	addiu	sp,sp,40
  40010c:	0c10020e 	jal	400838 <warnx>
  400110:	00000000 	nop
  400114:	8fbf0020 	lw	ra,32(sp)
  400118:	8fb1001c 	lw	s1,28(sp)
  40011c:	8fb00018 	lw	s0,24(sp)
  400120:	03e00008 	jr	ra
  400124:	27bd0028 	addiu	sp,sp,40

00400128 <dofork>:
  400128:	27bdffe0 	addiu	sp,sp,-32
  40012c:	afb10014 	sw	s1,20(sp)
  400130:	afb00010 	sw	s0,16(sp)
  400134:	afbf0018 	sw	ra,24(sp)
  400138:	0c1000f1 	jal	4003c4 <fork>
  40013c:	00808821 	move	s1,a0
  400140:	04400008 	bltz	v0,400164 <dofork+0x3c>
  400144:	00408021 	move	s0,v0
  400148:	10400011 	beqz	v0,400190 <dofork+0x68>
  40014c:	02001021 	move	v0,s0
  400150:	8fbf0018 	lw	ra,24(sp)
  400154:	8fb10014 	lw	s1,20(sp)
  400158:	8fb00010 	lw	s0,16(sp)
  40015c:	03e00008 	jr	ra
  400160:	27bd0020 	addiu	sp,sp,32
  400164:	3c050040 	lui	a1,0x40
  400168:	02203021 	move	a2,s1
  40016c:	24a51a90 	addiu	a1,a1,6800
  400170:	0c1001ea 	jal	4007a8 <errx>
  400174:	24040001 	li	a0,1
  400178:	02001021 	move	v0,s0
  40017c:	8fbf0018 	lw	ra,24(sp)
  400180:	8fb10014 	lw	s1,20(sp)
  400184:	8fb00010 	lw	s0,16(sp)
  400188:	03e00008 	jr	ra
  40018c:	27bd0020 	addiu	sp,sp,32
  400190:	0c1000c0 	jal	400300 <putchar>
  400194:	2624ffff 	addiu	a0,s1,-1
  400198:	0c1000c0 	jal	400300 <putchar>
  40019c:	2404000a 	li	a0,10
  4001a0:	0c1000c0 	jal	400300 <putchar>
  4001a4:	26240040 	addiu	a0,s1,64
  4001a8:	0c1000c0 	jal	400300 <putchar>
  4001ac:	2404000a 	li	a0,10
  4001b0:	0c1000f7 	jal	4003dc <_exit>
  4001b4:	02202021 	move	a0,s1

004001b8 <main>:
  4001b8:	27bdffe0 	addiu	sp,sp,-32
  4001bc:	24040050 	li	a0,80
  4001c0:	afbf001c 	sw	ra,28(sp)
  4001c4:	afb20018 	sw	s2,24(sp)
  4001c8:	afb10014 	sw	s1,20(sp)
  4001cc:	0c1000c0 	jal	400300 <putchar>
  4001d0:	afb00010 	sw	s0,16(sp)
  4001d4:	0c1000c0 	jal	400300 <putchar>
  4001d8:	2404000a 	li	a0,10
  4001dc:	0c10004a 	jal	400128 <dofork>
  4001e0:	24040001 	li	a0,1
  4001e4:	24040050 	li	a0,80
  4001e8:	0c1000c0 	jal	400300 <putchar>
  4001ec:	00409021 	move	s2,v0
  4001f0:	0c1000c0 	jal	400300 <putchar>
  4001f4:	2404000a 	li	a0,10
  4001f8:	0c10004a 	jal	400128 <dofork>
  4001fc:	24040002 	li	a0,2
  400200:	24040050 	li	a0,80
  400204:	0c1000c0 	jal	400300 <putchar>
  400208:	00408821 	move	s1,v0
  40020c:	0c1000c0 	jal	400300 <putchar>
  400210:	2404000a 	li	a0,10
  400214:	0c10004a 	jal	400128 <dofork>
  400218:	24040003 	li	a0,3
  40021c:	02402021 	move	a0,s2
  400220:	24050001 	li	a1,1
  400224:	0c100014 	jal	400050 <dowait>
  400228:	00408021 	move	s0,v0
  40022c:	02202021 	move	a0,s1
  400230:	0c100014 	jal	400050 <dowait>
  400234:	24050002 	li	a1,2
  400238:	02002021 	move	a0,s0
  40023c:	0c100014 	jal	400050 <dowait>
  400240:	24050003 	li	a1,3
  400244:	8fbf001c 	lw	ra,28(sp)
  400248:	8fb20018 	lw	s2,24(sp)
  40024c:	8fb10014 	lw	s1,20(sp)
  400250:	8fb00010 	lw	s0,16(sp)
  400254:	00001021 	move	v0,zero
  400258:	03e00008 	jr	ra
  40025c:	27bd0020 	addiu	sp,sp,32

00400260 <vprintf>:
  400260:	00803021 	move	a2,a0
  400264:	3c040040 	lui	a0,0x40
  400268:	00a03821 	move	a3,a1
  40026c:	24840278 	addiu	a0,a0,632
  400270:	081002e9 	j	400ba4 <__vprintf>
  400274:	00002821 	move	a1,zero

00400278 <__printf_send>:
  400278:	27bdffe0 	addiu	sp,sp,-32
  40027c:	afb20018 	sw	s2,24(sp)
  400280:	afb10014 	sw	s1,20(sp)
  400284:	afbf001c 	sw	ra,28(sp)
  400288:	afb00010 	sw	s0,16(sp)
  40028c:	00c09021 	move	s2,a2
  400290:	10c00008 	beqz	a2,4002b4 <__printf_send+0x3c>
  400294:	00a08821 	move	s1,a1
  400298:	00008021 	move	s0,zero
  40029c:	02301021 	addu	v0,s1,s0
  4002a0:	80440000 	lb	a0,0(v0)
  4002a4:	0c1000c0 	jal	400300 <putchar>
  4002a8:	26100001 	addiu	s0,s0,1
  4002ac:	1650fffc 	bne	s2,s0,4002a0 <__printf_send+0x28>
  4002b0:	02301021 	addu	v0,s1,s0
  4002b4:	8fbf001c 	lw	ra,28(sp)
  4002b8:	8fb20018 	lw	s2,24(sp)
  4002bc:	8fb10014 	lw	s1,20(sp)
  4002c0:	8fb00010 	lw	s0,16(sp)
  4002c4:	03e00008 	jr	ra
  4002c8:	27bd0020 	addiu	sp,sp,32

004002cc <printf>:
  4002cc:	27bdffe0 	addiu	sp,sp,-32
  4002d0:	27a20024 	addiu	v0,sp,36
  4002d4:	afa50024 	sw	a1,36(sp)
  4002d8:	00402821 	move	a1,v0
  4002dc:	afbf0018 	sw	ra,24(sp)
  4002e0:	afa60028 	sw	a2,40(sp)
  4002e4:	afa7002c 	sw	a3,44(sp)
  4002e8:	0c100098 	jal	400260 <vprintf>
  4002ec:	afa20010 	sw	v0,16(sp)
  4002f0:	8fbf0018 	lw	ra,24(sp)
  4002f4:	00000000 	nop
  4002f8:	03e00008 	jr	ra
  4002fc:	27bd0020 	addiu	sp,sp,32

00400300 <putchar>:
  400300:	27bdffe0 	addiu	sp,sp,-32
  400304:	afb00018 	sw	s0,24(sp)
  400308:	27a50010 	addiu	a1,sp,16
  40030c:	00808021 	move	s0,a0
  400310:	24060001 	li	a2,1
  400314:	24040001 	li	a0,1
  400318:	afbf001c 	sw	ra,28(sp)
  40031c:	0c100137 	jal	4004dc <write>
  400320:	a3b00010 	sb	s0,16(sp)
  400324:	18400005 	blez	v0,40033c <putchar+0x3c>
  400328:	02001021 	move	v0,s0
  40032c:	8fbf001c 	lw	ra,28(sp)
  400330:	8fb00018 	lw	s0,24(sp)
  400334:	03e00008 	jr	ra
  400338:	27bd0020 	addiu	sp,sp,32
  40033c:	2410ffff 	li	s0,-1
  400340:	02001021 	move	v0,s0
  400344:	8fbf001c 	lw	ra,28(sp)
  400348:	8fb00018 	lw	s0,24(sp)
  40034c:	03e00008 	jr	ra
  400350:	27bd0020 	addiu	sp,sp,32
	...

00400360 <__exit_hack>:
  400360:	27bdfff8 	addiu	sp,sp,-8
  400364:	24020001 	li	v0,1
  400368:	afa20000 	sw	v0,0(sp)
  40036c:	8fa20000 	lw	v0,0(sp)
  400370:	00000000 	nop
  400374:	1440fffd 	bnez	v0,40036c <__exit_hack+0xc>
  400378:	00000000 	nop
  40037c:	03e00008 	jr	ra
  400380:	27bd0008 	addiu	sp,sp,8

00400384 <exit>:
  400384:	27bdffe8 	addiu	sp,sp,-24
  400388:	afbf0010 	sw	ra,16(sp)
  40038c:	0c1000f7 	jal	4003dc <_exit>
  400390:	00000000 	nop
	...

004003a0 <__syscall>:
  4003a0:	0000000c 	syscall
  4003a4:	10e00005 	beqz	a3,4003bc <__syscall+0x1c>
  4003a8:	00000000 	nop
  4003ac:	3c011000 	lui	at,0x1000
  4003b0:	ac220010 	sw	v0,16(at)
  4003b4:	2403ffff 	li	v1,-1
  4003b8:	2402ffff 	li	v0,-1
  4003bc:	03e00008 	jr	ra
  4003c0:	00000000 	nop

004003c4 <fork>:
  4003c4:	081000e8 	j	4003a0 <__syscall>
  4003c8:	24020000 	li	v0,0

004003cc <vfork>:
  4003cc:	081000e8 	j	4003a0 <__syscall>
  4003d0:	24020001 	li	v0,1

004003d4 <execv>:
  4003d4:	081000e8 	j	4003a0 <__syscall>
  4003d8:	24020002 	li	v0,2

004003dc <_exit>:
  4003dc:	081000e8 	j	4003a0 <__syscall>
  4003e0:	24020003 	li	v0,3

004003e4 <waitpid>:
  4003e4:	081000e8 	j	4003a0 <__syscall>
  4003e8:	24020004 	li	v0,4

004003ec <getpid>:
  4003ec:	081000e8 	j	4003a0 <__syscall>
  4003f0:	24020005 	li	v0,5

004003f4 <getppid>:
  4003f4:	081000e8 	j	4003a0 <__syscall>
  4003f8:	24020006 	li	v0,6

004003fc <sbrk>:
  4003fc:	081000e8 	j	4003a0 <__syscall>
  400400:	24020007 	li	v0,7

00400404 <mmap>:
  400404:	081000e8 	j	4003a0 <__syscall>
  400408:	24020008 	li	v0,8

0040040c <munmap>:
  40040c:	081000e8 	j	4003a0 <__syscall>
  400410:	24020009 	li	v0,9

00400414 <mprotect>:
  400414:	081000e8 	j	4003a0 <__syscall>
  400418:	2402000a 	li	v0,10

0040041c <umask>:
  40041c:	081000e8 	j	4003a0 <__syscall>
  400420:	24020011 	li	v0,17

00400424 <issetugid>:
  400424:	081000e8 	j	4003a0 <__syscall>
  400428:	24020012 	li	v0,18

0040042c <getresuid>:
  40042c:	081000e8 	j	4003a0 <__syscall>
  400430:	24020013 	li	v0,19

00400434 <setresuid>:
  400434:	081000e8 	j	4003a0 <__syscall>
  400438:	24020014 	li	v0,20

0040043c <getresgid>:
  40043c:	081000e8 	j	4003a0 <__syscall>
  400440:	24020015 	li	v0,21

00400444 <setresgid>:
  400444:	081000e8 	j	4003a0 <__syscall>
  400448:	24020016 	li	v0,22

0040044c <getgroups>:
  40044c:	081000e8 	j	4003a0 <__syscall>
  400450:	24020017 	li	v0,23

00400454 <setgroups>:
  400454:	081000e8 	j	4003a0 <__syscall>
  400458:	24020018 	li	v0,24

0040045c <__getlogin>:
  40045c:	081000e8 	j	4003a0 <__syscall>
  400460:	24020019 	li	v0,25

00400464 <__setlogin>:
  400464:	081000e8 	j	4003a0 <__syscall>
  400468:	2402001a 	li	v0,26

0040046c <kill>:
  40046c:	081000e8 	j	4003a0 <__syscall>
  400470:	2402001b 	li	v0,27

00400474 <sigaction>:
  400474:	081000e8 	j	4003a0 <__syscall>
  400478:	2402001c 	li	v0,28

0040047c <sigpending>:
  40047c:	081000e8 	j	4003a0 <__syscall>
  400480:	2402001d 	li	v0,29

00400484 <sigprocmask>:
  400484:	081000e8 	j	4003a0 <__syscall>
  400488:	2402001e 	li	v0,30

0040048c <sigsuspend>:
  40048c:	081000e8 	j	4003a0 <__syscall>
  400490:	2402001f 	li	v0,31

00400494 <sigreturn>:
  400494:	081000e8 	j	4003a0 <__syscall>
  400498:	24020020 	li	v0,32

0040049c <open>:
  40049c:	081000e8 	j	4003a0 <__syscall>
  4004a0:	2402002d 	li	v0,45

004004a4 <pipe>:
  4004a4:	081000e8 	j	4003a0 <__syscall>
  4004a8:	2402002e 	li	v0,46

004004ac <dup>:
  4004ac:	081000e8 	j	4003a0 <__syscall>
  4004b0:	2402002f 	li	v0,47

004004b4 <dup2>:
  4004b4:	081000e8 	j	4003a0 <__syscall>
  4004b8:	24020030 	li	v0,48

004004bc <close>:
  4004bc:	081000e8 	j	4003a0 <__syscall>
  4004c0:	24020031 	li	v0,49

004004c4 <read>:
  4004c4:	081000e8 	j	4003a0 <__syscall>
  4004c8:	24020032 	li	v0,50

004004cc <pread>:
  4004cc:	081000e8 	j	4003a0 <__syscall>
  4004d0:	24020033 	li	v0,51

004004d4 <getdirentry>:
  4004d4:	081000e8 	j	4003a0 <__syscall>
  4004d8:	24020036 	li	v0,54

004004dc <write>:
  4004dc:	081000e8 	j	4003a0 <__syscall>
  4004e0:	24020037 	li	v0,55

004004e4 <pwrite>:
  4004e4:	081000e8 	j	4003a0 <__syscall>
  4004e8:	24020038 	li	v0,56

004004ec <lseek>:
  4004ec:	081000e8 	j	4003a0 <__syscall>
  4004f0:	2402003b 	li	v0,59

004004f4 <flock>:
  4004f4:	081000e8 	j	4003a0 <__syscall>
  4004f8:	2402003c 	li	v0,60

004004fc <ftruncate>:
  4004fc:	081000e8 	j	4003a0 <__syscall>
  400500:	2402003d 	li	v0,61

00400504 <fsync>:
  400504:	081000e8 	j	4003a0 <__syscall>
  400508:	2402003e 	li	v0,62

0040050c <fcntl>:
  40050c:	081000e8 	j	4003a0 <__syscall>
  400510:	2402003f 	li	v0,63

00400514 <ioctl>:
  400514:	081000e8 	j	4003a0 <__syscall>
  400518:	24020040 	li	v0,64

0040051c <select>:
  40051c:	081000e8 	j	4003a0 <__syscall>
  400520:	24020041 	li	v0,65

00400524 <poll>:
  400524:	081000e8 	j	4003a0 <__syscall>
  400528:	24020042 	li	v0,66

0040052c <link>:
  40052c:	081000e8 	j	4003a0 <__syscall>
  400530:	24020043 	li	v0,67

00400534 <remove>:
  400534:	081000e8 	j	4003a0 <__syscall>
  400538:	24020044 	li	v0,68

0040053c <mkdir>:
  40053c:	081000e8 	j	4003a0 <__syscall>
  400540:	24020045 	li	v0,69

00400544 <rmdir>:
  400544:	081000e8 	j	4003a0 <__syscall>
  400548:	24020046 	li	v0,70

0040054c <mkfifo>:
  40054c:	081000e8 	j	4003a0 <__syscall>
  400550:	24020047 	li	v0,71

00400554 <rename>:
  400554:	081000e8 	j	4003a0 <__syscall>
  400558:	24020048 	li	v0,72

0040055c <access>:
  40055c:	081000e8 	j	4003a0 <__syscall>
  400560:	24020049 	li	v0,73

00400564 <chdir>:
  400564:	081000e8 	j	4003a0 <__syscall>
  400568:	2402004a 	li	v0,74

0040056c <fchdir>:
  40056c:	081000e8 	j	4003a0 <__syscall>
  400570:	2402004b 	li	v0,75

00400574 <__getcwd>:
  400574:	081000e8 	j	4003a0 <__syscall>
  400578:	2402004c 	li	v0,76

0040057c <symlink>:
  40057c:	081000e8 	j	4003a0 <__syscall>
  400580:	2402004d 	li	v0,77

00400584 <readlink>:
  400584:	081000e8 	j	4003a0 <__syscall>
  400588:	2402004e 	li	v0,78

0040058c <mount>:
  40058c:	081000e8 	j	4003a0 <__syscall>
  400590:	2402004f 	li	v0,79

00400594 <unmount>:
  400594:	081000e8 	j	4003a0 <__syscall>
  400598:	24020050 	li	v0,80

0040059c <stat>:
  40059c:	081000e8 	j	4003a0 <__syscall>
  4005a0:	24020051 	li	v0,81

004005a4 <fstat>:
  4005a4:	081000e8 	j	4003a0 <__syscall>
  4005a8:	24020052 	li	v0,82

004005ac <lstat>:
  4005ac:	081000e8 	j	4003a0 <__syscall>
  4005b0:	24020053 	li	v0,83

004005b4 <utimes>:
  4005b4:	081000e8 	j	4003a0 <__syscall>
  4005b8:	24020054 	li	v0,84

004005bc <futimes>:
  4005bc:	081000e8 	j	4003a0 <__syscall>
  4005c0:	24020055 	li	v0,85

004005c4 <lutimes>:
  4005c4:	081000e8 	j	4003a0 <__syscall>
  4005c8:	24020056 	li	v0,86

004005cc <chmod>:
  4005cc:	081000e8 	j	4003a0 <__syscall>
  4005d0:	24020057 	li	v0,87

004005d4 <chown>:
  4005d4:	081000e8 	j	4003a0 <__syscall>
  4005d8:	24020058 	li	v0,88

004005dc <fchmod>:
  4005dc:	081000e8 	j	4003a0 <__syscall>
  4005e0:	24020059 	li	v0,89

004005e4 <fchown>:
  4005e4:	081000e8 	j	4003a0 <__syscall>
  4005e8:	2402005a 	li	v0,90

004005ec <lchmod>:
  4005ec:	081000e8 	j	4003a0 <__syscall>
  4005f0:	2402005b 	li	v0,91

004005f4 <lchown>:
  4005f4:	081000e8 	j	4003a0 <__syscall>
  4005f8:	2402005c 	li	v0,92

004005fc <socket>:
  4005fc:	081000e8 	j	4003a0 <__syscall>
  400600:	24020062 	li	v0,98

00400604 <bind>:
  400604:	081000e8 	j	4003a0 <__syscall>
  400608:	24020063 	li	v0,99

0040060c <connect>:
  40060c:	081000e8 	j	4003a0 <__syscall>
  400610:	24020064 	li	v0,100

00400614 <listen>:
  400614:	081000e8 	j	4003a0 <__syscall>
  400618:	24020065 	li	v0,101

0040061c <accept>:
  40061c:	081000e8 	j	4003a0 <__syscall>
  400620:	24020066 	li	v0,102

00400624 <shutdown>:
  400624:	081000e8 	j	4003a0 <__syscall>
  400628:	24020068 	li	v0,104

0040062c <getsockname>:
  40062c:	081000e8 	j	4003a0 <__syscall>
  400630:	24020069 	li	v0,105

00400634 <getpeername>:
  400634:	081000e8 	j	4003a0 <__syscall>
  400638:	2402006a 	li	v0,106

0040063c <getsockopt>:
  40063c:	081000e8 	j	4003a0 <__syscall>
  400640:	2402006b 	li	v0,107

00400644 <setsockopt>:
  400644:	081000e8 	j	4003a0 <__syscall>
  400648:	2402006c 	li	v0,108

0040064c <__time>:
  40064c:	081000e8 	j	4003a0 <__syscall>
  400650:	24020071 	li	v0,113

00400654 <__settime>:
  400654:	081000e8 	j	4003a0 <__syscall>
  400658:	24020072 	li	v0,114

0040065c <nanosleep>:
  40065c:	081000e8 	j	4003a0 <__syscall>
  400660:	24020073 	li	v0,115

00400664 <sync>:
  400664:	081000e8 	j	4003a0 <__syscall>
  400668:	24020076 	li	v0,118

0040066c <reboot>:
  40066c:	081000e8 	j	4003a0 <__syscall>
  400670:	24020077 	li	v0,119
	...

00400680 <__senderr>:
  400680:	08100137 	j	4004dc <write>
  400684:	24040002 	li	a0,2

00400688 <__senderrstr>:
  400688:	27bdffe8 	addiu	sp,sp,-24
  40068c:	afbf0014 	sw	ra,20(sp)
  400690:	afb00010 	sw	s0,16(sp)
  400694:	0c100458 	jal	401160 <strlen>
  400698:	00808021 	move	s0,a0
  40069c:	00403021 	move	a2,v0
  4006a0:	02002821 	move	a1,s0
  4006a4:	8fbf0014 	lw	ra,20(sp)
  4006a8:	8fb00010 	lw	s0,16(sp)
  4006ac:	00002021 	move	a0,zero
  4006b0:	081001a0 	j	400680 <__senderr>
  4006b4:	27bd0018 	addiu	sp,sp,24

004006b8 <__printerr>:
  4006b8:	27bdffd8 	addiu	sp,sp,-40
  4006bc:	afb40020 	sw	s4,32(sp)
  4006c0:	afb3001c 	sw	s3,28(sp)
  4006c4:	afb20018 	sw	s2,24(sp)
  4006c8:	afb10014 	sw	s1,20(sp)
  4006cc:	afbf0024 	sw	ra,36(sp)
  4006d0:	afb00010 	sw	s0,16(sp)
  4006d4:	3c021000 	lui	v0,0x1000
  4006d8:	00809821 	move	s3,a0
  4006dc:	8c440010 	lw	a0,16(v0)
  4006e0:	00a08821 	move	s1,a1
  4006e4:	0c10044c 	jal	401130 <strerror>
  4006e8:	00c09021 	move	s2,a2
  4006ec:	0040a021 	move	s4,v0
  4006f0:	3c021000 	lui	v0,0x1000
  4006f4:	8c420014 	lw	v0,20(v0)
  4006f8:	00000000 	nop
  4006fc:	1040001f 	beqz	v0,40077c <__printerr+0xc4>
  400700:	00000000 	nop
  400704:	8c420000 	lw	v0,0(v0)
  400708:	00000000 	nop
  40070c:	1040001b 	beqz	v0,40077c <__printerr+0xc4>
  400710:	00402021 	move	a0,v0
  400714:	0c1001a2 	jal	400688 <__senderrstr>
  400718:	3c100040 	lui	s0,0x40
  40071c:	0c1001a2 	jal	400688 <__senderrstr>
  400720:	26041ab0 	addiu	a0,s0,6832
  400724:	3c040040 	lui	a0,0x40
  400728:	24840680 	addiu	a0,a0,1664
  40072c:	02203021 	move	a2,s1
  400730:	02403821 	move	a3,s2
  400734:	0c1002e9 	jal	400ba4 <__vprintf>
  400738:	00002821 	move	a1,zero
  40073c:	12600005 	beqz	s3,400754 <__printerr+0x9c>
  400740:	26041ab0 	addiu	a0,s0,6832
  400744:	0c1001a2 	jal	400688 <__senderrstr>
  400748:	00000000 	nop
  40074c:	0c1001a2 	jal	400688 <__senderrstr>
  400750:	02802021 	move	a0,s4
  400754:	3c040040 	lui	a0,0x40
  400758:	8fbf0024 	lw	ra,36(sp)
  40075c:	8fb40020 	lw	s4,32(sp)
  400760:	8fb3001c 	lw	s3,28(sp)
  400764:	8fb20018 	lw	s2,24(sp)
  400768:	8fb10014 	lw	s1,20(sp)
  40076c:	8fb00010 	lw	s0,16(sp)
  400770:	24841ab4 	addiu	a0,a0,6836
  400774:	081001a2 	j	400688 <__senderrstr>
  400778:	27bd0028 	addiu	sp,sp,40
  40077c:	3c020040 	lui	v0,0x40
  400780:	081001c5 	j	400714 <__printerr+0x5c>
  400784:	24441a98 	addiu	a0,v0,6808

00400788 <verrx>:
  400788:	27bdffe8 	addiu	sp,sp,-24
  40078c:	afb00010 	sw	s0,16(sp)
  400790:	00808021 	move	s0,a0
  400794:	afbf0014 	sw	ra,20(sp)
  400798:	0c1001ae 	jal	4006b8 <__printerr>
  40079c:	00002021 	move	a0,zero
  4007a0:	0c1000e1 	jal	400384 <exit>
  4007a4:	02002021 	move	a0,s0

004007a8 <errx>:
  4007a8:	27bdffe0 	addiu	sp,sp,-32
  4007ac:	27a20028 	addiu	v0,sp,40
  4007b0:	afa60028 	sw	a2,40(sp)
  4007b4:	00403021 	move	a2,v0
  4007b8:	afbf0018 	sw	ra,24(sp)
  4007bc:	afa7002c 	sw	a3,44(sp)
  4007c0:	0c1001e2 	jal	400788 <verrx>
  4007c4:	afa20010 	sw	v0,16(sp)
  4007c8:	8fbf0018 	lw	ra,24(sp)
  4007cc:	00000000 	nop
  4007d0:	03e00008 	jr	ra
  4007d4:	27bd0020 	addiu	sp,sp,32

004007d8 <verr>:
  4007d8:	27bdffe8 	addiu	sp,sp,-24
  4007dc:	afb00010 	sw	s0,16(sp)
  4007e0:	00808021 	move	s0,a0
  4007e4:	afbf0014 	sw	ra,20(sp)
  4007e8:	0c1001ae 	jal	4006b8 <__printerr>
  4007ec:	24040001 	li	a0,1
  4007f0:	0c1000e1 	jal	400384 <exit>
  4007f4:	02002021 	move	a0,s0

004007f8 <err>:
  4007f8:	27bdffe0 	addiu	sp,sp,-32
  4007fc:	27a20028 	addiu	v0,sp,40
  400800:	afa60028 	sw	a2,40(sp)
  400804:	00403021 	move	a2,v0
  400808:	afbf0018 	sw	ra,24(sp)
  40080c:	afa7002c 	sw	a3,44(sp)
  400810:	0c1001f6 	jal	4007d8 <verr>
  400814:	afa20010 	sw	v0,16(sp)
  400818:	8fbf0018 	lw	ra,24(sp)
  40081c:	00000000 	nop
  400820:	03e00008 	jr	ra
  400824:	27bd0020 	addiu	sp,sp,32

00400828 <vwarnx>:
  400828:	00a03021 	move	a2,a1
  40082c:	00802821 	move	a1,a0
  400830:	081001ae 	j	4006b8 <__printerr>
  400834:	00002021 	move	a0,zero

00400838 <warnx>:
  400838:	27bdffe0 	addiu	sp,sp,-32
  40083c:	27a20024 	addiu	v0,sp,36
  400840:	afa50024 	sw	a1,36(sp)
  400844:	00402821 	move	a1,v0
  400848:	afbf0018 	sw	ra,24(sp)
  40084c:	afa60028 	sw	a2,40(sp)
  400850:	afa7002c 	sw	a3,44(sp)
  400854:	0c10020a 	jal	400828 <vwarnx>
  400858:	afa20010 	sw	v0,16(sp)
  40085c:	8fbf0018 	lw	ra,24(sp)
  400860:	00000000 	nop
  400864:	03e00008 	jr	ra
  400868:	27bd0020 	addiu	sp,sp,32

0040086c <vwarn>:
  40086c:	00a03021 	move	a2,a1
  400870:	00802821 	move	a1,a0
  400874:	081001ae 	j	4006b8 <__printerr>
  400878:	24040001 	li	a0,1

0040087c <warn>:
  40087c:	27bdffe0 	addiu	sp,sp,-32
  400880:	27a20024 	addiu	v0,sp,36
  400884:	afa50024 	sw	a1,36(sp)
  400888:	00402821 	move	a1,v0
  40088c:	afbf0018 	sw	ra,24(sp)
  400890:	afa60028 	sw	a2,40(sp)
  400894:	afa7002c 	sw	a3,44(sp)
  400898:	0c10021b 	jal	40086c <vwarn>
  40089c:	afa20010 	sw	v0,16(sp)
  4008a0:	8fbf0018 	lw	ra,24(sp)
  4008a4:	00000000 	nop
  4008a8:	03e00008 	jr	ra
  4008ac:	27bd0020 	addiu	sp,sp,32

004008b0 <__pf_print>:
  4008b0:	27bdffe0 	addiu	sp,sp,-32
  4008b4:	afbf0018 	sw	ra,24(sp)
  4008b8:	afb10014 	sw	s1,20(sp)
  4008bc:	afb00010 	sw	s0,16(sp)
  4008c0:	8c830000 	lw	v1,0(a0)
  4008c4:	00808021 	move	s0,a0
  4008c8:	8c840004 	lw	a0,4(a0)
  4008cc:	0060f809 	jalr	v1
  4008d0:	00c08821 	move	s1,a2
  4008d4:	8e02000c 	lw	v0,12(s0)
  4008d8:	00000000 	nop
  4008dc:	00511021 	addu	v0,v0,s1
  4008e0:	ae02000c 	sw	v0,12(s0)
  4008e4:	8fbf0018 	lw	ra,24(sp)
  4008e8:	8fb10014 	lw	s1,20(sp)
  4008ec:	8fb00010 	lw	s0,16(sp)
  4008f0:	03e00008 	jr	ra
  4008f4:	27bd0020 	addiu	sp,sp,32

004008f8 <__pf_endfield>:
  4008f8:	24020020 	li	v0,32
  4008fc:	ac82002c 	sw	v0,44(a0)
  400900:	00001821 	move	v1,zero
  400904:	00001021 	move	v0,zero
  400908:	ac800038 	sw	zero,56(a0)
  40090c:	ac800010 	sw	zero,16(a0)
  400910:	ac800014 	sw	zero,20(a0)
  400914:	ac83001c 	sw	v1,28(a0)
  400918:	ac820018 	sw	v0,24(a0)
  40091c:	ac800020 	sw	zero,32(a0)
  400920:	ac800024 	sw	zero,36(a0)
  400924:	ac800028 	sw	zero,40(a0)
  400928:	ac800030 	sw	zero,48(a0)
  40092c:	03e00008 	jr	ra
  400930:	ac800034 	sw	zero,52(a0)

00400934 <__pf_fill>:
  400934:	27bdffd0 	addiu	sp,sp,-48
  400938:	afb30024 	sw	s3,36(sp)
  40093c:	afb20020 	sw	s2,32(sp)
  400940:	afbf0028 	sw	ra,40(sp)
  400944:	afb1001c 	sw	s1,28(sp)
  400948:	afb00018 	sw	s0,24(sp)
  40094c:	00809821 	move	s3,a0
  400950:	8c82002c 	lw	v0,44(a0)
  400954:	18a0000b 	blez	a1,400984 <__pf_fill+0x50>
  400958:	00a09021 	move	s2,a1
  40095c:	a3a20010 	sb	v0,16(sp)
  400960:	00008021 	move	s0,zero
  400964:	27b10010 	addiu	s1,sp,16
  400968:	26100001 	addiu	s0,s0,1
  40096c:	02602021 	move	a0,s3
  400970:	02202821 	move	a1,s1
  400974:	0c10022c 	jal	4008b0 <__pf_print>
  400978:	24060001 	li	a2,1
  40097c:	1650fffb 	bne	s2,s0,40096c <__pf_fill+0x38>
  400980:	26100001 	addiu	s0,s0,1
  400984:	8fbf0028 	lw	ra,40(sp)
  400988:	8fb30024 	lw	s3,36(sp)
  40098c:	8fb20020 	lw	s2,32(sp)
  400990:	8fb1001c 	lw	s1,28(sp)
  400994:	8fb00018 	lw	s0,24(sp)
  400998:	03e00008 	jr	ra
  40099c:	27bd0030 	addiu	sp,sp,48

004009a0 <__pf_printstuff>:
  4009a0:	27bdffd0 	addiu	sp,sp,-48
  4009a4:	afbf0028 	sw	ra,40(sp)
  4009a8:	afb50024 	sw	s5,36(sp)
  4009ac:	afb40020 	sw	s4,32(sp)
  4009b0:	afb3001c 	sw	s3,28(sp)
  4009b4:	afb20018 	sw	s2,24(sp)
  4009b8:	00c09821 	move	s3,a2
  4009bc:	afb10014 	sw	s1,20(sp)
  4009c0:	afb00010 	sw	s0,16(sp)
  4009c4:	00808821 	move	s1,a0
  4009c8:	00a02021 	move	a0,a1
  4009cc:	00a0a021 	move	s4,a1
  4009d0:	0c100458 	jal	401160 <strlen>
  4009d4:	00e0a821 	move	s5,a3
  4009d8:	02602021 	move	a0,s3
  4009dc:	0c100458 	jal	401160 <strlen>
  4009e0:	00409021 	move	s2,v0
  4009e4:	02a02021 	move	a0,s5
  4009e8:	0c100458 	jal	401160 <strlen>
  4009ec:	02428021 	addu	s0,s2,v0
  4009f0:	8e230024 	lw	v1,36(s1)
  4009f4:	02022821 	addu	a1,s0,v0
  4009f8:	00a3102a 	slt	v0,a1,v1
  4009fc:	10400040 	beqz	v0,400b00 <__pf_printstuff+0x160>
  400a00:	00658023 	subu	s0,v1,a1
  400a04:	1a000056 	blez	s0,400b60 <__pf_printstuff+0x1c0>
  400a08:	02403021 	move	a2,s2
  400a0c:	8e220028 	lw	v0,40(s1)
  400a10:	00000000 	nop
  400a14:	10400028 	beqz	v0,400ab8 <__pf_printstuff+0x118>
  400a18:	24020030 	li	v0,48
  400a1c:	0c100458 	jal	401160 <strlen>
  400a20:	02802021 	move	a0,s4
  400a24:	00403021 	move	a2,v0
  400a28:	02802821 	move	a1,s4
  400a2c:	0c10022c 	jal	4008b0 <__pf_print>
  400a30:	02202021 	move	a0,s1
  400a34:	0c100458 	jal	401160 <strlen>
  400a38:	02602021 	move	a0,s3
  400a3c:	00403021 	move	a2,v0
  400a40:	02202021 	move	a0,s1
  400a44:	0c10022c 	jal	4008b0 <__pf_print>
  400a48:	02602821 	move	a1,s3
  400a4c:	8e220028 	lw	v0,40(s1)
  400a50:	00000000 	nop
  400a54:	14400005 	bnez	v0,400a6c <__pf_printstuff+0xcc>
  400a58:	24020030 	li	v0,48
  400a5c:	8e23002c 	lw	v1,44(s1)
  400a60:	00000000 	nop
  400a64:	1062004b 	beq	v1,v0,400b94 <__pf_printstuff+0x1f4>
  400a68:	02202021 	move	a0,s1
  400a6c:	0c100458 	jal	401160 <strlen>
  400a70:	02a02021 	move	a0,s5
  400a74:	00403021 	move	a2,v0
  400a78:	02202021 	move	a0,s1
  400a7c:	0c10022c 	jal	4008b0 <__pf_print>
  400a80:	02a02821 	move	a1,s5
  400a84:	8e220028 	lw	v0,40(s1)
  400a88:	00000000 	nop
  400a8c:	14400012 	bnez	v0,400ad8 <__pf_printstuff+0x138>
  400a90:	02202021 	move	a0,s1
  400a94:	8fbf0028 	lw	ra,40(sp)
  400a98:	8fb50024 	lw	s5,36(sp)
  400a9c:	8fb40020 	lw	s4,32(sp)
  400aa0:	8fb3001c 	lw	s3,28(sp)
  400aa4:	8fb20018 	lw	s2,24(sp)
  400aa8:	8fb10014 	lw	s1,20(sp)
  400aac:	8fb00010 	lw	s0,16(sp)
  400ab0:	03e00008 	jr	ra
  400ab4:	27bd0030 	addiu	sp,sp,48
  400ab8:	8e23002c 	lw	v1,44(s1)
  400abc:	00000000 	nop
  400ac0:	1062ffd6 	beq	v1,v0,400a1c <__pf_printstuff+0x7c>
  400ac4:	02202021 	move	a0,s1
  400ac8:	0c10024d 	jal	400934 <__pf_fill>
  400acc:	02002821 	move	a1,s0
  400ad0:	08100287 	j	400a1c <__pf_printstuff+0x7c>
  400ad4:	00000000 	nop
  400ad8:	02002821 	move	a1,s0
  400adc:	8fbf0028 	lw	ra,40(sp)
  400ae0:	8fb50024 	lw	s5,36(sp)
  400ae4:	8fb40020 	lw	s4,32(sp)
  400ae8:	8fb3001c 	lw	s3,28(sp)
  400aec:	8fb20018 	lw	s2,24(sp)
  400af0:	8fb10014 	lw	s1,20(sp)
  400af4:	8fb00010 	lw	s0,16(sp)
  400af8:	0810024d 	j	400934 <__pf_fill>
  400afc:	27bd0030 	addiu	sp,sp,48
  400b00:	02802821 	move	a1,s4
  400b04:	02403021 	move	a2,s2
  400b08:	0c10022c 	jal	4008b0 <__pf_print>
  400b0c:	02202021 	move	a0,s1
  400b10:	0c100458 	jal	401160 <strlen>
  400b14:	02602021 	move	a0,s3
  400b18:	00403021 	move	a2,v0
  400b1c:	02202021 	move	a0,s1
  400b20:	0c10022c 	jal	4008b0 <__pf_print>
  400b24:	02602821 	move	a1,s3
  400b28:	0c100458 	jal	401160 <strlen>
  400b2c:	02a02021 	move	a0,s5
  400b30:	02202021 	move	a0,s1
  400b34:	02a02821 	move	a1,s5
  400b38:	8fbf0028 	lw	ra,40(sp)
  400b3c:	8fb50024 	lw	s5,36(sp)
  400b40:	8fb40020 	lw	s4,32(sp)
  400b44:	8fb3001c 	lw	s3,28(sp)
  400b48:	8fb20018 	lw	s2,24(sp)
  400b4c:	8fb10014 	lw	s1,20(sp)
  400b50:	8fb00010 	lw	s0,16(sp)
  400b54:	00403021 	move	a2,v0
  400b58:	0810022c 	j	4008b0 <__pf_print>
  400b5c:	27bd0030 	addiu	sp,sp,48
  400b60:	02802821 	move	a1,s4
  400b64:	0c10022c 	jal	4008b0 <__pf_print>
  400b68:	02202021 	move	a0,s1
  400b6c:	0c100458 	jal	401160 <strlen>
  400b70:	02602021 	move	a0,s3
  400b74:	00403021 	move	a2,v0
  400b78:	02202021 	move	a0,s1
  400b7c:	0c10022c 	jal	4008b0 <__pf_print>
  400b80:	02602821 	move	a1,s3
  400b84:	0c100458 	jal	401160 <strlen>
  400b88:	02a02021 	move	a0,s5
  400b8c:	081002cd 	j	400b34 <__pf_printstuff+0x194>
  400b90:	02202021 	move	a0,s1
  400b94:	0c10024d 	jal	400934 <__pf_fill>
  400b98:	02002821 	move	a1,s0
  400b9c:	0810029b 	j	400a6c <__pf_printstuff+0xcc>
  400ba0:	00000000 	nop

00400ba4 <__vprintf>:
  400ba4:	27bdff68 	addiu	sp,sp,-152
  400ba8:	afbe0090 	sw	s8,144(sp)
  400bac:	27be0030 	addiu	s8,sp,48
  400bb0:	afb10074 	sw	s1,116(sp)
  400bb4:	afa40030 	sw	a0,48(sp)
  400bb8:	00c08821 	move	s1,a2
  400bbc:	03c02021 	move	a0,s8
  400bc0:	afb00070 	sw	s0,112(sp)
  400bc4:	afbf0094 	sw	ra,148(sp)
  400bc8:	afb7008c 	sw	s7,140(sp)
  400bcc:	afb60088 	sw	s6,136(sp)
  400bd0:	afb50084 	sw	s5,132(sp)
  400bd4:	afb40080 	sw	s4,128(sp)
  400bd8:	afb3007c 	sw	s3,124(sp)
  400bdc:	afb20078 	sw	s2,120(sp)
  400be0:	afa50034 	sw	a1,52(sp)
  400be4:	afa70038 	sw	a3,56(sp)
  400be8:	0c10023e 	jal	4008f8 <__pf_endfield>
  400bec:	afa0003c 	sw	zero,60(sp)
  400bf0:	82300000 	lb	s0,0(s1)
  400bf4:	00000000 	nop
  400bf8:	12000017 	beqz	s0,400c58 <__vprintf+0xb4>
  400bfc:	0220a021 	move	s4,s1
  400c00:	0810030a 	j	400c28 <__vprintf+0x84>
  400c04:	00000000 	nop
  400c08:	27a50010 	addiu	a1,sp,16
  400c0c:	24060001 	li	a2,1
  400c10:	0c10022c 	jal	4008b0 <__pf_print>
  400c14:	a3b00010 	sb	s0,16(sp)
  400c18:	82900001 	lb	s0,1(s4)
  400c1c:	00000000 	nop
  400c20:	1200000d 	beqz	s0,400c58 <__vprintf+0xb4>
  400c24:	26940001 	addiu	s4,s4,1
  400c28:	8fa20040 	lw	v0,64(sp)
  400c2c:	00000000 	nop
  400c30:	14400016 	bnez	v0,400c8c <__vprintf+0xe8>
  400c34:	24020025 	li	v0,37
  400c38:	1602fff3 	bne	s0,v0,400c08 <__vprintf+0x64>
  400c3c:	03c02021 	move	a0,s8
  400c40:	24020001 	li	v0,1
  400c44:	afa20040 	sw	v0,64(sp)
  400c48:	82900001 	lb	s0,1(s4)
  400c4c:	00000000 	nop
  400c50:	1600fff5 	bnez	s0,400c28 <__vprintf+0x84>
  400c54:	26940001 	addiu	s4,s4,1
  400c58:	8fa2003c 	lw	v0,60(sp)
  400c5c:	8fbf0094 	lw	ra,148(sp)
  400c60:	8fbe0090 	lw	s8,144(sp)
  400c64:	8fb7008c 	lw	s7,140(sp)
  400c68:	8fb60088 	lw	s6,136(sp)
  400c6c:	8fb50084 	lw	s5,132(sp)
  400c70:	8fb40080 	lw	s4,128(sp)
  400c74:	8fb3007c 	lw	s3,124(sp)
  400c78:	8fb20078 	lw	s2,120(sp)
  400c7c:	8fb10074 	lw	s1,116(sp)
  400c80:	8fb00070 	lw	s0,112(sp)
  400c84:	03e00008 	jr	ra
  400c88:	27bd0098 	addiu	sp,sp,152
  400c8c:	3c040040 	lui	a0,0x40
  400c90:	24841ac4 	addiu	a0,a0,6852
  400c94:	0c100434 	jal	4010d0 <strchr>
  400c98:	02002821 	move	a1,s0
  400c9c:	10400031 	beqz	v0,400d64 <__vprintf+0x1c0>
  400ca0:	24020030 	li	v0,48
  400ca4:	1202001d 	beq	s0,v0,400d1c <__vprintf+0x178>
  400ca8:	2a020031 	slti	v0,s0,49
  400cac:	10400013 	beqz	v0,400cfc <__vprintf+0x158>
  400cb0:	2402006c 	li	v0,108
  400cb4:	24020023 	li	v0,35
  400cb8:	12020027 	beq	s0,v0,400d58 <__vprintf+0x1b4>
  400cbc:	2402002d 	li	v0,45
  400cc0:	1202004a 	beq	s0,v0,400dec <__vprintf+0x248>
  400cc4:	24020001 	li	v0,1
  400cc8:	2602ffcf 	addiu	v0,s0,-49
  400ccc:	2c420009 	sltiu	v0,v0,9
  400cd0:	1040001a 	beqz	v0,400d3c <__vprintf+0x198>
  400cd4:	3c040040 	lui	a0,0x40
  400cd8:	8fa20054 	lw	v0,84(sp)
  400cdc:	00000000 	nop
  400ce0:	000218c0 	sll	v1,v0,0x3
  400ce4:	00021040 	sll	v0,v0,0x1
  400ce8:	00431021 	addu	v0,v0,v1
  400cec:	02021021 	addu	v0,s0,v0
  400cf0:	2442ffd0 	addiu	v0,v0,-48
  400cf4:	08100306 	j	400c18 <__vprintf+0x74>
  400cf8:	afa20054 	sw	v0,84(sp)
  400cfc:	1602fff3 	bne	s0,v0,400ccc <__vprintf+0x128>
  400d00:	2602ffcf 	addiu	v0,s0,-49
  400d04:	8fa20044 	lw	v0,68(sp)
  400d08:	24030001 	li	v1,1
  400d0c:	10430039 	beq	v0,v1,400df4 <__vprintf+0x250>
  400d10:	24020002 	li	v0,2
  400d14:	08100306 	j	400c18 <__vprintf+0x74>
  400d18:	afa30044 	sw	v1,68(sp)
  400d1c:	8fa20054 	lw	v0,84(sp)
  400d20:	00000000 	nop
  400d24:	1840008c 	blez	v0,400f58 <__vprintf+0x3b4>
  400d28:	000218c0 	sll	v1,v0,0x3
  400d2c:	00021040 	sll	v0,v0,0x1
  400d30:	00431021 	addu	v0,v0,v1
  400d34:	08100306 	j	400c18 <__vprintf+0x74>
  400d38:	afa20054 	sw	v0,84(sp)
  400d3c:	3c060040 	lui	a2,0x40
  400d40:	24841ad4 	addiu	a0,a0,6868
  400d44:	24c61afc 	addiu	a2,a2,6908
  400d48:	0c10047c 	jal	4011f0 <__bad_assert>
  400d4c:	240500dc 	li	a1,220
  400d50:	08100336 	j	400cd8 <__vprintf+0x134>
  400d54:	00000000 	nop
  400d58:	24020001 	li	v0,1
  400d5c:	08100306 	j	400c18 <__vprintf+0x74>
  400d60:	afa20068 	sw	v0,104(sp)
  400d64:	3c040040 	lui	a0,0x40
  400d68:	24841b10 	addiu	a0,a0,6928
  400d6c:	0c100434 	jal	4010d0 <strchr>
  400d70:	02002821 	move	a1,s0
  400d74:	10400091 	beqz	v0,400fbc <__vprintf+0x418>
  400d78:	24020070 	li	v0,112
  400d7c:	1202001f 	beq	s0,v0,400dfc <__vprintf+0x258>
  400d80:	24020064 	li	v0,100
  400d84:	1202009e 	beq	s0,v0,401000 <__vprintf+0x45c>
  400d88:	24020001 	li	v0,1
  400d8c:	8fa30044 	lw	v1,68(sp)
  400d90:	00000000 	nop
  400d94:	10620003 	beq	v1,v0,400da4 <__vprintf+0x200>
  400d98:	00000000 	nop
  400d9c:	14600074 	bnez	v1,400f70 <__vprintf+0x3cc>
  400da0:	24020002 	li	v0,2
  400da4:	8fa20038 	lw	v0,56(sp)
  400da8:	afa00048 	sw	zero,72(sp)
  400dac:	8c430000 	lw	v1,0(v0)
  400db0:	24420004 	addiu	v0,v0,4
  400db4:	afa20038 	sw	v0,56(sp)
  400db8:	afa3004c 	sw	v1,76(sp)
  400dbc:	2602ff9c 	addiu	v0,s0,-100
  400dc0:	304200ff 	andi	v0,v0,0xff
  400dc4:	2c430015 	sltiu	v1,v0,21
  400dc8:	10600015 	beqz	v1,400e20 <__vprintf+0x27c>
  400dcc:	3c030040 	lui	v1,0x40
  400dd0:	00021080 	sll	v0,v0,0x2
  400dd4:	24631910 	addiu	v1,v1,6416
  400dd8:	00431021 	addu	v0,v0,v1
  400ddc:	8c440000 	lw	a0,0(v0)
  400de0:	00000000 	nop
  400de4:	00800008 	jr	a0
  400de8:	00000000 	nop
  400dec:	08100306 	j	400c18 <__vprintf+0x74>
  400df0:	afa20058 	sw	v0,88(sp)
  400df4:	08100306 	j	400c18 <__vprintf+0x74>
  400df8:	afa20044 	sw	v0,68(sp)
  400dfc:	8fa20038 	lw	v0,56(sp)
  400e00:	afa00048 	sw	zero,72(sp)
  400e04:	24430004 	addiu	v1,v0,4
  400e08:	afa30038 	sw	v1,56(sp)
  400e0c:	8c440000 	lw	a0,0(v0)
  400e10:	00000000 	nop
  400e14:	afa4004c 	sw	a0,76(sp)
  400e18:	24020010 	li	v0,16
  400e1c:	afa20060 	sw	v0,96(sp)
  400e20:	8fa20068 	lw	v0,104(sp)
  400e24:	00000000 	nop
  400e28:	1440004d 	bnez	v0,400f60 <__vprintf+0x3bc>
  400e2c:	24020001 	li	v0,1
  400e30:	24020070 	li	v0,112
  400e34:	1202004a 	beq	s0,v0,400f60 <__vprintf+0x3bc>
  400e38:	24020001 	li	v0,1
  400e3c:	8fb60060 	lw	s6,96(sp)
  400e40:	3c020040 	lui	v0,0x40
  400e44:	8fb1004c 	lw	s1,76(sp)
  400e48:	8fb00048 	lw	s0,72(sp)
  400e4c:	a3a00029 	sb	zero,41(sp)
  400e50:	24571b18 	addiu	s7,v0,6936
  400e54:	27b50028 	addiu	s5,sp,40
  400e58:	02c09821 	move	s3,s6
  400e5c:	001697c3 	sra	s2,s6,0x1f
  400e60:	02202821 	move	a1,s1
  400e64:	02002021 	move	a0,s0
  400e68:	02603821 	move	a3,s3
  400e6c:	0c100470 	jal	4011c0 <__umoddi3>
  400e70:	02403021 	move	a2,s2
  400e74:	02e31821 	addu	v1,s7,v1
  400e78:	90620000 	lbu	v0,0(v1)
  400e7c:	02202821 	move	a1,s1
  400e80:	02002021 	move	a0,s0
  400e84:	02603821 	move	a3,s3
  400e88:	02403021 	move	a2,s2
  400e8c:	0c100468 	jal	4011a0 <__udivdi3>
  400e90:	a2a20000 	sb	v0,0(s5)
  400e94:	00408021 	move	s0,v0
  400e98:	02031025 	or	v0,s0,v1
  400e9c:	00608821 	move	s1,v1
  400ea0:	1440ffef 	bnez	v0,400e60 <__vprintf+0x2bc>
  400ea4:	26b5ffff 	addiu	s5,s5,-1
  400ea8:	8fa20064 	lw	v0,100(sp)
  400eac:	00000000 	nop
  400eb0:	10400006 	beqz	v0,400ecc <__vprintf+0x328>
  400eb4:	3c020040 	lui	v0,0x40
  400eb8:	24020010 	li	v0,16
  400ebc:	12c2005e 	beq	s6,v0,401038 <__vprintf+0x494>
  400ec0:	24020008 	li	v0,8
  400ec4:	12c20037 	beq	s6,v0,400fa4 <__vprintf+0x400>
  400ec8:	3c020040 	lui	v0,0x40
  400ecc:	24461be0 	addiu	a2,v0,7136
  400ed0:	8fa20050 	lw	v0,80(sp)
  400ed4:	00000000 	nop
  400ed8:	10400023 	beqz	v0,400f68 <__vprintf+0x3c4>
  400edc:	3c020040 	lui	v0,0x40
  400ee0:	3c020040 	lui	v0,0x40
  400ee4:	24451ab8 	addiu	a1,v0,6840
  400ee8:	03c02021 	move	a0,s8
  400eec:	0c100268 	jal	4009a0 <__pf_printstuff>
  400ef0:	26a70001 	addiu	a3,s5,1
  400ef4:	0c10023e 	jal	4008f8 <__pf_endfield>
  400ef8:	03c02021 	move	a0,s8
  400efc:	08100306 	j	400c18 <__vprintf+0x74>
  400f00:	00000000 	nop
  400f04:	8fa20038 	lw	v0,56(sp)
  400f08:	2403fff8 	li	v1,-8
  400f0c:	24420007 	addiu	v0,v0,7
  400f10:	00431024 	and	v0,v0,v1
  400f14:	8c470004 	lw	a3,4(v0)
  400f18:	8c460000 	lw	a2,0(v0)
  400f1c:	24420008 	addiu	v0,v0,8
  400f20:	afa20038 	sw	v0,56(sp)
  400f24:	04c10040 	bgez	a2,401028 <__vprintf+0x484>
  400f28:	2402000a 	li	v0,10
  400f2c:	00071823 	negu	v1,a3
  400f30:	0003282b 	sltu	a1,zero,v1
  400f34:	00061023 	negu	v0,a2
  400f38:	00451023 	subu	v0,v0,a1
  400f3c:	2404ffff 	li	a0,-1
  400f40:	afa40050 	sw	a0,80(sp)
  400f44:	afa3004c 	sw	v1,76(sp)
  400f48:	afa20048 	sw	v0,72(sp)
  400f4c:	2402000a 	li	v0,10
  400f50:	08100388 	j	400e20 <__vprintf+0x27c>
  400f54:	afa20060 	sw	v0,96(sp)
  400f58:	08100306 	j	400c18 <__vprintf+0x74>
  400f5c:	afb0005c 	sw	s0,92(sp)
  400f60:	0810038f 	j	400e3c <__vprintf+0x298>
  400f64:	afa20064 	sw	v0,100(sp)
  400f68:	081003ba 	j	400ee8 <__vprintf+0x344>
  400f6c:	24451be0 	addiu	a1,v0,7136
  400f70:	1462ff93 	bne	v1,v0,400dc0 <__vprintf+0x21c>
  400f74:	2602ff9c 	addiu	v0,s0,-100
  400f78:	8fa20038 	lw	v0,56(sp)
  400f7c:	2403fff8 	li	v1,-8
  400f80:	24420007 	addiu	v0,v0,7
  400f84:	00431024 	and	v0,v0,v1
  400f88:	8c450004 	lw	a1,4(v0)
  400f8c:	8c440000 	lw	a0,0(v0)
  400f90:	24420008 	addiu	v0,v0,8
  400f94:	afa20038 	sw	v0,56(sp)
  400f98:	afa5004c 	sw	a1,76(sp)
  400f9c:	0810036f 	j	400dbc <__vprintf+0x218>
  400fa0:	afa40048 	sw	a0,72(sp)
  400fa4:	3c020040 	lui	v0,0x40
  400fa8:	081003b4 	j	400ed0 <__vprintf+0x32c>
  400fac:	24461b30 	addiu	a2,v0,6960
  400fb0:	24020008 	li	v0,8
  400fb4:	08100388 	j	400e20 <__vprintf+0x27c>
  400fb8:	afa20060 	sw	v0,96(sp)
  400fbc:	24020073 	li	v0,115
  400fc0:	12020028 	beq	s0,v0,401064 <__vprintf+0x4c0>
  400fc4:	24020063 	li	v0,99
  400fc8:	12020037 	beq	s0,v0,4010a8 <__vprintf+0x504>
  400fcc:	00000000 	nop
  400fd0:	a3b00011 	sb	s0,17(sp)
  400fd4:	3c050040 	lui	a1,0x40
  400fd8:	24a51be0 	addiu	a1,a1,7136
  400fdc:	03c02021 	move	a0,s8
  400fe0:	00a03021 	move	a2,a1
  400fe4:	27a70011 	addiu	a3,sp,17
  400fe8:	0c100268 	jal	4009a0 <__pf_printstuff>
  400fec:	a3a00012 	sb	zero,18(sp)
  400ff0:	0c10023e 	jal	4008f8 <__pf_endfield>
  400ff4:	03c02021 	move	a0,s8
  400ff8:	08100306 	j	400c18 <__vprintf+0x74>
  400ffc:	00000000 	nop
  401000:	8fa30044 	lw	v1,68(sp)
  401004:	00000000 	nop
  401008:	1062000e 	beq	v1,v0,401044 <__vprintf+0x4a0>
  40100c:	00000000 	nop
  401010:	1060000c 	beqz	v1,401044 <__vprintf+0x4a0>
  401014:	24020002 	li	v0,2
  401018:	1062ffba 	beq	v1,v0,400f04 <__vprintf+0x360>
  40101c:	00003821 	move	a3,zero
  401020:	00003021 	move	a2,zero
  401024:	2402000a 	li	v0,10
  401028:	afa7004c 	sw	a3,76(sp)
  40102c:	afa60048 	sw	a2,72(sp)
  401030:	08100388 	j	400e20 <__vprintf+0x27c>
  401034:	afa20060 	sw	v0,96(sp)
  401038:	3c020040 	lui	v0,0x40
  40103c:	081003b4 	j	400ed0 <__vprintf+0x32c>
  401040:	24461b2c 	addiu	a2,v0,6956
  401044:	8fa20038 	lw	v0,56(sp)
  401048:	00000000 	nop
  40104c:	8c430000 	lw	v1,0(v0)
  401050:	24420004 	addiu	v0,v0,4
  401054:	00603821 	move	a3,v1
  401058:	000337c3 	sra	a2,v1,0x1f
  40105c:	081003c9 	j	400f24 <__vprintf+0x380>
  401060:	afa20038 	sw	v0,56(sp)
  401064:	8fa30038 	lw	v1,56(sp)
  401068:	00000000 	nop
  40106c:	8c670000 	lw	a3,0(v1)
  401070:	00000000 	nop
  401074:	10e00013 	beqz	a3,4010c4 <__vprintf+0x520>
  401078:	3c020040 	lui	v0,0x40
  40107c:	3c050040 	lui	a1,0x40
  401080:	24a51be0 	addiu	a1,a1,7136
  401084:	24620004 	addiu	v0,v1,4
  401088:	03c02021 	move	a0,s8
  40108c:	00a03021 	move	a2,a1
  401090:	0c100268 	jal	4009a0 <__pf_printstuff>
  401094:	afa20038 	sw	v0,56(sp)
  401098:	0c10023e 	jal	4008f8 <__pf_endfield>
  40109c:	03c02021 	move	a0,s8
  4010a0:	08100306 	j	400c18 <__vprintf+0x74>
  4010a4:	00000000 	nop
  4010a8:	8fa20038 	lw	v0,56(sp)
  4010ac:	00000000 	nop
  4010b0:	8c430000 	lw	v1,0(v0)
  4010b4:	24420004 	addiu	v0,v0,4
  4010b8:	afa20038 	sw	v0,56(sp)
  4010bc:	081003f5 	j	400fd4 <__vprintf+0x430>
  4010c0:	a3a30011 	sb	v1,17(sp)
  4010c4:	0810041f 	j	40107c <__vprintf+0x4d8>
  4010c8:	24471abc 	addiu	a3,v0,6844
  4010cc:	00000000 	nop

004010d0 <strchr>:
  4010d0:	80830000 	lb	v1,0(a0)
  4010d4:	00052e00 	sll	a1,a1,0x18
  4010d8:	00801021 	move	v0,a0
  4010dc:	1060000c 	beqz	v1,401110 <strchr+0x40>
  4010e0:	00052e03 	sra	a1,a1,0x18
  4010e4:	14a30006 	bne	a1,v1,401100 <strchr+0x30>
  4010e8:	24420001 	addiu	v0,v0,1
  4010ec:	03e00008 	jr	ra
  4010f0:	2442ffff 	addiu	v0,v0,-1
  4010f4:	10a3000c 	beq	a1,v1,401128 <strchr+0x58>
  4010f8:	00000000 	nop
  4010fc:	24420001 	addiu	v0,v0,1
  401100:	80430000 	lb	v1,0(v0)
  401104:	00000000 	nop
  401108:	1460fffa 	bnez	v1,4010f4 <strchr+0x24>
  40110c:	00000000 	nop
  401110:	14a00003 	bnez	a1,401120 <strchr+0x50>
  401114:	00000000 	nop
  401118:	03e00008 	jr	ra
  40111c:	00000000 	nop
  401120:	03e00008 	jr	ra
  401124:	00001021 	move	v0,zero
  401128:	03e00008 	jr	ra
  40112c:	00000000 	nop

00401130 <strerror>:
  401130:	3c020040 	lui	v0,0x40
  401134:	00042880 	sll	a1,a0,0x2
  401138:	24421970 	addiu	v0,v0,6512
  40113c:	3c030040 	lui	v1,0x40
  401140:	2c840041 	sltiu	a0,a0,65
  401144:	00a22821 	addu	a1,a1,v0
  401148:	10800002 	beqz	a0,401154 <strerror+0x24>
  40114c:	24621b34 	addiu	v0,v1,6964
  401150:	8ca20000 	lw	v0,0(a1)
  401154:	03e00008 	jr	ra
  401158:	00000000 	nop
  40115c:	00000000 	nop

00401160 <strlen>:
  401160:	80820000 	lb	v0,0(a0)
  401164:	00000000 	nop
  401168:	1040000a 	beqz	v0,401194 <strlen+0x34>
  40116c:	00002821 	move	a1,zero
  401170:	24a50001 	addiu	a1,a1,1
  401174:	00851021 	addu	v0,a0,a1
  401178:	80430000 	lb	v1,0(v0)
  40117c:	00000000 	nop
  401180:	1460fffc 	bnez	v1,401174 <strlen+0x14>
  401184:	24a50001 	addiu	a1,a1,1
  401188:	24a5ffff 	addiu	a1,a1,-1
  40118c:	03e00008 	jr	ra
  401190:	00a01021 	move	v0,a1
  401194:	03e00008 	jr	ra
  401198:	00a01021 	move	v0,a1
  40119c:	00000000 	nop

004011a0 <__udivdi3>:
  4011a0:	27bdffe0 	addiu	sp,sp,-32
  4011a4:	afbf0018 	sw	ra,24(sp)
  4011a8:	0c1004f7 	jal	4013dc <__qdivrem>
  4011ac:	afa00010 	sw	zero,16(sp)
  4011b0:	8fbf0018 	lw	ra,24(sp)
  4011b4:	00000000 	nop
  4011b8:	03e00008 	jr	ra
  4011bc:	27bd0020 	addiu	sp,sp,32

004011c0 <__umoddi3>:
  4011c0:	27bdffd8 	addiu	sp,sp,-40
  4011c4:	27a20018 	addiu	v0,sp,24
  4011c8:	afbf0020 	sw	ra,32(sp)
  4011cc:	0c1004f7 	jal	4013dc <__qdivrem>
  4011d0:	afa20010 	sw	v0,16(sp)
  4011d4:	8fa3001c 	lw	v1,28(sp)
  4011d8:	8fa20018 	lw	v0,24(sp)
  4011dc:	8fbf0020 	lw	ra,32(sp)
  4011e0:	00000000 	nop
  4011e4:	03e00008 	jr	ra
  4011e8:	27bd0028 	addiu	sp,sp,40
  4011ec:	00000000 	nop

004011f0 <__bad_assert>:
  4011f0:	27bdfee0 	addiu	sp,sp,-288
  4011f4:	00c03821 	move	a3,a2
  4011f8:	afb00118 	sw	s0,280(sp)
  4011fc:	3c060040 	lui	a2,0x40
  401200:	27b00018 	addiu	s0,sp,24
  401204:	24c62138 	addiu	a2,a2,8504
  401208:	afa40010 	sw	a0,16(sp)
  40120c:	afa50014 	sw	a1,20(sp)
  401210:	02002021 	move	a0,s0
  401214:	afbf011c 	sw	ra,284(sp)
  401218:	0c1004c8 	jal	401320 <snprintf>
  40121c:	24050100 	li	a1,256
  401220:	0c100458 	jal	401160 <strlen>
  401224:	02002021 	move	a0,s0
  401228:	00403021 	move	a2,v0
  40122c:	02002821 	move	a1,s0
  401230:	0c100137 	jal	4004dc <write>
  401234:	24040002 	li	a0,2
  401238:	0c1004d4 	jal	401350 <abort>
  40123c:	00000000 	nop

00401240 <__snprintf_send>:
  401240:	10c00012 	beqz	a2,40128c <__snprintf_send+0x4c>
  401244:	00004021 	move	t0,zero
  401248:	8c870008 	lw	a3,8(a0)
  40124c:	8c820004 	lw	v0,4(a0)
  401250:	00a81821 	addu	v1,a1,t0
  401254:	00e2102b 	sltu	v0,a3,v0
  401258:	1040000a 	beqz	v0,401284 <__snprintf_send+0x44>
  40125c:	25080001 	addiu	t0,t0,1
  401260:	8c820000 	lw	v0,0(a0)
  401264:	90630000 	lbu	v1,0(v1)
  401268:	00471021 	addu	v0,v0,a3
  40126c:	a0430000 	sb	v1,0(v0)
  401270:	8c870008 	lw	a3,8(a0)
  401274:	00000000 	nop
  401278:	24e20001 	addiu	v0,a3,1
  40127c:	00403821 	move	a3,v0
  401280:	ac820008 	sw	v0,8(a0)
  401284:	14c8fff1 	bne	a2,t0,40124c <__snprintf_send+0xc>
  401288:	00000000 	nop
  40128c:	03e00008 	jr	ra
  401290:	00000000 	nop

00401294 <vsnprintf>:
  401294:	27bdffd8 	addiu	sp,sp,-40
  401298:	afb00020 	sw	s0,32(sp)
  40129c:	00a01021 	move	v0,a1
  4012a0:	00808021 	move	s0,a0
  4012a4:	3c040040 	lui	a0,0x40
  4012a8:	24a3ffff 	addiu	v1,a1,-1
  4012ac:	afbf0024 	sw	ra,36(sp)
  4012b0:	24841240 	addiu	a0,a0,4672
  4012b4:	27a50010 	addiu	a1,sp,16
  4012b8:	1440000c 	bnez	v0,4012ec <vsnprintf+0x58>
  4012bc:	afb00010 	sw	s0,16(sp)
  4012c0:	3c040040 	lui	a0,0x40
  4012c4:	24841240 	addiu	a0,a0,4672
  4012c8:	afa00014 	sw	zero,20(sp)
  4012cc:	0c1002e9 	jal	400ba4 <__vprintf>
  4012d0:	afa00018 	sw	zero,24(sp)
  4012d4:	00401821 	move	v1,v0
  4012d8:	8fbf0024 	lw	ra,36(sp)
  4012dc:	8fb00020 	lw	s0,32(sp)
  4012e0:	00601021 	move	v0,v1
  4012e4:	03e00008 	jr	ra
  4012e8:	27bd0028 	addiu	sp,sp,40
  4012ec:	afa30014 	sw	v1,20(sp)
  4012f0:	0c1002e9 	jal	400ba4 <__vprintf>
  4012f4:	afa00018 	sw	zero,24(sp)
  4012f8:	00401821 	move	v1,v0
  4012fc:	8fa20018 	lw	v0,24(sp)
  401300:	00000000 	nop
  401304:	02021021 	addu	v0,s0,v0
  401308:	a0400000 	sb	zero,0(v0)
  40130c:	8fbf0024 	lw	ra,36(sp)
  401310:	8fb00020 	lw	s0,32(sp)
  401314:	00601021 	move	v0,v1
  401318:	03e00008 	jr	ra
  40131c:	27bd0028 	addiu	sp,sp,40

00401320 <snprintf>:
  401320:	27bdffe0 	addiu	sp,sp,-32
  401324:	27a2002c 	addiu	v0,sp,44
  401328:	afa7002c 	sw	a3,44(sp)
  40132c:	00403821 	move	a3,v0
  401330:	afbf0018 	sw	ra,24(sp)
  401334:	0c1004a5 	jal	401294 <vsnprintf>
  401338:	afa20010 	sw	v0,16(sp)
  40133c:	8fbf0018 	lw	ra,24(sp)
  401340:	00000000 	nop
  401344:	03e00008 	jr	ra
  401348:	27bd0020 	addiu	sp,sp,32
  40134c:	00000000 	nop

00401350 <abort>:
  401350:	27bdffe8 	addiu	sp,sp,-24
  401354:	afbf0010 	sw	ra,16(sp)
  401358:	0c1000f7 	jal	4003dc <_exit>
  40135c:	240400ff 	li	a0,255

00401360 <shl>:
  401360:	18a00016 	blez	a1,4013bc <shl+0x5c>
  401364:	24020010 	li	v0,16
  401368:	00464823 	subu	t1,v0,a2
  40136c:	00803821 	move	a3,a0
  401370:	00004021 	move	t0,zero
  401374:	8ce20000 	lw	v0,0(a3)
  401378:	8ce30004 	lw	v1,4(a3)
  40137c:	00c21004 	sllv	v0,v0,a2
  401380:	3042ffff 	andi	v0,v0,0xffff
  401384:	01231806 	srlv	v1,v1,t1
  401388:	00431025 	or	v0,v0,v1
  40138c:	25080001 	addiu	t0,t0,1
  401390:	ace20000 	sw	v0,0(a3)
  401394:	14a8fff7 	bne	a1,t0,401374 <shl+0x14>
  401398:	24e70004 	addiu	a3,a3,4
  40139c:	00051880 	sll	v1,a1,0x2
  4013a0:	00831821 	addu	v1,a0,v1
  4013a4:	8c620000 	lw	v0,0(v1)
  4013a8:	00000000 	nop
  4013ac:	00c21004 	sllv	v0,v0,a2
  4013b0:	3042ffff 	andi	v0,v0,0xffff
  4013b4:	03e00008 	jr	ra
  4013b8:	ac620000 	sw	v0,0(v1)
  4013bc:	00001821 	move	v1,zero
  4013c0:	00831821 	addu	v1,a0,v1
  4013c4:	8c620000 	lw	v0,0(v1)
  4013c8:	00000000 	nop
  4013cc:	00c21004 	sllv	v0,v0,a2
  4013d0:	3042ffff 	andi	v0,v0,0xffff
  4013d4:	03e00008 	jr	ra
  4013d8:	ac620000 	sw	v0,0(v1)

004013dc <__qdivrem>:
  4013dc:	27bdff80 	addiu	sp,sp,-128
  4013e0:	00c71025 	or	v0,a2,a3
  4013e4:	afb20060 	sw	s2,96(sp)
  4013e8:	afbf007c 	sw	ra,124(sp)
  4013ec:	afbe0078 	sw	s8,120(sp)
  4013f0:	afb70074 	sw	s7,116(sp)
  4013f4:	afb60070 	sw	s6,112(sp)
  4013f8:	afb5006c 	sw	s5,108(sp)
  4013fc:	afb40068 	sw	s4,104(sp)
  401400:	afb30064 	sw	s3,100(sp)
  401404:	afb1005c 	sw	s1,92(sp)
  401408:	afb00058 	sw	s0,88(sp)
  40140c:	00a04821 	move	t1,a1
  401410:	8fb20090 	lw	s2,144(sp)
  401414:	14400018 	bnez	v0,401478 <__qdivrem+0x9c>
  401418:	00804021 	move	t0,a0
  40141c:	3c031000 	lui	v1,0x1000
  401420:	8c640000 	lw	a0,0(v1)
  401424:	24020001 	li	v0,1
  401428:	14800002 	bnez	a0,401434 <__qdivrem+0x58>
  40142c:	0044001b 	divu	zero,v0,a0
  401430:	0007000d 	break	0x7
  401434:	00001012 	mflo	v0
  401438:	12400003 	beqz	s2,401448 <__qdivrem+0x6c>
  40143c:	00401821 	move	v1,v0
  401440:	ae450004 	sw	a1,4(s2)
  401444:	ae480000 	sw	t0,0(s2)
  401448:	8fbf007c 	lw	ra,124(sp)
  40144c:	8fbe0078 	lw	s8,120(sp)
  401450:	8fb70074 	lw	s7,116(sp)
  401454:	8fb60070 	lw	s6,112(sp)
  401458:	8fb5006c 	lw	s5,108(sp)
  40145c:	8fb40068 	lw	s4,104(sp)
  401460:	8fb30064 	lw	s3,100(sp)
  401464:	8fb20060 	lw	s2,96(sp)
  401468:	8fb1005c 	lw	s1,92(sp)
  40146c:	8fb00058 	lw	s0,88(sp)
  401470:	03e00008 	jr	ra
  401474:	27bd0080 	addiu	sp,sp,128
  401478:	0086102b 	sltu	v0,a0,a2
  40147c:	10400008 	beqz	v0,4014a0 <__qdivrem+0xc4>
  401480:	00000000 	nop
  401484:	1240010c 	beqz	s2,4018b8 <__qdivrem+0x4dc>
  401488:	00000000 	nop
  40148c:	00001821 	move	v1,zero
  401490:	00001021 	move	v0,zero
  401494:	ae490004 	sw	t1,4(s2)
  401498:	08100512 	j	401448 <__qdivrem+0x6c>
  40149c:	ae480000 	sw	t0,0(s2)
  4014a0:	10860046 	beq	a0,a2,4015bc <__qdivrem+0x1e0>
  4014a4:	00a7102b 	sltu	v0,a1,a3
  4014a8:	00e08821 	move	s1,a3
  4014ac:	01001821 	move	v1,t0
  4014b0:	00c08021 	move	s0,a2
  4014b4:	30c7ffff 	andi	a3,a2,0xffff
  4014b8:	3108ffff 	andi	t0,t0,0xffff
  4014bc:	312affff 	andi	t2,t1,0xffff
  4014c0:	3226ffff 	andi	a2,s1,0xffff
  4014c4:	00031c02 	srl	v1,v1,0x10
  4014c8:	00092c02 	srl	a1,t1,0x10
  4014cc:	00101402 	srl	v0,s0,0x10
  4014d0:	00112402 	srl	a0,s1,0x10
  4014d4:	afa00010 	sw	zero,16(sp)
  4014d8:	afa30014 	sw	v1,20(sp)
  4014dc:	afa80018 	sw	t0,24(sp)
  4014e0:	afa5001c 	sw	a1,28(sp)
  4014e4:	afaa0020 	sw	t2,32(sp)
  4014e8:	afa20028 	sw	v0,40(sp)
  4014ec:	afa7002c 	sw	a3,44(sp)
  4014f0:	afa40030 	sw	a0,48(sp)
  4014f4:	144000f6 	bnez	v0,4018d0 <__qdivrem+0x4f4>
  4014f8:	afa60034 	sw	a2,52(sp)
  4014fc:	14e00033 	bnez	a3,4015cc <__qdivrem+0x1f0>
  401500:	27a20028 	addiu	v0,sp,40
  401504:	148000f7 	bnez	a0,4018e4 <__qdivrem+0x508>
  401508:	27a2002c 	addiu	v0,sp,44
  40150c:	14c00002 	bnez	a2,401518 <__qdivrem+0x13c>
  401510:	0066001b 	divu	zero,v1,a2
  401514:	0007000d 	break	0x7
  401518:	00001010 	mfhi	v0
  40151c:	00021400 	sll	v0,v0,0x10
  401520:	00481025 	or	v0,v0,t0
  401524:	00004812 	mflo	t1
	...
  401530:	14c00002 	bnez	a2,40153c <__qdivrem+0x160>
  401534:	0046001b 	divu	zero,v0,a2
  401538:	0007000d 	break	0x7
  40153c:	00001810 	mfhi	v1
  401540:	00031c00 	sll	v1,v1,0x10
  401544:	00651825 	or	v1,v1,a1
  401548:	00003812 	mflo	a3
	...
  401554:	14c00002 	bnez	a2,401560 <__qdivrem+0x184>
  401558:	0066001b 	divu	zero,v1,a2
  40155c:	0007000d 	break	0x7
  401560:	00001010 	mfhi	v0
  401564:	00021400 	sll	v0,v0,0x10
  401568:	00001812 	mflo	v1
  40156c:	12400008 	beqz	s2,401590 <__qdivrem+0x1b4>
  401570:	01422025 	or	a0,t2,v0
  401574:	14c00002 	bnez	a2,401580 <__qdivrem+0x1a4>
  401578:	0086001b 	divu	zero,a0,a2
  40157c:	0007000d 	break	0x7
  401580:	ae400000 	sw	zero,0(s2)
  401584:	00001010 	mfhi	v0
  401588:	ae420004 	sw	v0,4(s2)
  40158c:	00000000 	nop
  401590:	14c00002 	bnez	a2,40159c <__qdivrem+0x1c0>
  401594:	0086001b 	divu	zero,a0,a2
  401598:	0007000d 	break	0x7
  40159c:	00091400 	sll	v0,t1,0x10
  4015a0:	00031c00 	sll	v1,v1,0x10
  4015a4:	00e28025 	or	s0,a3,v0
  4015a8:	02001021 	move	v0,s0
  4015ac:	00002012 	mflo	a0
  4015b0:	00838825 	or	s1,a0,v1
  4015b4:	08100512 	j	401448 <__qdivrem+0x6c>
  4015b8:	02201821 	move	v1,s1
  4015bc:	1040ffbb 	beqz	v0,4014ac <__qdivrem+0xd0>
  4015c0:	00e08821 	move	s1,a3
  4015c4:	08100521 	j	401484 <__qdivrem+0xa8>
  4015c8:	00000000 	nop
  4015cc:	afa20050 	sw	v0,80(sp)
  4015d0:	24170003 	li	s7,3
  4015d4:	27be002c 	addiu	s8,sp,44
  4015d8:	8fa30014 	lw	v1,20(sp)
  4015dc:	24020004 	li	v0,4
  4015e0:	146000c4 	bnez	v1,4018f4 <__qdivrem+0x518>
  4015e4:	00579823 	subu	s3,v0,s7
  4015e8:	0810057d 	j	4015f4 <__qdivrem+0x218>
  4015ec:	27b40014 	addiu	s4,sp,20
  4015f0:	0060a021 	move	s4,v1
  4015f4:	8e820004 	lw	v0,4(s4)
  4015f8:	2673ffff 	addiu	s3,s3,-1
  4015fc:	1040fffc 	beqz	v0,4015f0 <__qdivrem+0x214>
  401600:	26830004 	addiu	v1,s4,4
  401604:	24020004 	li	v0,4
  401608:	00532023 	subu	a0,v0,s3
  40160c:	2483ffff 	addiu	v1,a0,-1
  401610:	046000bc 	bltz	v1,401904 <__qdivrem+0x528>
  401614:	00001821 	move	v1,zero
  401618:	27a60038 	addiu	a2,sp,56
  40161c:	00042880 	sll	a1,a0,0x2
  401620:	00c51021 	addu	v0,a2,a1
  401624:	2442fffc 	addiu	v0,v0,-4
  401628:	24630001 	addiu	v1,v1,1
  40162c:	ac400000 	sw	zero,0(v0)
  401630:	1464fffd 	bne	v1,a0,401628 <__qdivrem+0x24c>
  401634:	2442fffc 	addiu	v0,v0,-4
  401638:	8fcb0000 	lw	t3,0(s8)
  40163c:	34028000 	li	v0,0x8000
  401640:	0162102b 	sltu	v0,t3,v0
  401644:	00c5b021 	addu	s6,a2,a1
  401648:	104000ac 	beqz	v0,4018fc <__qdivrem+0x520>
  40164c:	01601821 	move	v1,t3
  401650:	0000a821 	move	s5,zero
  401654:	34048000 	li	a0,0x8000
  401658:	00031840 	sll	v1,v1,0x1
  40165c:	0064102b 	sltu	v0,v1,a0
  401660:	1440fffd 	bnez	v0,401658 <__qdivrem+0x27c>
  401664:	26b50001 	addiu	s5,s5,1
  401668:	1aa00009 	blez	s5,401690 <__qdivrem+0x2b4>
  40166c:	02f32821 	addu	a1,s7,s3
  401670:	02a03021 	move	a2,s5
  401674:	0c1004d8 	jal	401360 <shl>
  401678:	02802021 	move	a0,s4
  40167c:	03c02021 	move	a0,s8
  401680:	26e5ffff 	addiu	a1,s7,-1
  401684:	0c1004d8 	jal	401360 <shl>
  401688:	02a03021 	move	a2,s5
  40168c:	8fcb0000 	lw	t3,0(s8)
  401690:	8fa20050 	lw	v0,80(sp)
  401694:	00177080 	sll	t6,s7,0x2
  401698:	8c580008 	lw	t8,8(v0)
  40169c:	02c06821 	move	t5,s6
  4016a0:	02804821 	move	t1,s4
  4016a4:	028e6021 	addu	t4,s4,t6
  4016a8:	00007821 	move	t7,zero
  4016ac:	3416ffff 	li	s6,0xffff
  4016b0:	8d240000 	lw	a0,0(t1)
  4016b4:	8d230004 	lw	v1,4(t1)
  4016b8:	8d260008 	lw	a2,8(t1)
  4016bc:	11640081 	beq	t3,a0,4018c4 <__qdivrem+0x4e8>
  4016c0:	00041400 	sll	v0,a0,0x10
  4016c4:	00621025 	or	v0,v1,v0
  4016c8:	15600002 	bnez	t3,4016d4 <__qdivrem+0x2f8>
  4016cc:	004b001b 	divu	zero,v0,t3
  4016d0:	0007000d 	break	0x7
  4016d4:	00002810 	mfhi	a1
  4016d8:	00003812 	mflo	a3
	...
  4016e4:	00f80018 	mult	a3,t8
  4016e8:	00051400 	sll	v0,a1,0x10
  4016ec:	00c21025 	or	v0,a2,v0
  4016f0:	00001812 	mflo	v1
  4016f4:	0043182b 	sltu	v1,v0,v1
  4016f8:	10600006 	beqz	v1,401714 <__qdivrem+0x338>
  4016fc:	00000000 	nop
  401700:	24e7ffff 	addiu	a3,a3,-1
  401704:	00ab2821 	addu	a1,a1,t3
  401708:	02c5102b 	sltu	v0,s6,a1
  40170c:	1040fff6 	beqz	v0,4016e8 <__qdivrem+0x30c>
  401710:	00f80018 	mult	a3,t8
  401714:	1ae00017 	blez	s7,401774 <__qdivrem+0x398>
  401718:	00004021 	move	t0,zero
  40171c:	8fa20050 	lw	v0,80(sp)
  401720:	01802021 	move	a0,t4
  401724:	004e3021 	addu	a2,v0,t6
  401728:	02e02821 	move	a1,s7
  40172c:	3c0a0001 	lui	t2,0x1
  401730:	8cc20000 	lw	v0,0(a2)
  401734:	8c830000 	lw	v1,0(a0)
  401738:	00e20018 	mult	a3,v0
  40173c:	24a5ffff 	addiu	a1,a1,-1
  401740:	24c6fffc 	addiu	a2,a2,-4
  401744:	00001012 	mflo	v0
  401748:	00621823 	subu	v1,v1,v0
  40174c:	00681823 	subu	v1,v1,t0
  401750:	00031402 	srl	v0,v1,0x10
  401754:	01421023 	subu	v0,t2,v0
  401758:	3063ffff 	andi	v1,v1,0xffff
  40175c:	ac830000 	sw	v1,0(a0)
  401760:	3048ffff 	andi	t0,v0,0xffff
  401764:	14a0fff2 	bnez	a1,401730 <__qdivrem+0x354>
  401768:	2484fffc 	addiu	a0,a0,-4
  40176c:	8d240000 	lw	a0,0(t1)
  401770:	00000000 	nop
  401774:	00881023 	subu	v0,a0,t0
  401778:	3044ffff 	andi	a0,v0,0xffff
  40177c:	00021c02 	srl	v1,v0,0x10
  401780:	10600018 	beqz	v1,4017e4 <__qdivrem+0x408>
  401784:	ad240000 	sw	a0,0(t1)
  401788:	1ae00012 	blez	s7,4017d4 <__qdivrem+0x3f8>
  40178c:	00004021 	move	t0,zero
  401790:	8fa20050 	lw	v0,80(sp)
  401794:	01802021 	move	a0,t4
  401798:	004e3021 	addu	a2,v0,t6
  40179c:	02e02821 	move	a1,s7
  4017a0:	8c820000 	lw	v0,0(a0)
  4017a4:	8cc30000 	lw	v1,0(a2)
  4017a8:	01021021 	addu	v0,t0,v0
  4017ac:	00431021 	addu	v0,v0,v1
  4017b0:	3043ffff 	andi	v1,v0,0xffff
  4017b4:	24a5ffff 	addiu	a1,a1,-1
  4017b8:	ac830000 	sw	v1,0(a0)
  4017bc:	00024402 	srl	t0,v0,0x10
  4017c0:	2484fffc 	addiu	a0,a0,-4
  4017c4:	14a0fff6 	bnez	a1,4017a0 <__qdivrem+0x3c4>
  4017c8:	24c6fffc 	addiu	a2,a2,-4
  4017cc:	8d240000 	lw	a0,0(t1)
  4017d0:	00000000 	nop
  4017d4:	01041021 	addu	v0,t0,a0
  4017d8:	3042ffff 	andi	v0,v0,0xffff
  4017dc:	ad220000 	sw	v0,0(t1)
  4017e0:	24e7ffff 	addiu	a3,a3,-1
  4017e4:	25ef0001 	addiu	t7,t7,1
  4017e8:	026f102a 	slt	v0,s3,t7
  4017ec:	ada70000 	sw	a3,0(t5)
  4017f0:	25290004 	addiu	t1,t1,4
  4017f4:	25ad0004 	addiu	t5,t5,4
  4017f8:	1040ffad 	beqz	v0,4016b0 <__qdivrem+0x2d4>
  4017fc:	258c0004 	addiu	t4,t4,4
  401800:	12400022 	beqz	s2,40188c <__qdivrem+0x4b0>
  401804:	00000000 	nop
  401808:	12a00016 	beqz	s5,401864 <__qdivrem+0x488>
  40180c:	02f32821 	addu	a1,s7,s3
  401810:	0265102a 	slt	v0,s3,a1
  401814:	10400011 	beqz	v0,40185c <__qdivrem+0x480>
  401818:	00051080 	sll	v0,a1,0x2
  40181c:	00051880 	sll	v1,a1,0x2
  401820:	24020010 	li	v0,16
  401824:	00553823 	subu	a3,v0,s5
  401828:	02833021 	addu	a2,s4,v1
  40182c:	8cc2fffc 	lw	v0,-4(a2)
  401830:	8cc30000 	lw	v1,0(a2)
  401834:	00e21004 	sllv	v0,v0,a3
  401838:	02a31806 	srlv	v1,v1,s5
  40183c:	3042ffff 	andi	v0,v0,0xffff
  401840:	24a5ffff 	addiu	a1,a1,-1
  401844:	00621825 	or	v1,v1,v0
  401848:	0265202a 	slt	a0,s3,a1
  40184c:	acc30000 	sw	v1,0(a2)
  401850:	1480fff6 	bnez	a0,40182c <__qdivrem+0x450>
  401854:	24c6fffc 	addiu	a2,a2,-4
  401858:	00051080 	sll	v0,a1,0x2
  40185c:	00541021 	addu	v0,v0,s4
  401860:	ac400000 	sw	zero,0(v0)
  401864:	8fa20014 	lw	v0,20(sp)
  401868:	8fa40018 	lw	a0,24(sp)
  40186c:	00021400 	sll	v0,v0,0x10
  401870:	8fa3001c 	lw	v1,28(sp)
  401874:	00448025 	or	s0,v0,a0
  401878:	8fa20020 	lw	v0,32(sp)
  40187c:	00031c00 	sll	v1,v1,0x10
  401880:	00628825 	or	s1,v1,v0
  401884:	ae510004 	sw	s1,4(s2)
  401888:	ae500000 	sw	s0,0(s2)
  40188c:	8fa2003c 	lw	v0,60(sp)
  401890:	8fa40040 	lw	a0,64(sp)
  401894:	00021400 	sll	v0,v0,0x10
  401898:	8fa30044 	lw	v1,68(sp)
  40189c:	00448025 	or	s0,v0,a0
  4018a0:	8fa20048 	lw	v0,72(sp)
  4018a4:	00031c00 	sll	v1,v1,0x10
  4018a8:	00628825 	or	s1,v1,v0
  4018ac:	02201821 	move	v1,s1
  4018b0:	08100512 	j	401448 <__qdivrem+0x6c>
  4018b4:	02001021 	move	v0,s0
  4018b8:	00001821 	move	v1,zero
  4018bc:	08100512 	j	401448 <__qdivrem+0x6c>
  4018c0:	00001021 	move	v0,zero
  4018c4:	00602821 	move	a1,v1
  4018c8:	081005c1 	j	401704 <__qdivrem+0x328>
  4018cc:	3407ffff 	li	a3,0xffff
  4018d0:	27a20024 	addiu	v0,sp,36
  4018d4:	24170004 	li	s7,4
  4018d8:	27be0028 	addiu	s8,sp,40
  4018dc:	08100576 	j	4015d8 <__qdivrem+0x1fc>
  4018e0:	afa20050 	sw	v0,80(sp)
  4018e4:	24170002 	li	s7,2
  4018e8:	27be0030 	addiu	s8,sp,48
  4018ec:	08100576 	j	4015d8 <__qdivrem+0x1fc>
  4018f0:	afa20050 	sw	v0,80(sp)
  4018f4:	08100581 	j	401604 <__qdivrem+0x228>
  4018f8:	27b40010 	addiu	s4,sp,16
  4018fc:	081005a4 	j	401690 <__qdivrem+0x2b4>
  401900:	0000a821 	move	s5,zero
  401904:	00042880 	sll	a1,a0,0x2
  401908:	0810058e 	j	401638 <__qdivrem+0x25c>
  40190c:	27a60038 	addiu	a2,sp,56
