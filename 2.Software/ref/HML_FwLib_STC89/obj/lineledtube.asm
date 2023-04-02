;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module lineledtube
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_setBitValue
	.globl _GPIO_resetBitValue
	.globl _GPIO_configPortValue
	.globl _sleep
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
	.globl _DigDisplayNum_PARM_2
	.globl _DigDisplayNum
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
_DigDisplayNum_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'DigDisplayNum'
;------------------------------------------------------------
;setnum                    Allocated with name '_DigDisplayNum_PARM_2'
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	../src/lineledtube.c:16: void DigDisplayNum(uint8_t num,uint8_t setnum)
;	-----------------------------------------
;	 function DigDisplayNum
;	-----------------------------------------
_DigDisplayNum:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../src/lineledtube.c:20: switch(num)	 //位选，选择点亮的数码管，
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x07
	jnc	00116$
	ljmp	00109$
00116$:
	mov	a,r7
	add	a,#(00117$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00118$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00117$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00118$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	../src/lineledtube.c:22: case(0):
00101$:
;	../src/lineledtube.c:23: LSA(0);LSB(0);LSC(0); break;//显示第0位
	mov	_GPIO_resetBitValue_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	mov	_GPIO_resetBitValue_PARM_2,#0x08
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	mov	_GPIO_resetBitValue_PARM_2,#0x10
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	ljmp	00109$
;	../src/lineledtube.c:24: case(1):
00102$:
;	../src/lineledtube.c:25: LSA(1);LSB(0);LSC(0); break;//显示第1位
	mov	_GPIO_setBitValue_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
	mov	_GPIO_resetBitValue_PARM_2,#0x08
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	mov	_GPIO_resetBitValue_PARM_2,#0x10
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	ljmp	00109$
;	../src/lineledtube.c:26: case(2):
00103$:
;	../src/lineledtube.c:27: LSA(0);LSB(1);LSC(0); break;//显示第2位
	mov	_GPIO_resetBitValue_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	mov	_GPIO_setBitValue_PARM_2,#0x08
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
	mov	_GPIO_resetBitValue_PARM_2,#0x10
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	ljmp	00109$
;	../src/lineledtube.c:28: case(3):
00104$:
;	../src/lineledtube.c:29: LSA(1);LSB(1);LSC(0); break;//显示第3位
	mov	_GPIO_setBitValue_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
	mov	_GPIO_setBitValue_PARM_2,#0x08
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
	mov	_GPIO_resetBitValue_PARM_2,#0x10
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
;	../src/lineledtube.c:30: case(4):
	sjmp	00109$
00105$:
;	../src/lineledtube.c:31: LSA(0);LSB(0);LSC(1); break;//显示第4位
	mov	_GPIO_resetBitValue_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	mov	_GPIO_resetBitValue_PARM_2,#0x08
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	mov	_GPIO_setBitValue_PARM_2,#0x10
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
;	../src/lineledtube.c:32: case(5):
	sjmp	00109$
00106$:
;	../src/lineledtube.c:33: LSA(1);LSB(0);LSC(1); break;//显示第5位	
	mov	_GPIO_setBitValue_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
	mov	_GPIO_resetBitValue_PARM_2,#0x08
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	mov	_GPIO_setBitValue_PARM_2,#0x10
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
;	../src/lineledtube.c:34: case(6):
	sjmp	00109$
00107$:
;	../src/lineledtube.c:35: LSA(0);LSB(1);LSC(1); break;//显示第6位
	mov	_GPIO_resetBitValue_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_GPIO_resetBitValue
	mov	_GPIO_setBitValue_PARM_2,#0x08
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
	mov	_GPIO_setBitValue_PARM_2,#0x10
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
;	../src/lineledtube.c:36: case(7):
	sjmp	00109$
00108$:
;	../src/lineledtube.c:37: LSA(1);LSB(1);LSC(1); break;//显示第7位		
	mov	_GPIO_setBitValue_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
	mov	_GPIO_setBitValue_PARM_2,#0x08
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
	mov	_GPIO_setBitValue_PARM_2,#0x10
	mov	dpl,#0x02
	lcall	_GPIO_setBitValue
;	../src/lineledtube.c:38: }
00109$:
;	../src/lineledtube.c:41: LE(1);
	mov	_GPIO_setBitValue_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_GPIO_setBitValue
;	../src/lineledtube.c:43: GPIO_configPortValue(PERIPH_GPIO_0,smgduan[setnum]);
	mov	a,_DigDisplayNum_PARM_2
	mov	dptr,#_smgduan
	movc	a,@a+dptr
	mov	_GPIO_configPortValue_PARM_2,a
	mov	dpl,#0x00
	lcall	_GPIO_configPortValue
;	../src/lineledtube.c:45: sleep(2);
	mov	dptr,#0x0002
;	../src/lineledtube.c:47: }
	ljmp	_sleep
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
