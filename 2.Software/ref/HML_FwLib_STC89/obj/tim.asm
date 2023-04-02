;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module tim
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM_INT_setPriority_PARM_2
	.globl _TIM_INT_cmd_PARM_2
	.globl _TIM_setValue_PARM_2
	.globl _TIM_setMode_PARM_2
	.globl _TIM_setFunction_PARM_2
	.globl _TIM_cmd_PARM_2
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
	.globl _TIM_config_PARM_2
	.globl _TIM_calculateValue_PARM_2
	.globl _TIM_calculateValue
	.globl _TIM_cmd
	.globl _TIM_config
	.globl _TIM_getValue
	.globl _TIM_isOverflow
	.globl _TIM_setFunction
	.globl _TIM_setMode
	.globl _TIM_setValue
	.globl _TIM_INT_cmd
	.globl _TIM_INT_setPriority
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
_TIM_calculateValue_PARM_2:
	.ds 1
_TIM_calculateValue_maxTick_65536_30:
	.ds 2
_TIM_config_PARM_2:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_TIM_cmd_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_TIM_setFunction_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_TIM_setMode_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_TIM_setValue_PARM_2:
	.ds 2
	.area	OSEG    (OVR,DATA)
_TIM_INT_cmd_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_TIM_INT_setPriority_PARM_2:
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
;Allocation info for local variables in function 'TIM_calculateValue'
;------------------------------------------------------------
;mode                      Allocated with name '_TIM_calculateValue_PARM_2'
;time                      Allocated to registers r6 r7 
;maxTick                   Allocated with name '_TIM_calculateValue_maxTick_65536_30'
;------------------------------------------------------------
;	../src/tim.c:28: uint16_t TIM_calculateValue(uint16_t time, TIM_mode mode)
;	-----------------------------------------
;	 function TIM_calculateValue
;	-----------------------------------------
_TIM_calculateValue:
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
;	../src/tim.c:31: uint16_t maxTick = 0x0000;
	clr	a
	mov	_TIM_calculateValue_maxTick_65536_30,a
	mov	(_TIM_calculateValue_maxTick_65536_30 + 1),a
;	../src/tim.c:33: switch (mode)
	mov	a,_TIM_calculateValue_PARM_2
	add	a,#0xff - 0x03
	jc	00106$
	mov	a,_TIM_calculateValue_PARM_2
	mov	b,#0x03
	mul	ab
	mov	dptr,#00121$
	jmp	@a+dptr
00121$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
;	../src/tim.c:35: case TIM_mode_0: maxTick = 0x1FFF; break;
00101$:
	mov	_TIM_calculateValue_maxTick_65536_30,#0xff
	mov	(_TIM_calculateValue_maxTick_65536_30 + 1),#0x1f
;	../src/tim.c:36: case TIM_mode_1: maxTick = 0xFFFF; break;
	sjmp	00106$
00102$:
	mov	_TIM_calculateValue_maxTick_65536_30,#0xff
	mov	(_TIM_calculateValue_maxTick_65536_30 + 1),#0xff
;	../src/tim.c:37: case TIM_mode_2: maxTick = 0x00FF; break;
	sjmp	00106$
00103$:
	mov	_TIM_calculateValue_maxTick_65536_30,#0xff
	mov	(_TIM_calculateValue_maxTick_65536_30 + 1),#0x00
;	../src/tim.c:38: case TIM_mode_3: maxTick = 0x00FF; break;
	sjmp	00106$
00104$:
	mov	_TIM_calculateValue_maxTick_65536_30,#0xff
	mov	(_TIM_calculateValue_maxTick_65536_30 + 1),#0x00
;	../src/tim.c:40: }
00106$:
;	../src/tim.c:43: if ((time*(MCU_FRE_CLK/1000000)/MCU_PRESCALER) >= maxTick)
	mov	__mullong_PARM_2,r6
	mov	(__mullong_PARM_2 + 1),r7
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	mov	dptr,#(0x0c&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	__divulong_PARM_2,#0x0c
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	r0,_TIM_calculateValue_maxTick_65536_30
	mov	r1,(_TIM_calculateValue_maxTick_65536_30 + 1)
	mov	r4,#0x00
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	subb	a,r1
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00108$
;	../src/tim.c:45: return 0;
	mov	dptr,#0x0000
	ret
00108$:
;	../src/tim.c:49: return (maxTick + 1 - (time*(MCU_FRE_CLK/1000000)/MCU_PRESCALER));
	mov	r4,_TIM_calculateValue_maxTick_65536_30
	mov	r5,(_TIM_calculateValue_maxTick_65536_30 + 1)
	inc	r4
	cjne	r4,#0x00,00123$
	inc	r5
00123$:
	mov	a,r4
	clr	c
	subb	a,r2
	mov	dpl,a
	mov	a,r5
	subb	a,r3
	mov	dph,a
;	../src/tim.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM_cmd'
;------------------------------------------------------------
;a                         Allocated with name '_TIM_cmd_PARM_2'
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim.c:65: void TIM_cmd(PERIPH_TIM tim, Action a)
;	-----------------------------------------
;	 function TIM_cmd
;	-----------------------------------------
_TIM_cmd:
	mov	r7,dpl
;	../src/tim.c:67: switch (tim)
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	../src/tim.c:69: case PERIPH_TIM_0: TR0 = a; break;
	cjne	r7,#0x01,00105$
	sjmp	00102$
00101$:
;	assignBit
	mov	a,_TIM_cmd_PARM_2
	add	a,#0xff
	mov	_TR0,c
;	../src/tim.c:70: case PERIPH_TIM_1: TR1 = a; break;
	ret
00102$:
;	assignBit
	mov	a,_TIM_cmd_PARM_2
	add	a,#0xff
	mov	_TR1,c
;	../src/tim.c:72: }
00105$:
;	../src/tim.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM_config'
;------------------------------------------------------------
;tc                        Allocated with name '_TIM_config_PARM_2'
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim.c:86: void TIM_config(PERIPH_TIM tim, TIM_configTypeDef *tc)
;	-----------------------------------------
;	 function TIM_config
;	-----------------------------------------
_TIM_config:
	mov	r7,dpl
;	../src/tim.c:88: TIM_setFunction(tim, tc->function);
	mov	r4,_TIM_config_PARM_2
	mov	r5,(_TIM_config_PARM_2 + 1)
	mov	r6,(_TIM_config_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_TIM_setFunction_PARM_2,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_TIM_setFunction
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/tim.c:89: TIM_setMode(tim, tc->mode);
	mov	a,#0x03
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_TIM_setMode_PARM_2,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_TIM_setMode
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/tim.c:90: TIM_setValue(tim, tc->value);
	mov	a,#0x04
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_TIM_setValue_PARM_2,a
	inc	dptr
	lcall	__gptrget
	mov	(_TIM_setValue_PARM_2 + 1),a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_TIM_setValue
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/tim.c:91: TIM_INT_cmd(tim, tc->interruptState);
	mov	a,#0x01
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_TIM_INT_cmd_PARM_2,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_TIM_INT_cmd
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/tim.c:92: TIM_INT_setPriority(tim, tc->interruptPriority);
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_TIM_INT_setPriority_PARM_2,a
	mov	dpl,r7
;	../src/tim.c:93: }
	ljmp	_TIM_INT_setPriority
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM_getValue'
;------------------------------------------------------------
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim.c:106: uint16_t TIM_getValue(PERIPH_TIM tim)
;	-----------------------------------------
;	 function TIM_getValue
;	-----------------------------------------
_TIM_getValue:
	mov	r7,dpl
;	../src/tim.c:108: switch (tim)
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	../src/tim.c:110: case PERIPH_TIM_0: return ((TH0 << 0x08) | TL0);
	cjne	r7,#0x01,00103$
	sjmp	00102$
00101$:
	mov	r7,_TH0
	mov	r6,#0x00
	mov	r4,_TL0
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	dpl,r6
	mov	dph,r7
;	../src/tim.c:111: case PERIPH_TIM_1: return ((TH1 << 0x08) | TL1);
	ret
00102$:
	mov	r7,_TH1
	mov	r6,#0x00
	mov	r4,_TL1
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
	mov	dpl,r6
	mov	dph,r7
;	../src/tim.c:112: default: return 0x0000;
	ret
00103$:
	mov	dptr,#0x0000
;	../src/tim.c:113: }
;	../src/tim.c:114: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM_isOverflow'
;------------------------------------------------------------
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim.c:127: bool TIM_isOverflow(PERIPH_TIM tim)
;	-----------------------------------------
;	 function TIM_isOverflow
;	-----------------------------------------
_TIM_isOverflow:
	mov	r7,dpl
;	../src/tim.c:129: switch (tim)
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	../src/tim.c:131: case PERIPH_TIM_0: return (bool)TF0;
	cjne	r7,#0x01,00103$
	sjmp	00102$
00101$:
	mov	c,_TF0
	clr	a
	rlc	a
	mov	dpl,a
;	../src/tim.c:132: case PERIPH_TIM_1: return (bool)TF1;
	ret
00102$:
	mov	c,_TF1
	clr	a
	rlc	a
	mov	dpl,a
;	../src/tim.c:133: default: return false;
	ret
00103$:
	mov	dpl,#0x00
;	../src/tim.c:134: }
;	../src/tim.c:135: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM_setFunction'
;------------------------------------------------------------
;f                         Allocated with name '_TIM_setFunction_PARM_2'
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim.c:148: void TIM_setFunction(PERIPH_TIM tim, TIM_function f)
;	-----------------------------------------
;	 function TIM_setFunction
;	-----------------------------------------
_TIM_setFunction:
	mov	r7,dpl
;	../src/tim.c:150: switch (tim)
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	../src/tim.c:152: case PERIPH_TIM_0: CONFB(TMOD, BIT_NUM_T0_CT, f); break;
	cjne	r7,#0x01,00105$
	sjmp	00102$
00101$:
	mov	a,#0xfb
	anl	a,_TMOD
	mov	r7,a
	mov	a,_TIM_setFunction_PARM_2
	add	a,acc
	add	a,acc
	orl	a,r7
	mov	_TMOD,a
;	../src/tim.c:153: case PERIPH_TIM_1: CONFB(TMOD, BIT_NUM_T1_CT, f); break;
	ret
00102$:
	mov	a,#0xbf
	anl	a,_TMOD
	mov	r7,a
	mov	a,_TIM_setFunction_PARM_2
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r6,a
	orl	a,r7
	mov	_TMOD,a
;	../src/tim.c:155: }
00105$:
;	../src/tim.c:156: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM_setMode'
;------------------------------------------------------------
;mode                      Allocated with name '_TIM_setMode_PARM_2'
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim.c:169: void TIM_setMode(PERIPH_TIM tim, TIM_mode mode)
;	-----------------------------------------
;	 function TIM_setMode
;	-----------------------------------------
_TIM_setMode:
	mov	r7,dpl
;	../src/tim.c:171: switch (tim)
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	../src/tim.c:173: case PERIPH_TIM_0: TMOD = (TMOD & 0xFC) | mode; break;
	cjne	r7,#0x01,00105$
	sjmp	00102$
00101$:
	mov	a,_TMOD
	anl	a,#0xfc
	mov	r7,a
	mov	a,_TIM_setMode_PARM_2
	orl	a,r7
	mov	_TMOD,a
;	../src/tim.c:174: case PERIPH_TIM_1: TMOD = (TMOD & 0xCF) | (mode << 0x4); break;
	ret
00102$:
	mov	a,_TMOD
	anl	a,#0xcf
	mov	r7,a
	mov	a,_TIM_setMode_PARM_2
	swap	a
	anl	a,#0xf0
	mov	r6,a
	orl	a,r7
	mov	_TMOD,a
;	../src/tim.c:176: }
00105$:
;	../src/tim.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM_setValue'
;------------------------------------------------------------
;val                       Allocated with name '_TIM_setValue_PARM_2'
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim.c:190: void TIM_setValue(PERIPH_TIM tim, uint16_t val)
;	-----------------------------------------
;	 function TIM_setValue
;	-----------------------------------------
_TIM_setValue:
	mov	r7,dpl
;	../src/tim.c:192: switch (tim)
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	../src/tim.c:194: case PERIPH_TIM_0:
	cjne	r7,#0x01,00105$
	sjmp	00102$
00101$:
;	../src/tim.c:196: TH0 = (uint8_t)((val >> 0x8) & 0x00FF);
	mov	_TH0,(_TIM_setValue_PARM_2 + 1)
;	../src/tim.c:197: TL0 = (uint8_t)(val & 0x00FF);
	mov	_TL0,_TIM_setValue_PARM_2
;	../src/tim.c:198: } break;
;	../src/tim.c:199: case PERIPH_TIM_1:
	ret
00102$:
;	../src/tim.c:201: TH1 = (uint8_t)((val >> 0x8) & 0x00FF);
	mov	_TH1,(_TIM_setValue_PARM_2 + 1)
;	../src/tim.c:202: TL1 = (uint8_t)(val & 0x00FF);
	mov	_TL1,_TIM_setValue_PARM_2
;	../src/tim.c:205: }
00105$:
;	../src/tim.c:206: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM_INT_cmd'
;------------------------------------------------------------
;a                         Allocated with name '_TIM_INT_cmd_PARM_2'
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim.c:219: void TIM_INT_cmd(PERIPH_TIM tim, Action a)
;	-----------------------------------------
;	 function TIM_INT_cmd
;	-----------------------------------------
_TIM_INT_cmd:
	mov	r7,dpl
;	../src/tim.c:221: switch (tim)
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	../src/tim.c:223: case PERIPH_TIM_0: ET0 = a; break;
	cjne	r7,#0x01,00105$
	sjmp	00102$
00101$:
;	assignBit
	mov	a,_TIM_INT_cmd_PARM_2
	add	a,#0xff
	mov	_ET0,c
;	../src/tim.c:224: case PERIPH_TIM_1: ET1 = a; break;
	ret
00102$:
;	assignBit
	mov	a,_TIM_INT_cmd_PARM_2
	add	a,#0xff
	mov	_ET1,c
;	../src/tim.c:226: }
00105$:
;	../src/tim.c:227: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIM_INT_setPriority'
;------------------------------------------------------------
;p                         Allocated with name '_TIM_INT_setPriority_PARM_2'
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/tim.c:240: void TIM_INT_setPriority(PERIPH_TIM tim, UTIL_interruptPriority p)
;	-----------------------------------------
;	 function TIM_INT_setPriority
;	-----------------------------------------
_TIM_INT_setPriority:
	mov	r7,dpl
;	../src/tim.c:242: switch (tim)
	cjne	r7,#0x00,00115$
	sjmp	00101$
00115$:
;	../src/tim.c:244: case PERIPH_TIM_0:
	cjne	r7,#0x01,00105$
	sjmp	00102$
00101$:
;	../src/tim.c:246: PT0 = TESTB(p, 0);
	mov	a,_TIM_INT_setPriority_PARM_2
	anl	a,#0x01
	cjne	a,#0x01,00117$
00117$:
	cpl	c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_PT0,c
;	../src/tim.c:247: CONFB(IPH, BIT_NUM_PT0H, TESTB(p, 1));
	mov	a,#0xfd
	anl	a,_IPH
	mov	r7,a
	mov	a,_TIM_INT_setPriority_PARM_2
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00119$
00119$:
	clr	a
	rlc	a
	cjne	a,#0x01,00120$
00120$:
	clr	a
	rlc	a
	add	a,acc
	orl	a,r7
	mov	_IPH,a
;	../src/tim.c:248: } break;
;	../src/tim.c:249: case PERIPH_TIM_1:
	ret
00102$:
;	../src/tim.c:251: PT1 = TESTB(p, 0);
	mov	a,_TIM_INT_setPriority_PARM_2
	anl	a,#0x01
	cjne	a,#0x01,00121$
00121$:
	cpl	c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_PT1,c
;	../src/tim.c:252: CONFB(IPH, BIT_NUM_PT1H, TESTB(p, 1));
	mov	a,#0xf7
	anl	a,_IPH
	mov	r7,a
	mov	a,_TIM_INT_setPriority_PARM_2
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00123$
00123$:
	cpl	c
	clr	a
	rlc	a
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	orl	a,r7
	mov	_IPH,a
;	../src/tim.c:255: }
00105$:
;	../src/tim.c:256: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
