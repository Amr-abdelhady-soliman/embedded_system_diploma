
learn_in_deapth.elf:     file format elf32-littlearm


Disassembly of section .startup:

00010000 <reset>:
   10000:	e59fd004 	ldr	sp, [pc, #4]	; 1000c <stop+0x4>
   10004:	eb000001 	bl	10010 <main>

00010008 <stop>:
   10008:	eafffffe 	b	10008 <stop>
   1000c:	000110dc 	ldrdeq	r1, [r1], -ip

Disassembly of section .text:

00010010 <main>:
   10010:	e92d4800 	push	{fp, lr}
   10014:	e28db004 	add	fp, sp, #4
   10018:	e59f0004 	ldr	r0, [pc, #4]	; 10024 <main+0x14>
   1001c:	eb000001 	bl	10028 <send_string>
   10020:	e8bd8800 	pop	{fp, pc}
   10024:	00010078 	andeq	r0, r1, r8, ror r0

00010028 <send_string>:
   10028:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1002c:	e28db000 	add	fp, sp, #0
   10030:	e24dd00c 	sub	sp, sp, #12
   10034:	e50b0008 	str	r0, [fp, #-8]
   10038:	ea000006 	b	10058 <send_string+0x30>
   1003c:	e59f3030 	ldr	r3, [pc, #48]	; 10074 <send_string+0x4c>
   10040:	e51b2008 	ldr	r2, [fp, #-8]
   10044:	e5d22000 	ldrb	r2, [r2]
   10048:	e5832000 	str	r2, [r3]
   1004c:	e51b3008 	ldr	r3, [fp, #-8]
   10050:	e2833001 	add	r3, r3, #1
   10054:	e50b3008 	str	r3, [fp, #-8]
   10058:	e51b3008 	ldr	r3, [fp, #-8]
   1005c:	e5d33000 	ldrb	r3, [r3]
   10060:	e3530000 	cmp	r3, #0
   10064:	1afffff4 	bne	1003c <send_string+0x14>
   10068:	e28bd000 	add	sp, fp, #0
   1006c:	e8bd0800 	ldmfd	sp!, {fp}
   10070:	e12fff1e 	bx	lr
   10074:	101f1000 	andsne	r1, pc, r0

Disassembly of section .data:

00010078 <buffer>:
   10078:	7261656c 	rsbvc	r6, r1, #108, 10	; 0x1b000000
   1007c:	6e69206e 	cdpvs	0, 6, cr2, cr9, cr14, {3}
   10080:	61656420 	cmnvs	r5, r0, lsr #8
   10084:	20687470 	rsbcs	r7, r8, r0, ror r4
   10088:	20726d61 	rsbscs	r6, r2, r1, ror #26
   1008c:	69657767 	stmdbvs	r5!, {r0, r1, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
   10090:	0000796c 	andeq	r7, r0, ip, ror #18
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002d41 	andeq	r2, r0, r1, asr #26
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000023 	andeq	r0, r0, r3, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	45363239 	ldrmi	r3, [r6, #-569]!	; 0x239
  18:	00532d4a 	subseq	r2, r3, sl, asr #26
  1c:	01080506 	tsteq	r8, r6, lsl #10
  20:	04120109 	ldreq	r0, [r2], #-265	; 0x109
  24:	01150114 	tsteq	r5, r4, lsl r1
  28:	01180317 	tsteq	r8, r7, lsl r3
  2c:	Address 0x0000002c is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <stack_top+0x10bfc48>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	34202955 	strtcc	r2, [r0], #-2389	; 0x955
   c:	322e372e 	eorcc	r3, lr, #12058624	; 0xb80000
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000067 	andeq	r0, r0, r7, rrx
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000061 	andeq	r0, r0, r1, rrx
  10:	00007401 	andeq	r7, r0, r1, lsl #8
  14:	00000000 	andeq	r0, r0, r0
  18:	01001000 	mrseq	r1, (UNDEF: 0)
  1c:	01002800 	tsteq	r0, r0, lsl #16
  20:	00000000 	andeq	r0, r0, r0
  24:	7a010200 	bvc	4082c <stack_top+0x2f750>
  28:	01000000 	mrseq	r0, (UNDEF: 0)
  2c:	01001003 	tsteq	r0, r3
  30:	01002800 	tsteq	r0, r0, lsl #16
  34:	00000000 	andeq	r0, r0, r0
  38:	51030100 	mrspl	r0, (UNDEF: 19)
  3c:	4a000000 	bmi	44 <reset-0xffbc>
  40:	04000000 	streq	r0, [r0], #-0
  44:	0000004a 	andeq	r0, r0, sl, asr #32
  48:	04050063 	streq	r0, [r5], #-99	; 0x63
  4c:	00005807 	andeq	r5, r0, r7, lsl #16
  50:	08010500 	stmdaeq	r1, {r8, sl}
  54:	0000004a 	andeq	r0, r0, sl, asr #32
  58:	00006d06 	andeq	r6, r0, r6, lsl #26
  5c:	3a020100 	bcc	80464 <stack_top+0x6f388>
  60:	01000000 	mrseq	r0, (UNDEF: 0)
  64:	00780305 	rsbseq	r0, r8, r5, lsl #6
  68:	58000001 	stmdapl	r0, {r0}
  6c:	02000000 	andeq	r0, r0, #0
  70:	00005800 	andeq	r5, r0, r0, lsl #16
  74:	61010400 	tstvs	r1, r0, lsl #8
  78:	01000000 	mrseq	r0, (UNDEF: 0)
  7c:	0000007f 	andeq	r0, r0, pc, ror r0
  80:	00000000 	andeq	r0, r0, r0
  84:	00010028 	andeq	r0, r1, r8, lsr #32
  88:	00010078 	andeq	r0, r1, r8, ror r0
  8c:	00000035 	andeq	r0, r0, r5, lsr r0
  90:	00920102 	addseq	r0, r2, r2, lsl #2
  94:	04010000 	streq	r0, [r1], #-0
  98:	01002801 	tsteq	r0, r1, lsl #16
  9c:	01007800 	tsteq	r0, r0, lsl #16
  a0:	00002c00 	andeq	r2, r0, r0, lsl #24
  a4:	004e0100 	subeq	r0, lr, r0, lsl #2
  a8:	86030000 	strhi	r0, [r3], -r0
  ac:	01000000 	mrseq	r0, (UNDEF: 0)
  b0:	00004e04 	andeq	r4, r0, r4, lsl #28
  b4:	74910200 	ldrvc	r0, [r1], #512	; 0x200
  b8:	54040400 	strpl	r0, [r4], #-1024	; 0x400
  bc:	05000000 	streq	r0, [r0, #-0]
  c0:	004a0801 	subeq	r0, sl, r1, lsl #16
  c4:	Address 0x000000c4 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0c3f002e 	ldceq	0, cr0, [pc], #-184	; ffffff64 <stack_top+0xfffeee88>
  18:	0b3a0e03 	bleq	e8382c <stack_top+0xe72750>
  1c:	01110b3b 	tsteq	r1, fp, lsr fp
  20:	06400112 			; <UNDEFINED> instruction: 0x06400112
  24:	000c4296 	muleq	ip, r6, r2
  28:	01010300 	mrseq	r0, SP_irq
  2c:	13011349 	movwne	r1, #4937	; 0x1349
  30:	21040000 	mrscs	r0, (UNDEF: 4)
  34:	2f134900 	svccs	0x00134900
  38:	0500000b 	streq	r0, [r0, #-11]
  3c:	0b0b0024 	bleq	2c00d4 <stack_top+0x2aeff8>
  40:	0e030b3e 	vmoveq.16	d3[0], r0
  44:	34060000 	strcc	r0, [r6], #-0
  48:	3a0e0300 	bcc	380c50 <stack_top+0x36fb74>
  4c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  50:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  54:	0000000a 	andeq	r0, r0, sl
  58:	25011101 	strcs	r1, [r1, #-257]	; 0x101
  5c:	030b130e 	movweq	r1, #45838	; 0xb30e
  60:	110e1b0e 	tstne	lr, lr, lsl #22
  64:	10011201 	andne	r1, r1, r1, lsl #4
  68:	02000006 	andeq	r0, r0, #6
  6c:	0c3f012e 	ldfeqs	f0, [pc], #-184	; ffffffbc <stack_top+0xfffeeee0>
  70:	0b3a0e03 	bleq	e83884 <stack_top+0xe727a8>
  74:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  78:	01120111 	tsteq	r2, r1, lsl r1
  7c:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
  80:	0013010c 	andseq	r0, r3, ip, lsl #2
  84:	00050300 	andeq	r0, r5, r0, lsl #6
  88:	0b3a0e03 	bleq	e8389c <stack_top+0xe727c0>
  8c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  90:	00000a02 	andeq	r0, r0, r2, lsl #20
  94:	0b000f04 	bleq	3cac <reset-0xc354>
  98:	0013490b 	andseq	r4, r3, fp, lsl #18
  9c:	00240500 	eoreq	r0, r4, r0, lsl #10
  a0:	0b3e0b0b 	bleq	f82cd4 <stack_top+0xf71bf8>
  a4:	00000e03 	andeq	r0, r0, r3, lsl #28
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000004 	andeq	r0, r0, r4
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000004 	andeq	r0, r0, r4
  10:	00000008 	andeq	r0, r0, r8
  14:	087d0002 	ldmdaeq	sp!, {r1}^
  18:	00000008 	andeq	r0, r0, r8
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	047b0002 	ldrbteq	r0, [fp], #-2
	...
  30:	00000004 	andeq	r0, r0, r4
  34:	007d0002 	rsbseq	r0, sp, r2
  38:	00000004 	andeq	r0, r0, r4
  3c:	00000008 	andeq	r0, r0, r8
  40:	047d0002 	ldrbteq	r0, [sp], #-2
  44:	00000008 	andeq	r0, r0, r8
  48:	00000050 	andeq	r0, r0, r0, asr r0
  4c:	047b0002 	ldrbteq	r0, [fp], #-2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00010010 	andeq	r0, r1, r0, lsl r0
  14:	00000018 	andeq	r0, r0, r8, lsl r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	006b0002 	rsbeq	r0, fp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00010028 	andeq	r0, r1, r8, lsr #32
  34:	00000050 	andeq	r0, r0, r0, asr r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000031 	andeq	r0, r0, r1, lsr r0
   4:	001c0002 	andseq	r0, ip, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	2e707061 	cdpcs	0, 7, cr7, cr0, cr1, {3}
  20:	00000063 	andeq	r0, r0, r3, rrx
  24:	05000000 	streq	r0, [r0, #-0]
  28:	01001002 	tsteq	r0, r2
  2c:	4b4b1500 	blmi	12c5434 <stack_top+0x12b4358>
  30:	01000402 	tsteq	r0, r2, lsl #8
  34:	00003901 	andeq	r3, r0, r1, lsl #18
  38:	1d000200 	sfmne	f0, 4, [r0, #-0]
  3c:	02000000 	andeq	r0, r0, #0
  40:	0d0efb01 	vstreq	d15, [lr, #-4]
  44:	01010100 	mrseq	r0, (UNDEF: 17)
  48:	00000001 	andeq	r0, r0, r1
  4c:	01000001 	tsteq	r0, r1
  50:	72617500 	rsbvc	r7, r1, #0, 10
  54:	00632e74 	rsbeq	r2, r3, r4, ror lr
  58:	00000000 	andeq	r0, r0, r0
  5c:	28020500 	stmdacs	r2, {r8, sl}
  60:	16000100 	strne	r0, [r0], -r0, lsl #2
  64:	00833083 	addeq	r3, r3, r3, lsl #1
  68:	63010402 	movwvs	r0, #5122	; 0x1402
  6c:	00080287 	andeq	r0, r8, r7, lsl #5
  70:	Address 0x00000070 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6c5c3a44 	mrrcvs	10, 4, r3, ip, cr4
   4:	5c316261 	lfmpl	f6, 4, [r1], #-388	; 0xfffffe7c
   8:	6b726f77 	blvs	1c9bdec <stack_top+0x1c8ad10>
   c:	5f676e69 	svcpl	0x00676e69
  10:	65726964 	ldrbvs	r6, [r2, #-2404]!	; 0x964
  14:	6f697463 	svcvs	0x00697463
  18:	305c316e 	subscc	r3, ip, lr, ror #2
  1c:	6d655f32 	stclvs	15, cr5, [r5, #-200]!	; 0xffffff38
  20:	64646562 	strbtvs	r6, [r4], #-1378	; 0x562
  24:	635f6465 	cmpvs	pc, #1694498816	; 0x65000000
  28:	5f32305c 	svcpl	0x0032305c
  2c:	74696e75 	strbtvc	r6, [r9], #-3701	; 0xe75
  30:	6d655f33 	stclvs	15, cr5, [r5, #-204]!	; 0xffffff34
  34:	64646562 	strbtvs	r6, [r4], #-1378	; 0x562
  38:	635f6465 	cmpvs	pc, #1694498816	; 0x65000000
  3c:	73656c5f 	cmnvc	r5, #24320	; 0x5f00
  40:	325f6e6f 	subscc	r6, pc, #1776	; 0x6f0
  44:	62616c5c 	rsbvs	r6, r1, #92, 24	; 0x5c00
  48:	6e750031 	mrcvs	0, 3, r0, cr5, cr1, {1}
  4c:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
  50:	63206465 	teqvs	r0, #1694498816	; 0x65000000
  54:	00726168 	rsbseq	r6, r2, r8, ror #2
  58:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0x973
  5c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
  60:	554e4700 	strbpl	r4, [lr, #-1792]	; 0x700
  64:	34204320 	strtcc	r4, [r0], #-800	; 0x320
  68:	322e372e 	eorcc	r3, lr, #12058624	; 0xb80000
  6c:	66756200 	ldrbtvs	r6, [r5], -r0, lsl #4
  70:	00726566 	rsbseq	r6, r2, r6, ror #10
  74:	2e707061 	cdpcs	0, 7, cr7, cr0, cr1, {3}
  78:	616d0063 	cmnvs	sp, r3, rrx
  7c:	75006e69 	strvc	r6, [r0, #-3689]	; 0xe69
  80:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
  84:	5f700063 	svcpl	0x00700063
  88:	735f7874 	cmpvc	pc, #116, 16	; 0x740000
  8c:	6e697274 	mcrvs	2, 3, r7, cr9, cr4, {3}
  90:	65730067 	ldrbvs	r0, [r3, #-103]!	; 0x67
  94:	735f646e 	cmpvc	pc, #1845493760	; 0x6e000000
  98:	6e697274 	mcrvs	2, 3, r7, cr9, cr4, {3}
  9c:	Address 0x0000009c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00010010 	andeq	r0, r1, r0, lsl r0
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	8b080e42 	blhi	203930 <stack_top+0x1f2854>
  24:	42018e02 	andmi	r8, r1, #2, 28
  28:	00040b0c 	andeq	r0, r4, ip, lsl #22
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000014 	andeq	r0, r0, r4, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	00010028 	andeq	r0, r1, r8, lsr #32
  48:	00000050 	andeq	r0, r0, r0, asr r0
  4c:	8b040e42 	blhi	10395c <stack_top+0xf2880>
  50:	0b0d4201 	bleq	35085c <stack_top+0x33f780>
