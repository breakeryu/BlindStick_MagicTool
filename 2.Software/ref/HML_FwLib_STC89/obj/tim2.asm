;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module tim2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_BAUD_cmd_PARM_2
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
	.globl _TIM2_calculateValue
	.globl _TIM2_clearFlag
	.globl _TIM2_cmd
	.globl _TIM2_config
	.globl _TIM2_getCaptureValue
	.globl _TIM2_getValue
	.globl _TIM2_isExternalEvent
	.globl _TIM2_isOverflow
	.globl _TIM2_setFunction
	.globl _TIM2_setMode
	.globl _TIM2_setReloadValue
	.globl _TIM2_setValue
	.globl _TIM2_BAUD_cmd
	.globl _TIM2_INT_cmd
	.globl _TIM2_INT_setPriority
	.globl _TIM2_T2EX_cmd
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_TIM2_BAUD_cmd_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'TIM2_calculateValue'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	../src/tim2.c:26: uint16_t TIM2_calculateValue(uint16_t t)
;	-----------------------------------------
;	 function TIM2_calculateValue
;	-----------------------------------------
_TIM2_calculateValue:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	../src/tim2.c:28: if ((t*(MCU_FRE_CLK/1000000)/MCU_PRESCALER) >= TIM2_MAXTICK)
	mov	__mullong_PARM_2,r6
	mov	(__mullong_PARM_2 + 1),r7
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	mov	dptr,#(0x0c&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	__divulong_PARM_2,#0x0c
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0xff
	mov	a,r5
	subb	a,#0xff
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00102$
;	../src/tim2.c:30: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	../src/tim2.c:34: return (TIM2_MAXTICK + 1 - (t*(MCU_FRE_CLK/1000000)/MCU_PRESCALER));
	clr	c
	clr	a
	subb	a,r4
	mov	dpl,a
	clr	a
	subb	a,r5
	mov	dph,a
;	../src/tim2.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_clearFlag'
;------------------------------------------------------------
;	../src/tim2.c:48: void TIM2_clearFlag(void)
;	-----------------------------------------
;	 function TIM2_clearFlag
;	-----------------------------------------
_TIM2_clearFlag:
;	../src/tim2.c:50: TF2 = RESET;
;	assignBit
	clr	_TF2
;	../src/tim2.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_cmd'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim2.c:63: void TIM2_cmd(Action a)
;	-----------------------------------------
;	 function TIM2_cmd
;	-----------------------------------------
_TIM2_cmd:
;	../src/tim2.c:65: TR2 = a;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_TR2,c
;	../src/tim2.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_config'
;------------------------------------------------------------
;t2c                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../src/tim2.c:78: void TIM2_config(TIM2_configTypeDef *t2c)
;	-----------------------------------------
;	 function TIM2_config
;	-----------------------------------------
_TIM2_config:
;	../src/tim2.c:80: TIM2_setFunction(t2c->function);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_TIM2_setFunction
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/tim2.c:81: TIM2_setMode(t2c->mode);
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_TIM2_setMode
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/tim2.c:82: TIM2_setReloadValue(t2c->reloadValue);
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_TIM2_setReloadValue
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/tim2.c:83: TIM2_setValue(t2c->value);
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_TIM2_setValue
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/tim2.c:84: TIM2_INT_cmd(t2c->interruptState);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_TIM2_INT_cmd
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/tim2.c:85: TIM2_INT_setPriority(t2c->interruptPriority);
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
;	../src/tim2.c:86: }
	ljmp	_TIM2_INT_setPriority
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_getCaptureValue'
;------------------------------------------------------------
;	../src/tim2.c:98: uint16_t TIM2_getCaptureValue(void)
;	-----------------------------------------
;	 function TIM2_getCaptureValue
;	-----------------------------------------
_TIM2_getCaptureValue:
;	../src/tim2.c:100: return (uint16_t)((RCAP2H << 0x8) | RCAP2L);
	mov	r7,_RCAP2H
	mov	r6,#0x00
	mov	r4,_RCAP2L
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	dpl,r6
	mov	dph,r7
;	../src/tim2.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_getValue'
;------------------------------------------------------------
;	../src/tim2.c:113: uint16_t TIM2_getValue(void)
;	-----------------------------------------
;	 function TIM2_getValue
;	-----------------------------------------
_TIM2_getValue:
;	../src/tim2.c:115: return (uint16_t)((TH2 << 0x8) | TL2);
	mov	r7,_TH2
	mov	r6,#0x00
	mov	r4,_TL2
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	dpl,r6
	mov	dph,r7
;	../src/tim2.c:116: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_isExternalEvent'
;------------------------------------------------------------
;	../src/tim2.c:128: bool TIM2_isExternalEvent(void)
;	-----------------------------------------
;	 function TIM2_isExternalEvent
;	-----------------------------------------
_TIM2_isExternalEvent:
;	../src/tim2.c:130: return (bool)T2EX;
	mov	c,_T2EX
	clr	a
	rlc	a
	mov	dpl,a
;	../src/tim2.c:131: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_isOverflow'
;------------------------------------------------------------
;	../src/tim2.c:144: bool TIM2_isOverflow(void)
;	-----------------------------------------
;	 function TIM2_isOverflow
;	-----------------------------------------
_TIM2_isOverflow:
;	../src/tim2.c:146: return (bool)(TF2);
	mov	c,_TF2
	clr	a
	rlc	a
	mov	dpl,a
;	../src/tim2.c:147: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_setFunction'
;------------------------------------------------------------
;f                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim2.c:159: void TIM2_setFunction(TIM2_function f)
;	-----------------------------------------
;	 function TIM2_setFunction
;	-----------------------------------------
_TIM2_setFunction:
	mov	r7,dpl
;	../src/tim2.c:161: T2CON = (T2CON & 0XCF) | f;
	mov	a,_T2CON
	anl	a,#0xcf
	orl	a,r7
	mov	_T2CON,a
;	../src/tim2.c:162: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_setMode'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim2.c:174: void TIM2_setMode(TIM2_mode mode)
;	-----------------------------------------
;	 function TIM2_setMode
;	-----------------------------------------
_TIM2_setMode:
	mov	r7,dpl
;	../src/tim2.c:176: T2CON = (T2CON & 0xCE) | mode;
	mov	a,_T2CON
	anl	a,#0xce
	orl	a,r7
	mov	_T2CON,a
;	../src/tim2.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_setReloadValue'
;------------------------------------------------------------
;val                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	../src/tim2.c:189: void TIM2_setReloadValue(uint16_t val)
;	-----------------------------------------
;	 function TIM2_setReloadValue
;	-----------------------------------------
_TIM2_setReloadValue:
	mov	r6,dpl
	mov	r7,dph
;	../src/tim2.c:191: RCAP2H = (byte)(val >> 0x8);
	mov	_RCAP2H,r7
;	../src/tim2.c:192: RCAP2L = val;
	mov	_RCAP2L,r6
;	../src/tim2.c:193: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_setValue'
;------------------------------------------------------------
;val                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	../src/tim2.c:205: void TIM2_setValue(uint16_t val)
;	-----------------------------------------
;	 function TIM2_setValue
;	-----------------------------------------
_TIM2_setValue:
	mov	r6,dpl
	mov	r7,dph
;	../src/tim2.c:207: TH2 = (val >> 0x8);
	mov	_TH2,r7
;	../src/tim2.c:208: TL2 = val;
	mov	_TL2,r6
;	../src/tim2.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_BAUD_cmd'
;------------------------------------------------------------
;a                         Allocated with name '_TIM2_BAUD_cmd_PARM_2'
;t                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim2.c:223: void TIM2_BAUD_cmd(TIM2_baudClock t, Action a)
;	-----------------------------------------
;	 function TIM2_BAUD_cmd
;	-----------------------------------------
_TIM2_BAUD_cmd:
;	../src/tim2.c:225: if (t & TIM2_baudClock_receive)
	mov	a,dpl
	mov	r7,a
	jnb	acc.0,00102$
;	../src/tim2.c:227: RCLK = (FunctionalState)a;
;	assignBit
	mov	a,_TIM2_BAUD_cmd_PARM_2
	add	a,#0xff
	mov	_RCLK,c
00102$:
;	../src/tim2.c:229: if (t & TIM2_baudClock_transmit)
	mov	a,r7
	jnb	acc.1,00105$
;	../src/tim2.c:231: TCLK = (FunctionalState)a;
;	assignBit
	mov	a,_TIM2_BAUD_cmd_PARM_2
	add	a,#0xff
	mov	_TCLK,c
00105$:
;	../src/tim2.c:233: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_INT_cmd'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim2.c:245: void TIM2_INT_cmd(Action a)
;	-----------------------------------------
;	 function TIM2_INT_cmd
;	-----------------------------------------
_TIM2_INT_cmd:
;	../src/tim2.c:247: ET2 = a;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_ET2,c
;	../src/tim2.c:248: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_INT_setPriority'
;------------------------------------------------------------
;p                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim2.c:260: void TIM2_INT_setPriority(UTIL_interruptPriority p)
;	-----------------------------------------
;	 function TIM2_INT_setPriority
;	-----------------------------------------
_TIM2_INT_setPriority:
;	../src/tim2.c:262: PT2 = TESTB(p,1);
	mov	a,dpl
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00103$
00103$:
	cpl	c
	clr	a
	rlc	a
	mov	r7,a
	add	a,#0xff
	mov	_PT2,c
;	../src/tim2.c:263: CONFB(IPH, BIT_NUM_PT2H, TESTB(p, 1));
	mov	a,#0xdf
	anl	a,_IPH
	mov	r6,a
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0xe0
	orl	a,r6
	mov	_IPH,a
;	../src/tim2.c:264: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM2_T2EX_cmd'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim2.c:279: void TIM2_T2EX_cmd(Action a)
;	-----------------------------------------
;	 function TIM2_T2EX_cmd
;	-----------------------------------------
_TIM2_T2EX_cmd:
;	../src/tim2.c:281: EXEN2 = a;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_EXEN2,c
;	../src/tim2.c:282: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
