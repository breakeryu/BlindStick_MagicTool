;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module gpio
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_toggleBitValue_PARM_2
	.globl _GPIO_setBitValue_PARM_2
	.globl _GPIO_resetBitValue_PARM_2
	.globl _GPIO_getBitValue_PARM_2
	.globl _GPIO_configPortValue_PARM_2
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
	.globl _GPIO_configBitValue_PARM_3
	.globl _GPIO_configBitValue_PARM_2
	.globl _GPIO_configBitValue
	.globl _GPIO_configPortValue
	.globl _GPIO_getBitValue
	.globl _GPIO_getPortValue
	.globl _GPIO_resetBitValue
	.globl _GPIO_setBitValue
	.globl _GPIO_toggleBitValue
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
_GPIO_configBitValue_PARM_2:
	.ds 1
_GPIO_configBitValue_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_GPIO_configPortValue_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_GPIO_getBitValue_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_GPIO_resetBitValue_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_GPIO_setBitValue_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_GPIO_toggleBitValue_PARM_2:
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
;Allocation info for local variables in function 'GPIO_configBitValue'
;------------------------------------------------------------
;pin                       Allocated with name '_GPIO_configBitValue_PARM_2'
;f                         Allocated with name '_GPIO_configBitValue_PARM_3'
;gpio                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/gpio.c:28: void GPIO_configBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, FunctionalState f)
;	-----------------------------------------
;	 function GPIO_configBitValue
;	-----------------------------------------
_GPIO_configBitValue:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../src/gpio.c:30: if (f == RESET)
	mov	a,_GPIO_configBitValue_PARM_3
	jnz	00102$
;	../src/gpio.c:32: GPIO_resetBitValue(gpio, pin);
	mov	_GPIO_resetBitValue_PARM_2,_GPIO_configBitValue_PARM_2
	mov	dpl,r7
	ljmp	_GPIO_resetBitValue
00102$:
;	../src/gpio.c:36: GPIO_setBitValue(gpio, pin);
	mov	_GPIO_setBitValue_PARM_2,_GPIO_configBitValue_PARM_2
	mov	dpl,r7
;	../src/gpio.c:38: }
	ljmp	_GPIO_setBitValue
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_configPortValue'
;------------------------------------------------------------
;val                       Allocated with name '_GPIO_configPortValue_PARM_2'
;gpio                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/gpio.c:51: void GPIO_configPortValue(PERIPH_GPIO gpio, byte val)
;	-----------------------------------------
;	 function GPIO_configPortValue
;	-----------------------------------------
_GPIO_configPortValue:
;	../src/gpio.c:53: switch (gpio)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x04
	jc	00108$
	mov	a,r7
	add	a,r7
;	../src/gpio.c:55: case PERIPH_GPIO_0: P0 = val; break;
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
00101$:
	mov	_P0,_GPIO_configPortValue_PARM_2
;	../src/gpio.c:56: case PERIPH_GPIO_1: P1 = val; break;
	ret
00102$:
	mov	_P1,_GPIO_configPortValue_PARM_2
;	../src/gpio.c:57: case PERIPH_GPIO_2: P2 = val; break;
	ret
00103$:
	mov	_P2,_GPIO_configPortValue_PARM_2
;	../src/gpio.c:58: case PERIPH_GPIO_3: P3 = val; break;
	ret
00104$:
	mov	_P3,_GPIO_configPortValue_PARM_2
;	../src/gpio.c:59: case PERIPH_GPIO_4: P4 = val; break;
	ret
00105$:
	mov	_P4,_GPIO_configPortValue_PARM_2
;	../src/gpio.c:61: }
00108$:
;	../src/gpio.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_getBitValue'
;------------------------------------------------------------
;pin                       Allocated with name '_GPIO_getBitValue_PARM_2'
;gpio                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/gpio.c:75: FunctionalState GPIO_getBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
;	-----------------------------------------
;	 function GPIO_getBitValue
;	-----------------------------------------
_GPIO_getBitValue:
;	../src/gpio.c:77: switch (gpio)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x04
	jnc	00114$
	ljmp	00106$
00114$:
	mov	a,r7
	add	a,r7
;	../src/gpio.c:79: case PERIPH_GPIO_0: return GET_BIT(P0, pin);
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
00101$:
	mov	a,_GPIO_getBitValue_PARM_2
	anl	a,_P0
	cjne	a,#0x01,00116$
00116$:
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
;	../src/gpio.c:80: case PERIPH_GPIO_1: return GET_BIT(P1, pin);
	ret
00102$:
	mov	a,_GPIO_getBitValue_PARM_2
	anl	a,_P1
	cjne	a,#0x01,00118$
00118$:
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
;	../src/gpio.c:81: case PERIPH_GPIO_2: return GET_BIT(P2, pin);
	ret
00103$:
	mov	a,_GPIO_getBitValue_PARM_2
	anl	a,_P2
	cjne	a,#0x01,00120$
00120$:
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
;	../src/gpio.c:82: case PERIPH_GPIO_3: return GET_BIT(P3, pin);
	ret
00104$:
	mov	a,_GPIO_getBitValue_PARM_2
	anl	a,_P3
	cjne	a,#0x01,00122$
00122$:
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
;	../src/gpio.c:83: case PERIPH_GPIO_4: return GET_BIT(P4, pin);
	ret
00105$:
	mov	a,_GPIO_getBitValue_PARM_2
	anl	a,_P4
	cjne	a,#0x01,00124$
00124$:
	cpl	c
	clr	a
	rlc	a
	mov	dpl,a
;	../src/gpio.c:84: default: return RESET;
	ret
00106$:
	mov	dpl,#0x00
;	../src/gpio.c:85: }
;	../src/gpio.c:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_getPortValue'
;------------------------------------------------------------
;gpio                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/gpio.c:98: byte GPIO_getPortValue(PERIPH_GPIO gpio)
;	-----------------------------------------
;	 function GPIO_getPortValue
;	-----------------------------------------
_GPIO_getPortValue:
;	../src/gpio.c:100: switch (gpio)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x04
	jc	00106$
	mov	a,r7
	add	a,r7
;	../src/gpio.c:102: case PERIPH_GPIO_0: return P0;
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
00101$:
	mov	dpl,_P0
;	../src/gpio.c:103: case PERIPH_GPIO_1: return P1;
	ret
00102$:
	mov	dpl,_P1
;	../src/gpio.c:104: case PERIPH_GPIO_2: return P2;
	ret
00103$:
	mov	dpl,_P2
;	../src/gpio.c:105: case PERIPH_GPIO_3: return P3;
	ret
00104$:
	mov	dpl,_P3
;	../src/gpio.c:106: case PERIPH_GPIO_4: return P4;
	ret
00105$:
	mov	dpl,_P4
;	../src/gpio.c:107: default: return 0x00;
	ret
00106$:
	mov	dpl,#0x00
;	../src/gpio.c:108: }
;	../src/gpio.c:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_resetBitValue'
;------------------------------------------------------------
;pin                       Allocated with name '_GPIO_resetBitValue_PARM_2'
;gpio                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/gpio.c:122: void GPIO_resetBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
;	-----------------------------------------
;	 function GPIO_resetBitValue
;	-----------------------------------------
_GPIO_resetBitValue:
;	../src/gpio.c:124: switch (gpio)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x04
	jc	00108$
	mov	a,r7
	add	a,r7
;	../src/gpio.c:126: case PERIPH_GPIO_0: CLR_BIT_MASK(P0, pin); break;
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
00101$:
	mov	a,_GPIO_resetBitValue_PARM_2
	cpl	a
	anl	_P0,a
;	../src/gpio.c:127: case PERIPH_GPIO_1: CLR_BIT_MASK(P1, pin); break;
	ret
00102$:
	mov	a,_GPIO_resetBitValue_PARM_2
	cpl	a
	anl	_P1,a
;	../src/gpio.c:128: case PERIPH_GPIO_2: CLR_BIT_MASK(P2, pin); break;
	ret
00103$:
	mov	a,_GPIO_resetBitValue_PARM_2
	cpl	a
	anl	_P2,a
;	../src/gpio.c:129: case PERIPH_GPIO_3: CLR_BIT_MASK(P3, pin); break;
	ret
00104$:
	mov	a,_GPIO_resetBitValue_PARM_2
	cpl	a
	anl	_P3,a
;	../src/gpio.c:130: case PERIPH_GPIO_4: CLR_BIT_MASK(P4, pin); break;
	ret
00105$:
	mov	a,_GPIO_resetBitValue_PARM_2
	cpl	a
	mov	r7,a
	anl	_P4,a
;	../src/gpio.c:132: }
00108$:
;	../src/gpio.c:133: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_setBitValue'
;------------------------------------------------------------
;pin                       Allocated with name '_GPIO_setBitValue_PARM_2'
;gpio                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/gpio.c:146: void GPIO_setBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
;	-----------------------------------------
;	 function GPIO_setBitValue
;	-----------------------------------------
_GPIO_setBitValue:
;	../src/gpio.c:148: switch (gpio)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x04
	jc	00108$
	mov	a,r7
	add	a,r7
;	../src/gpio.c:150: case PERIPH_GPIO_0: SET_BIT_MASK(P0, pin); break;
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
00101$:
	mov	a,_GPIO_setBitValue_PARM_2
	orl	_P0,a
;	../src/gpio.c:151: case PERIPH_GPIO_1: SET_BIT_MASK(P1, pin); break;
	ret
00102$:
	mov	a,_GPIO_setBitValue_PARM_2
	orl	_P1,a
;	../src/gpio.c:152: case PERIPH_GPIO_2: SET_BIT_MASK(P2, pin); break;
	ret
00103$:
	mov	a,_GPIO_setBitValue_PARM_2
	orl	_P2,a
;	../src/gpio.c:153: case PERIPH_GPIO_3: SET_BIT_MASK(P3, pin); break;
	ret
00104$:
	mov	a,_GPIO_setBitValue_PARM_2
	orl	_P3,a
;	../src/gpio.c:154: case PERIPH_GPIO_4: SET_BIT_MASK(P4, pin); break;
	ret
00105$:
	mov	a,_GPIO_setBitValue_PARM_2
	orl	_P4,a
;	../src/gpio.c:156: }
00108$:
;	../src/gpio.c:157: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_toggleBitValue'
;------------------------------------------------------------
;pin                       Allocated with name '_GPIO_toggleBitValue_PARM_2'
;gpio                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/gpio.c:170: void GPIO_toggleBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
;	-----------------------------------------
;	 function GPIO_toggleBitValue
;	-----------------------------------------
_GPIO_toggleBitValue:
;	../src/gpio.c:172: switch (gpio)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x04
	jc	00108$
	mov	a,r7
	add	a,r7
;	../src/gpio.c:174: case PERIPH_GPIO_0: NOT_BIT_MASK(P0, pin); break;
	mov	dptr,#00115$
	jmp	@a+dptr
00115$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
00101$:
	mov	a,_GPIO_toggleBitValue_PARM_2
	xrl	_P0,a
;	../src/gpio.c:175: case PERIPH_GPIO_1: NOT_BIT_MASK(P1, pin); break;
	ret
00102$:
	mov	a,_GPIO_toggleBitValue_PARM_2
	xrl	_P1,a
;	../src/gpio.c:176: case PERIPH_GPIO_2: NOT_BIT_MASK(P2, pin); break;
	ret
00103$:
	mov	a,_GPIO_toggleBitValue_PARM_2
	xrl	_P2,a
;	../src/gpio.c:177: case PERIPH_GPIO_3: NOT_BIT_MASK(P3, pin); break;
	ret
00104$:
	mov	a,_GPIO_toggleBitValue_PARM_2
	xrl	_P3,a
;	../src/gpio.c:178: case PERIPH_GPIO_4: NOT_BIT_MASK(P4, pin); break;
	ret
00105$:
	mov	a,_GPIO_toggleBitValue_PARM_2
	xrl	_P4,a
;	../src/gpio.c:180: }
00108$:
;	../src/gpio.c:181: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
