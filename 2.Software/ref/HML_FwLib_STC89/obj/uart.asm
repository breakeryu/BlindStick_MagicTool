;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_BAUD_cmd
	.globl _TIM2_config
	.globl _TIM2_cmd
	.globl _TIM_config
	.globl _TIM_cmd
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
	.globl _UART_getBaudGeneratorInitValue_PARM_2
	.globl _UART_cmd_multiBaudrate
	.globl _UART_cmd_receive
	.globl _UART_config
	.globl _UART_getBaudGeneratorInitValue
	.globl _UART_getByte
	.globl _UART_isReceived
	.globl _UART_isTransmitted
	.globl _UART_sendByte
	.globl _UART_sendHex
	.globl _UART_sendString
	.globl _UART_setMode
	.globl _UART_switchTim
	.globl _UART_INT_cmd
	.globl _UART_INT_setPriority
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
_UART_config_uc_65536_49:
	.ds 3
_UART_config_tc_65536_50:
	.ds 6
_UART_config_tc2_65536_50:
	.ds 8
_UART_getBaudGeneratorInitValue_PARM_2:
	.ds 1
_UART_getBaudGeneratorInitValue_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'UART_cmd_multiBaudrate'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/uart.c:26: void UART_cmd_multiBaudrate(Action a)
;	-----------------------------------------
;	 function UART_cmd_multiBaudrate
;	-----------------------------------------
_UART_cmd_multiBaudrate:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../src/uart.c:28: CONFB(PCON, BIT_NUM_SMOD, a);
	mov	a,#0x7f
	anl	a,_PCON
	mov	r6,a
	mov	a,r7
	rr	a
	anl	a,#0x80
	orl	a,r6
	mov	_PCON,a
;	../src/uart.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_cmd_receive'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/uart.c:41: void UART_cmd_receive(Action a)
;	-----------------------------------------
;	 function UART_cmd_receive
;	-----------------------------------------
_UART_cmd_receive:
;	../src/uart.c:43: REN = a;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_REN,c
;	../src/uart.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_config'
;------------------------------------------------------------
;uc                        Allocated with name '_UART_config_uc_65536_49'
;tc                        Allocated with name '_UART_config_tc_65536_50'
;tc2                       Allocated with name '_UART_config_tc2_65536_50'
;------------------------------------------------------------
;	../src/uart.c:56: void UART_config(UART_configTypeDef *uc)
;	-----------------------------------------
;	 function UART_config
;	-----------------------------------------
_UART_config:
	mov	_UART_config_uc_65536_49,dpl
	mov	(_UART_config_uc_65536_49 + 1),dph
	mov	(_UART_config_uc_65536_49 + 2),b
;	../src/uart.c:61: UART_INT_cmd(uc->interruptState);
	mov	a,#0x05
	add	a,_UART_config_uc_65536_49
	mov	r2,a
	clr	a
	addc	a,(_UART_config_uc_65536_49 + 1)
	mov	r3,a
	mov	r4,(_UART_config_uc_65536_49 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	lcall	_UART_INT_cmd
;	../src/uart.c:62: UART_INT_setPriority(uc->interruptPriority);
	mov	a,#0x06
	add	a,_UART_config_uc_65536_49
	mov	r2,a
	clr	a
	addc	a,(_UART_config_uc_65536_49 + 1)
	mov	r3,a
	mov	r4,(_UART_config_uc_65536_49 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	lcall	_UART_INT_setPriority
;	../src/uart.c:63: UART_cmd_multiBaudrate(uc->multiBaudrate);
	mov	a,#0x08
	add	a,_UART_config_uc_65536_49
	mov	r2,a
	clr	a
	addc	a,(_UART_config_uc_65536_49 + 1)
	mov	r3,a
	mov	r4,(_UART_config_uc_65536_49 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	lcall	_UART_cmd_multiBaudrate
;	../src/uart.c:64: UART_setMode(uc->mode);
	mov	a,#0x07
	add	a,_UART_config_uc_65536_49
	mov	r2,a
	clr	a
	addc	a,(_UART_config_uc_65536_49 + 1)
	mov	r3,a
	mov	r4,(_UART_config_uc_65536_49 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	lcall	_UART_setMode
;	../src/uart.c:65: UART_cmd_receive(uc->receiveState);
	mov	a,#0x09
	add	a,_UART_config_uc_65536_49
	mov	r2,a
	clr	a
	addc	a,(_UART_config_uc_65536_49 + 1)
	mov	r3,a
	mov	r4,(_UART_config_uc_65536_49 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	lcall	_UART_cmd_receive
;	../src/uart.c:66: UART_switchTim(uc->baudGenerator);
	mov	a,#0x04
	add	a,_UART_config_uc_65536_49
	mov	r2,a
	clr	a
	addc	a,(_UART_config_uc_65536_49 + 1)
	mov	r3,a
	mov	r4,(_UART_config_uc_65536_49 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	push	ar3
	push	ar2
	lcall	_UART_switchTim
	pop	ar2
	pop	ar3
	pop	ar4
;	../src/uart.c:68: switch (uc->baudGenerator)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x01,00115$
	sjmp	00101$
00115$:
	cjne	r7,#0x02,00116$
	sjmp	00102$
00116$:
	ret
;	../src/uart.c:70: case PERIPH_TIM_1:
00101$:
;	../src/uart.c:72: tc.function          = TIM_function_tim;
	mov	_UART_config_tc_65536_50,#0x00
;	../src/uart.c:73: tc.interruptState    = DISABLE;
	mov	(_UART_config_tc_65536_50 + 0x0001),#0x00
;	../src/uart.c:74: tc.interruptPriority = DISABLE;
	mov	(_UART_config_tc_65536_50 + 0x0002),#0x00
;	../src/uart.c:75: tc.mode              = TIM_mode_2;
	mov	(_UART_config_tc_65536_50 + 0x0003),#0x02
;	../src/uart.c:76: tc.value             = UART_getBaudGeneratorInitValue(uc->baudrate, PERIPH_TIM_1);
	mov	dpl,_UART_config_uc_65536_49
	mov	dph,(_UART_config_uc_65536_49 + 1)
	mov	b,(_UART_config_uc_65536_49 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	_UART_getBaudGeneratorInitValue_PARM_2,#0x01
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART_getBaudGeneratorInitValue
	mov	a,dpl
	mov	b,dph
	mov	((_UART_config_tc_65536_50 + 0x0004) + 0),a
	mov	((_UART_config_tc_65536_50 + 0x0004) + 1),b
;	../src/uart.c:77: TIM2_BAUD_cmd(TIM2_baudClock_receive | TIM2_baudClock_transmit, DISABLE);
	mov	_TIM2_BAUD_cmd_PARM_2,#0x00
	mov	dpl,#0x03
	lcall	_TIM2_BAUD_cmd
;	../src/uart.c:78: TIM_config(PERIPH_TIM_1, &tc);
	mov	_TIM_config_PARM_2,#_UART_config_tc_65536_50
	mov	(_TIM_config_PARM_2 + 1),#0x00
	mov	(_TIM_config_PARM_2 + 2),#0x40
	mov	dpl,#0x01
	lcall	_TIM_config
;	../src/uart.c:79: TIM_cmd(PERIPH_TIM_1, ENABLE); 
	mov	_TIM_cmd_PARM_2,#0x01
	mov	dpl,#0x01
;	../src/uart.c:80: } break; 
;	../src/uart.c:81: case PERIPH_TIM_2:
	ljmp	_TIM_cmd
00102$:
;	../src/uart.c:83: tc2.function          = TIM2_function_tim;
	mov	_UART_config_tc2_65536_50,#0x00
;	../src/uart.c:84: tc2.interruptState    = DISABLE;
	mov	(_UART_config_tc2_65536_50 + 0x0001),#0x00
;	../src/uart.c:85: tc2.interruptPriority = DISABLE;
	mov	(_UART_config_tc2_65536_50 + 0x0002),#0x00
;	../src/uart.c:86: tc2.mode              = TIM2_mode_2;
	mov	(_UART_config_tc2_65536_50 + 0x0003),#0x30
;	../src/uart.c:87: tc2.value             = 0x00;
	clr	a
	mov	((_UART_config_tc2_65536_50 + 0x0004) + 0),a
	mov	((_UART_config_tc2_65536_50 + 0x0004) + 1),a
;	../src/uart.c:88: tc2.reloadValue       = UART_getBaudGeneratorInitValue(uc->baudrate, PERIPH_TIM_2);
	mov	dpl,_UART_config_uc_65536_49
	mov	dph,(_UART_config_uc_65536_49 + 1)
	mov	b,(_UART_config_uc_65536_49 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	_UART_getBaudGeneratorInitValue_PARM_2,#0x02
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UART_getBaudGeneratorInitValue
	mov	a,dpl
	mov	b,dph
	mov	((_UART_config_tc2_65536_50 + 0x0006) + 0),a
	mov	((_UART_config_tc2_65536_50 + 0x0006) + 1),b
;	../src/uart.c:89: TIM2_BAUD_cmd(TIM2_baudClock_receive | TIM2_baudClock_transmit, ENABLE);
	mov	_TIM2_BAUD_cmd_PARM_2,#0x01
	mov	dpl,#0x03
	lcall	_TIM2_BAUD_cmd
;	../src/uart.c:90: TIM2_config(&tc2);
	mov	dptr,#_UART_config_tc2_65536_50
	mov	b,#0x40
	lcall	_TIM2_config
;	../src/uart.c:91: TIM2_cmd(ENABLE);
	mov	dpl,#0x01
;	../src/uart.c:94: }
;	../src/uart.c:95: }
	ljmp	_TIM2_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_getBaudGeneratorInitValue'
;------------------------------------------------------------
;tim                       Allocated with name '_UART_getBaudGeneratorInitValue_PARM_2'
;baud                      Allocated to registers r4 r5 r6 r7 
;tmp                       Allocated to registers r3 
;sloc0                     Allocated with name '_UART_getBaudGeneratorInitValue_sloc0_1_0'
;------------------------------------------------------------
;	../src/uart.c:109: uint16_t UART_getBaudGeneratorInitValue(uint32_t baud, PERIPH_TIM tim)
;	-----------------------------------------
;	 function UART_getBaudGeneratorInitValue
;	-----------------------------------------
_UART_getBaudGeneratorInitValue:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	../src/uart.c:111: uint8_t tmp = 0x00;
	mov	r3,#0x00
;	../src/uart.c:114: switch (tim)
	mov	a,#0x01
	cjne	a,_UART_getBaudGeneratorInitValue_PARM_2,00136$
	sjmp	00101$
00136$:
	mov	a,#0x02
	cjne	a,_UART_getBaudGeneratorInitValue_PARM_2,00137$
	ljmp	00111$
00137$:
	ljmp	00113$
;	../src/uart.c:116: case PERIPH_TIM_1:
00101$:
;	../src/uart.c:118: if (GET_BIT(PCON, SMOD))     /* multi baud rate mode */
	mov	a,_PCON
	jnb	acc.7,00109$
;	../src/uart.c:120: if (baud > MCU_FRE_CLK/MCU_PRESCALER/16)
	clr	c
	mov	a,#0x24
	subb	a,r4
	mov	a,#0xf4
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00103$
;	../src/uart.c:122: return 0x0000;     /* baud rate over max value */
	mov	dptr,#0x0000
	ret
00103$:
;	../src/uart.c:126: tmp = (256 - MCU_FRE_CLK/16/MCU_PRESCALER/baud);  
	mov	__divulong_PARM_2,r4
	mov	(__divulong_PARM_2 + 1),r5
	mov	(__divulong_PARM_2 + 2),r6
	mov	(__divulong_PARM_2 + 3),r7
	mov	dptr,#0xf424
	clr	a
	mov	b,a
	lcall	__divulong
	mov	_UART_getBaudGeneratorInitValue_sloc0_1_0,dpl
	mov	(_UART_getBaudGeneratorInitValue_sloc0_1_0 + 1),dph
	mov	(_UART_getBaudGeneratorInitValue_sloc0_1_0 + 2),b
	mov	(_UART_getBaudGeneratorInitValue_sloc0_1_0 + 3),a
	mov	r2,_UART_getBaudGeneratorInitValue_sloc0_1_0
	clr	c
	clr	a
	subb	a,r2
	mov	r3,a
	sjmp	00113$
00109$:
;	../src/uart.c:131: if (baud > MCU_FRE_CLK/MCU_PRESCALER/32)
	clr	c
	mov	a,#0x12
	subb	a,r4
	mov	a,#0x7a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00106$
;	../src/uart.c:133: return 0x0000;
	mov	dptr,#0x0000
	ret
00106$:
;	../src/uart.c:137: tmp = (256 - MCU_FRE_CLK/32/MCU_PRESCALER/baud);
	mov	__divulong_PARM_2,r4
	mov	(__divulong_PARM_2 + 1),r5
	mov	(__divulong_PARM_2 + 2),r6
	mov	(__divulong_PARM_2 + 3),r7
	mov	dptr,#0x7a12
	clr	a
	mov	b,a
	lcall	__divulong
	mov	_UART_getBaudGeneratorInitValue_sloc0_1_0,dpl
	mov	(_UART_getBaudGeneratorInitValue_sloc0_1_0 + 1),dph
	mov	(_UART_getBaudGeneratorInitValue_sloc0_1_0 + 2),b
	mov	(_UART_getBaudGeneratorInitValue_sloc0_1_0 + 3),a
	mov	r2,_UART_getBaudGeneratorInitValue_sloc0_1_0
	clr	c
	clr	a
	subb	a,r2
	mov	r3,a
;	../src/uart.c:140: } break;
;	../src/uart.c:141: case PERIPH_TIM_2:
	sjmp	00113$
00111$:
;	../src/uart.c:146: return ((65536 - (MCU_FRE_CLK/32/baud)));
	mov	__divulong_PARM_2,r4
	mov	(__divulong_PARM_2 + 1),r5
	mov	(__divulong_PARM_2 + 2),r6
	mov	(__divulong_PARM_2 + 3),r7
	mov	dptr,#0xb8d8
	mov	b,#0x05
	clr	a
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	clr	c
	clr	a
	subb	a,r4
	mov	dpl,a
	clr	a
	subb	a,r5
	mov	dph,a
;	../src/uart.c:152: }
	ret
00113$:
;	../src/uart.c:154: return (tmp << 0x8) | tmp;
	mov	r7,#0x00
	mov	ar6,r3
	clr	a
	orl	ar3,a
	mov	a,r6
	orl	ar7,a
	mov	dpl,r3
	mov	dph,r7
;	../src/uart.c:155: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_getByte'
;------------------------------------------------------------
;	../src/uart.c:167: byte UART_getByte(void)
;	-----------------------------------------
;	 function UART_getByte
;	-----------------------------------------
_UART_getByte:
;	../src/uart.c:169: return SBUF;
	mov	dpl,_SBUF
;	../src/uart.c:170: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_isReceived'
;------------------------------------------------------------
;	../src/uart.c:182: FunctionalState UART_isReceived(void)
;	-----------------------------------------
;	 function UART_isReceived
;	-----------------------------------------
_UART_isReceived:
;	../src/uart.c:184: return (FunctionalState)RI;
	mov	c,_RI
	clr	a
	rlc	a
	mov	dpl,a
;	../src/uart.c:185: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_isTransmitted'
;------------------------------------------------------------
;	../src/uart.c:197: FunctionalState UART_isTransmitted(void)
;	-----------------------------------------
;	 function UART_isTransmitted
;	-----------------------------------------
_UART_isTransmitted:
;	../src/uart.c:199: return (FunctionalState)TI;
	mov	c,_TI
	clr	a
	rlc	a
	mov	dpl,a
;	../src/uart.c:200: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_sendByte'
;------------------------------------------------------------
;dat                       Allocated to registers 
;------------------------------------------------------------
;	../src/uart.c:212: void UART_sendByte(byte dat)
;	-----------------------------------------
;	 function UART_sendByte
;	-----------------------------------------
_UART_sendByte:
	mov	_SBUF,dpl
;	../src/uart.c:215: while (!TI);
00101$:
;	../src/uart.c:216: TI = RESET;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	../src/uart.c:217: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_sendHex'
;------------------------------------------------------------
;hex                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/uart.c:229: void UART_sendHex(uint8_t hex)
;	-----------------------------------------
;	 function UART_sendHex
;	-----------------------------------------
_UART_sendHex:
;	../src/uart.c:231: UART_sendByte(hexTable[hex >> 0x4]);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	dptr,#_hexTable
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_UART_sendByte
	pop	ar7
;	../src/uart.c:232: UART_sendByte(hexTable[hex & 0xF]);
	anl	ar7,#0x0f
	mov	r6,#0x00
	mov	a,r7
	add	a,#_hexTable
	mov	dpl,a
	mov	a,r6
	addc	a,#(_hexTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
;	../src/uart.c:233: }
	ljmp	_UART_sendByte
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	../src/uart.c:245: void UART_sendString(char *str)
;	-----------------------------------------
;	 function UART_sendString
;	-----------------------------------------
_UART_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../src/uart.c:247: while (*str != '\0')
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00107$
;	../src/uart.c:249: SBUF = *str;
	mov	_SBUF,r4
;	../src/uart.c:250: while (!TI);
00101$:
;	../src/uart.c:251: TI = RESET;          /* reset flag */
;	assignBit
	jbc	_TI,00127$
	sjmp	00101$
00127$:
;	../src/uart.c:252: str++;
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00107$:
;	../src/uart.c:254: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_setMode'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	../src/uart.c:266: void UART_setMode(UART_mode mode)
;	-----------------------------------------
;	 function UART_setMode
;	-----------------------------------------
_UART_setMode:
	mov	r7,dpl
;	../src/uart.c:268: SCON = (SCON & 0x3F) | ((uint8_t)mode << 0x6);
	mov	a,_SCON
	anl	a,#0x3f
	mov	r6,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r6
	mov	_SCON,a
;	../src/uart.c:269: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_switchTim'
;------------------------------------------------------------
;tim                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/uart.c:281: void UART_switchTim(PERIPH_TIM tim)
;	-----------------------------------------
;	 function UART_switchTim
;	-----------------------------------------
_UART_switchTim:
	mov	r7,dpl
;	../src/uart.c:283: if (tim == PERIPH_TIM_1)
	cjne	r7,#0x01,00104$
;	../src/uart.c:285: T2CON = T2CON & 0xCF;
	anl	_T2CON,#0xcf
	ret
00104$:
;	../src/uart.c:287: else if (tim == PERIPH_TIM_2)
	cjne	r7,#0x02,00106$
;	../src/uart.c:289: T2CON = (T2CON & 0xCF) | 0x30;
	mov	a,_T2CON
	anl	a,#0xcf
	orl	a,#0x30
	mov	_T2CON,a
00106$:
;	../src/uart.c:291: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_INT_cmd'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/uart.c:303: void UART_INT_cmd(Action a)
;	-----------------------------------------
;	 function UART_INT_cmd
;	-----------------------------------------
_UART_INT_cmd:
;	../src/uart.c:305: ES = a;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_ES,c
;	../src/uart.c:306: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_INT_setPriority'
;------------------------------------------------------------
;p                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/uart.c:318: void UART_INT_setPriority(UTIL_interruptPriority p)
;	-----------------------------------------
;	 function UART_INT_setPriority
;	-----------------------------------------
_UART_INT_setPriority:
;	../src/uart.c:320: PS = TESTB(p, 0);
	mov	a,dpl
	mov	r7,a
	anl	a,#0x01
	cjne	a,#0x01,00103$
00103$:
	cpl	c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_PS,c
;	../src/uart.c:321: CONFB(IPH, BIT_NUM_PSH, TESTB(p, 1));
	mov	a,#0xef
	anl	a,_IPH
	mov	r6,a
	mov	a,r7
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00105$
00105$:
	cpl	c
	clr	a
	rlc	a
	swap	a
	anl	a,#0xf0
	orl	a,r6
	mov	_IPH,a
;	../src/uart.c:322: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_hexTable:
	.db #0x30	;  48	'0'
	.db #0x31	;  49	'1'
	.db #0x32	;  50	'2'
	.db #0x33	;  51	'3'
	.db #0x34	;  52	'4'
	.db #0x35	;  53	'5'
	.db #0x36	;  54	'6'
	.db #0x37	;  55	'7'
	.db #0x38	;  56	'8'
	.db #0x39	;  57	'9'
	.db #0x41	;  65	'A'
	.db #0x42	;  66	'B'
	.db #0x43	;  67	'C'
	.db #0x44	;  68	'D'
	.db #0x45	;  69	'E'
	.db #0x46	;  70	'F'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
