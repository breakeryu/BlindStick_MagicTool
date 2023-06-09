;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module exti
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_setPriority_PARM_2
	.globl _EXTI_setMode_PARM_2
	.globl _EXTI_cmd_PARM_2
	.globl _PX3
	.globl _EX3
	.globl _IE3
	.globl _IT3
	.globl _PX2
	.globl _EX2
	.globl _IE2
	.globl _IT2
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _T2_CT
	.globl _CPRL2
	.globl _INT2
	.globl _INT3
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _T2EX
	.globl _T2
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P4
	.globl _ISP_CONTR
	.globl _ISP_TRIG
	.globl _ISP_CMD
	.globl _ISP_ADDRL
	.globl _ISP_ADDRH
	.globl _ISP_DATA
	.globl _WDT_CONTR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _XICON
	.globl _IPH
	.globl _SADDR1
	.globl _AUXR1
	.globl _AUXR
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _EXTI_config_PARM_2
	.globl _EXTI_config
	.globl _EXTI_cmd
	.globl _EXTI_setMode
	.globl _EXTI_setPriority
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_SADDR1	=	0x00a9
_IPH	=	0x00b7
_XICON	=	0x00c0
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_WDT_CONTR	=	0x00e1
_ISP_DATA	=	0x00e2
_ISP_ADDRH	=	0x00e3
_ISP_ADDRL	=	0x00e4
_ISP_CMD	=	0x00e5
_ISP_TRIG	=	0x00e6
_ISP_CONTR	=	0x00e7
_P4	=	0x00e8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2	=	0x0090
_T2EX	=	0x0091
_P4_0	=	0x00e8
_P4_1	=	0x00e9
_P4_2	=	0x00ea
_P4_3	=	0x00eb
_INT3	=	0x00ea
_INT2	=	0x00eb
_CPRL2	=	0x00c8
_T2_CT	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_IT2	=	0x00c0
_IE2	=	0x00c1
_EX2	=	0x00c2
_PX2	=	0x00c3
_IT3	=	0x00c4
_IE3	=	0x00c5
_EX3	=	0x00c6
_PX3	=	0x00c7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_EXTI_config_PARM_2:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_EXTI_cmd_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_EXTI_setMode_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_EXTI_setPriority_PARM_2:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'EXTI_config'
;------------------------------------------------------------
;ec                        Allocated with name '_EXTI_config_PARM_2'
;exti                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/exti.c:28: void EXTI_config(PERIPH_EXTI exti, EXTI_configTypeDef *ec)
;	-----------------------------------------
;	 function EXTI_config
;	-----------------------------------------
_EXTI_config:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../src/exti.c:30: EXTI_setMode(exti, ec->mode);
	mov	r4,_EXTI_config_PARM_2
	mov	r5,(_EXTI_config_PARM_2 + 1)
	mov	r6,(_EXTI_config_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_EXTI_setMode_PARM_2,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_EXTI_setMode
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/exti.c:31: EXTI_setPriority(exti, ec->priority);
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
00103$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_EXTI_setPriority_PARM_2,a
	mov	dpl,r7
;	../src/exti.c:32: }
	ljmp	_EXTI_setPriority
;------------------------------------------------------------
;Allocation info for local variables in function 'EXTI_cmd'
;------------------------------------------------------------
;a                         Allocated with name '_EXTI_cmd_PARM_2'
;exti                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/exti.c:45: void EXTI_cmd(PERIPH_EXTI exti, Action a)
;	-----------------------------------------
;	 function EXTI_cmd
;	-----------------------------------------
_EXTI_cmd:
;	../src/exti.c:47: switch (exti)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00107$
	mov	a,r7
	add	a,r7
;	../src/exti.c:49: case PERIPH_EXTI_0: EX0 = a; break;
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	assignBit
	mov	a,_EXTI_cmd_PARM_2
	add	a,#0xff
	mov	_EX0,c
;	../src/exti.c:50: case PERIPH_EXTI_1: EX1 = a; break;
	ret
00102$:
;	assignBit
	mov	a,_EXTI_cmd_PARM_2
	add	a,#0xff
	mov	_EX1,c
;	../src/exti.c:51: case PERIPH_EXTI_2: EX2 = a; break;
	ret
00103$:
;	assignBit
	mov	a,_EXTI_cmd_PARM_2
	add	a,#0xff
	mov	_EX2,c
;	../src/exti.c:52: case PERIPH_EXTI_3: EX3 = a; break;
	ret
00104$:
;	assignBit
	mov	a,_EXTI_cmd_PARM_2
	add	a,#0xff
	mov	_EX3,c
;	../src/exti.c:54: }
00107$:
;	../src/exti.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EXTI_setMode'
;------------------------------------------------------------
;mod                       Allocated with name '_EXTI_setMode_PARM_2'
;exti                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/exti.c:68: void EXTI_setMode(PERIPH_EXTI exti, EXTI_mode mod)
;	-----------------------------------------
;	 function EXTI_setMode
;	-----------------------------------------
_EXTI_setMode:
;	../src/exti.c:70: switch (exti)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00107$
	mov	a,r7
	add	a,r7
;	../src/exti.c:72: case PERIPH_EXTI_0: IT0 = mod; break;
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	assignBit
	mov	a,_EXTI_setMode_PARM_2
	add	a,#0xff
	mov	_IT0,c
;	../src/exti.c:73: case PERIPH_EXTI_1: IT1 = mod; break;
	ret
00102$:
;	assignBit
	mov	a,_EXTI_setMode_PARM_2
	add	a,#0xff
	mov	_IT1,c
;	../src/exti.c:74: case PERIPH_EXTI_2: IT2 = mod; break;
	ret
00103$:
;	assignBit
	mov	a,_EXTI_setMode_PARM_2
	add	a,#0xff
	mov	_IT2,c
;	../src/exti.c:75: case PERIPH_EXTI_3: IT3 = mod; break;
	ret
00104$:
;	assignBit
	mov	a,_EXTI_setMode_PARM_2
	add	a,#0xff
	mov	_IT3,c
;	../src/exti.c:77: }
00107$:
;	../src/exti.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EXTI_setPriority'
;------------------------------------------------------------
;p                         Allocated with name '_EXTI_setPriority_PARM_2'
;exti                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/exti.c:91: void EXTI_setPriority(PERIPH_EXTI exti, UTIL_interruptPriority p)
;	-----------------------------------------
;	 function EXTI_setPriority
;	-----------------------------------------
_EXTI_setPriority:
;	../src/exti.c:93: switch (exti)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jnc	00113$
	ret
00113$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
;	../src/exti.c:95: case PERIPH_EXTI_0:
00101$:
;	../src/exti.c:97: PX0 = TESTB(p, 0);//eq (p & 1)
	mov	a,_EXTI_setPriority_PARM_2
	anl	a,#0x01
	cjne	a,#0x01,00115$
00115$:
	cpl	c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_PX0,c
;	../src/exti.c:98: CONFB(IPH, BIT_NUM_PX0H, TESTB(p, 1));
	mov	a,#0xfe
	anl	a,_IPH
	mov	r7,a
	mov	a,_EXTI_setPriority_PARM_2
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00117$
00117$:
	cpl	c
	clr	a
	rlc	a
	orl	a,r7
	mov	_IPH,a
;	../src/exti.c:99: } break;
	ret
;	../src/exti.c:100: case PERIPH_EXTI_1:
00102$:
;	../src/exti.c:102: PX1 = TESTB(p, 0);
	mov	a,_EXTI_setPriority_PARM_2
	anl	a,#0x01
	cjne	a,#0x01,00119$
00119$:
	cpl	c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_PX1,c
;	../src/exti.c:103: CONFB(IPH, BIT_NUM_PX1H, TESTB(p, 1));
	mov	a,#0xfb
	anl	a,_IPH
	mov	r7,a
	mov	a,_EXTI_setPriority_PARM_2
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00121$
00121$:
	clr	a
	rlc	a
	cjne	a,#0x01,00122$
00122$:
	clr	a
	rlc	a
	add	a,acc
	add	a,acc
	orl	a,r7
	mov	_IPH,a
;	../src/exti.c:104: } break;
;	../src/exti.c:105: case PERIPH_EXTI_2:
	ret
00103$:
;	../src/exti.c:107: PX2 = TESTB(p, 0);
	mov	a,_EXTI_setPriority_PARM_2
	anl	a,#0x01
	cjne	a,#0x01,00123$
00123$:
	cpl	c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_PX2,c
;	../src/exti.c:108: CONFB(IPH, BIT_NUM_PX2H, TESTB(p, 1));
	mov	a,#0xbf
	anl	a,_IPH
	mov	r7,a
	mov	a,_EXTI_setPriority_PARM_2
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00125$
00125$:
	cpl	c
	clr	a
	rlc	a
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r7
	mov	_IPH,a
;	../src/exti.c:109: } break;
;	../src/exti.c:110: case PERIPH_EXTI_3:
	ret
00104$:
;	../src/exti.c:112: PX3 = TESTB(p, 0);
	mov	a,_EXTI_setPriority_PARM_2
	anl	a,#0x01
	cjne	a,#0x01,00127$
00127$:
	cpl	c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_PX3,c
;	../src/exti.c:113: CONFB(IPH, BIT_NUM_PX3H, TESTB(p, 1));
	mov	a,#0x7f
	anl	a,_IPH
	mov	r7,a
	mov	a,_EXTI_setPriority_PARM_2
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00129$
00129$:
	cpl	c
	clr	a
	rlc	a
	rr	a
	anl	a,#0x80
	orl	a,r7
	mov	_IPH,a
;	../src/exti.c:116: }
;	../src/exti.c:117: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
