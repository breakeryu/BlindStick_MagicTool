;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module test
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _siexit_isr
	.globl _tim0_isr
	.globl _main
	.globl _sys_init
	.globl _lcd_printf
	.globl _lcd_init
	.globl _UART_sendByte
	.globl _UART_isReceived
	.globl _UART_getByte
	.globl _UART_config
	.globl _TIM_setValue
	.globl _TIM_config
	.globl _TIM_cmd
	.globl _TIM_calculateValue
	.globl _GPIO_toggleBitValue
	.globl _enableAllInterrupts
	.globl _disableAllInterrupts
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
	.globl _putchar
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_sys_init_uc_65537_101:
	.ds 10
_sys_init_tc_65538_102:
	.ds 6
_main_str_65537_105:
	.ds 12
_tim0_isr_i_65536_108:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_tim0_isr
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_siexit_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'tim0_isr'
;------------------------------------------------------------
;i                         Allocated with name '_tim0_isr_i_65536_108'
;------------------------------------------------------------
;	test.c:109: static uint8_t i = 0;
	mov	_tim0_isr_i_65536_108,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sys_init'
;------------------------------------------------------------
;uc                        Allocated with name '_sys_init_uc_65537_101'
;tc                        Allocated with name '_sys_init_tc_65538_102'
;------------------------------------------------------------
;	test.c:33: void sys_init(void)
;	-----------------------------------------
;	 function sys_init
;	-----------------------------------------
_sys_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	test.c:35: disableAllInterrupts();
	lcall	_disableAllInterrupts
;	test.c:39: uc.baudrate          = 14400;
	mov	(_sys_init_uc_65537_101 + 0),#0x40
	mov	(_sys_init_uc_65537_101 + 1),#0x38
	clr	a
	mov	(_sys_init_uc_65537_101 + 2),a
	mov	(_sys_init_uc_65537_101 + 3),a
;	test.c:40: uc.baudGenerator     = PERIPH_TIM_2;
	mov	(_sys_init_uc_65537_101 + 0x0004),#0x02
;	test.c:41: uc.interruptState    = ENABLE;
	mov	(_sys_init_uc_65537_101 + 0x0005),#0x01
;	test.c:42: uc.interruptPriority = UTIL_interruptPriority_3;
	mov	(_sys_init_uc_65537_101 + 0x0006),#0x03
;	test.c:43: uc.mode              = UART_mode_1;
	mov	(_sys_init_uc_65537_101 + 0x0007),#0x01
;	test.c:44: uc.multiBaudrate     = DISABLE;
;	1-genFromRTrack replaced	mov	(_sys_init_uc_65537_101 + 0x0008),#0x00
	mov	(_sys_init_uc_65537_101 + 0x0008),a
;	test.c:45: uc.receiveState      = ENABLE;
	mov	(_sys_init_uc_65537_101 + 0x0009),#0x01
;	test.c:47: UART_config(&uc);
	mov	dptr,#_sys_init_uc_65537_101
	mov	b,#0x40
	lcall	_UART_config
;	test.c:51: tc.function          = TIM_function_tim;
	mov	_sys_init_tc_65538_102,#0x00
;	test.c:52: tc.interruptState    = ENABLE;
	mov	(_sys_init_tc_65538_102 + 0x0001),#0x01
;	test.c:53: tc.interruptPriority = UTIL_interruptPriority_1;
	mov	(_sys_init_tc_65538_102 + 0x0002),#0x01
;	test.c:54: tc.mode              = TIM_mode_1;
	mov	(_sys_init_tc_65538_102 + 0x0003),#0x01
;	test.c:55: tc.value             = TIM_calculateValue(50000, TIM_mode_1);//todo该定时器计算value是会溢出，是有大问题的
	mov	_TIM_calculateValue_PARM_2,#0x01
	mov	dptr,#0xc350
	lcall	_TIM_calculateValue
	mov	a,dpl
	mov	b,dph
	mov	((_sys_init_tc_65538_102 + 0x0004) + 0),a
	mov	((_sys_init_tc_65538_102 + 0x0004) + 1),b
;	test.c:56: TIM_config(PERIPH_TIM_0,&tc);
	mov	_TIM_config_PARM_2,#_sys_init_tc_65538_102
	mov	(_TIM_config_PARM_2 + 1),#0x00
	mov	(_TIM_config_PARM_2 + 2),#0x40
	mov	dpl,#0x00
	lcall	_TIM_config
;	test.c:57: TIM_cmd(PERIPH_TIM_0, ENABLE);
	mov	_TIM_cmd_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_TIM_cmd
;	test.c:59: enableAllInterrupts();
;	test.c:62: }
	ljmp	_enableAllInterrupts
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;str                       Allocated with name '_main_str_65537_105'
;------------------------------------------------------------
;	test.c:75: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	test.c:77: sys_init();
	lcall	_sys_init
;	test.c:81: uint8_t str[]="1234567890!";//TODO 不允许回车换行，每行显示自己行的提示符
	mov	_main_str_65537_105,#0x31
	mov	(_main_str_65537_105 + 0x0001),#0x32
	mov	(_main_str_65537_105 + 0x0002),#0x33
	mov	(_main_str_65537_105 + 0x0003),#0x34
	mov	(_main_str_65537_105 + 0x0004),#0x35
	mov	(_main_str_65537_105 + 0x0005),#0x36
	mov	(_main_str_65537_105 + 0x0006),#0x37
	mov	(_main_str_65537_105 + 0x0007),#0x38
	mov	(_main_str_65537_105 + 0x0008),#0x39
	mov	(_main_str_65537_105 + 0x0009),#0x30
	mov	(_main_str_65537_105 + 0x000a),#0x21
	mov	(_main_str_65537_105 + 0x000b),#0x00
;	test.c:82: lcd_init();	                            //init lcd1602
	lcall	_lcd_init
;	test.c:83: lcd_printf(0,0,str);
	mov	_lcd_printf_PARM_3,#_main_str_65537_105
	mov	(_lcd_printf_PARM_3 + 1),#0x00
	mov	(_lcd_printf_PARM_3 + 2),#0x40
	mov	_lcd_printf_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_lcd_printf
;	test.c:84: lcd_printf(0,1,str);
	mov	_lcd_printf_PARM_3,#_main_str_65537_105
	mov	(_lcd_printf_PARM_3 + 1),#0x00
	mov	(_lcd_printf_PARM_3 + 2),#0x40
	mov	_lcd_printf_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_lcd_printf
;	test.c:86: while(true){
00102$:
;	test.c:89: disableAllInterrupts();     
	lcall	_disableAllInterrupts
;	test.c:91: enableAllInterrupts();
	lcall	_enableAllInterrupts
;	test.c:95: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'tim0_isr'
;------------------------------------------------------------
;i                         Allocated with name '_tim0_isr_i_65536_108'
;------------------------------------------------------------
;	test.c:107: void tim0_isr(void) __interrupt TF0_VECTOR
;	-----------------------------------------
;	 function tim0_isr
;	-----------------------------------------
_tim0_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	test.c:111: TIM_setValue(PERIPH_TIM_0,TIM_calculateValue(50000, TIM_mode_1));
	mov	_TIM_calculateValue_PARM_2,#0x01
	mov	dptr,#0xc350
	lcall	_TIM_calculateValue
	mov	_TIM_setValue_PARM_2,dpl
	mov	(_TIM_setValue_PARM_2 + 1),dph
	mov	dpl,#0x00
	lcall	_TIM_setValue
;	test.c:115: i++;
	inc	_tim0_isr_i_65536_108
;	test.c:116: if (i == 10)
	mov	a,#0x0a
	cjne	a,_tim0_isr_i_65536_108,00103$
;	test.c:118: GPIO_toggleBitValue(PERIPH_GPIO_2, PERIPH_GPIO_PIN_2);
	mov	_GPIO_toggleBitValue_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_GPIO_toggleBitValue
;	test.c:119: i = 0;
	mov	_tim0_isr_i_65536_108,#0x00
00103$:
;	test.c:123: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'siexit_isr'
;------------------------------------------------------------
;RDATA                     Allocated to registers 
;------------------------------------------------------------
;	test.c:127: void siexit_isr(void) __interrupt SI0_VECTOR
;	-----------------------------------------
;	 function siexit_isr
;	-----------------------------------------
_siexit_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	test.c:135: if (UART_isReceived())
	lcall	_UART_isReceived
	mov	a,dpl
	jz	00103$
;	test.c:138: GPIO_toggleBitValue(PERIPH_GPIO_2, PERIPH_GPIO_PIN_1);
	mov	_GPIO_toggleBitValue_PARM_2,#0x02
	mov	dpl,#0x02
	lcall	_GPIO_toggleBitValue
;	test.c:139: uint8_t RDATA = UART_getByte();
	lcall	_UART_getByte
;	test.c:140: RI = 0;
;	assignBit
	clr	_RI
00103$:
;	test.c:145: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	test.c:148: int putchar(int c){
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	test.c:150: UART_sendByte((uint8_t)c);
	lcall	_UART_sendByte
;	test.c:151: return 0;
	mov	dptr,#0x0000
;	test.c:153: }
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
_smgduan:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
