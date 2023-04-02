;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module isp
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _ISP_writeByte_PARM_2
	.globl _ISP_cmd
	.globl _ISP_config
	.globl _ISP_eraseSector
	.globl _ISP_idle
	.globl _ISP_readByte
	.globl _ISP_setAddress
	.globl _ISP_setCommand
	.globl _ISP_trig
	.globl _ISP_writeByte
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
_ISP_writeByte_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'ISP_cmd'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	../src/isp.c:27: void ISP_cmd(Action a)
;	-----------------------------------------
;	 function ISP_cmd
;	-----------------------------------------
_ISP_cmd:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../src/isp.c:29: CONFB(ISP_CONTR, BIT_NUM_ISPEN, a);
	mov	a,#0x7f
	anl	a,_ISP_CONTR
	mov	r6,a
	mov	a,r7
	rr	a
	anl	a,#0x80
	orl	a,r6
	mov	_ISP_CONTR,a
;	../src/isp.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISP_config'
;------------------------------------------------------------
;	../src/isp.c:42: void ISP_config(void)
;	-----------------------------------------
;	 function ISP_config
;	-----------------------------------------
_ISP_config:
;	../src/isp.c:44: ISP_CONTR = (ISP_CONTR & 0xF8) | ISP_WAITTIME;
	mov	a,_ISP_CONTR
	anl	a,#0xf8
	orl	a,#0x01
	mov	_ISP_CONTR,a
;	../src/isp.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISP_eraseSector'
;------------------------------------------------------------
;addr                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../src/isp.c:58: bool ISP_eraseSector(uint16_t addr)
;	-----------------------------------------
;	 function ISP_eraseSector
;	-----------------------------------------
_ISP_eraseSector:
	mov	r6,dpl
	mov	r7,dph
;	../src/isp.c:61: if ((addr < ISP_ADDR_START) || (addr > ISP_ADDR_END))
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x100 - 0x20
	add	a,r5
	jnc	00101$
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x2f
	subb	a,r5
	jnc	00102$
00101$:
;	../src/isp.c:63: return false;
	mov	dpl,#0x00
	ret
00102$:
;	../src/isp.c:66: ISP_setAddress(addr);
	mov	dpl,r6
	mov	dph,r7
	lcall	_ISP_setAddress
;	../src/isp.c:67: ISP_setCommand(ISP_command_erase);
	mov	dpl,#0x03
	lcall	_ISP_setCommand
;	../src/isp.c:68: ISP_trig();
	lcall	_ISP_trig
;	../src/isp.c:70: return true;
	mov	dpl,#0x01
;	../src/isp.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISP_idle'
;------------------------------------------------------------
;	../src/isp.c:83: void ISP_idle(void)
;	-----------------------------------------
;	 function ISP_idle
;	-----------------------------------------
_ISP_idle:
;	../src/isp.c:85: ISP_cmd(DISABLE);
	mov	dpl,#0x00
	lcall	_ISP_cmd
;	../src/isp.c:86: ISP_setAddress(0x0000);
	mov	dptr,#0x0000
	lcall	_ISP_setAddress
;	../src/isp.c:87: ISP_setCommand(ISP_command_idle);
	mov	dpl,#0x00
	lcall	_ISP_setCommand
;	../src/isp.c:88: ISP_DATA = 0xFF;
	mov	_ISP_DATA,#0xff
;	../src/isp.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISP_readByte'
;------------------------------------------------------------
;addr                      Allocated to registers 
;dat                       Allocated to registers 
;------------------------------------------------------------
;	../src/isp.c:101: byte ISP_readByte(uint16_t addr)
;	-----------------------------------------
;	 function ISP_readByte
;	-----------------------------------------
_ISP_readByte:
;	../src/isp.c:105: ISP_setAddress(addr);
	lcall	_ISP_setAddress
;	../src/isp.c:106: ISP_setCommand(ISP_command_read);
	mov	dpl,#0x01
	lcall	_ISP_setCommand
;	../src/isp.c:107: ISP_trig();
	lcall	_ISP_trig
;	../src/isp.c:108: dat = ISP_DATA;
	mov	dpl,_ISP_DATA
;	../src/isp.c:110: return dat;
;	../src/isp.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISP_setAddress'
;------------------------------------------------------------
;addr                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../src/isp.c:123: void ISP_setAddress(uint16_t addr)
;	-----------------------------------------
;	 function ISP_setAddress
;	-----------------------------------------
_ISP_setAddress:
	mov	r6,dpl
	mov	r7,dph
;	../src/isp.c:125: ISP_ADDRL = addr;
	mov	_ISP_ADDRL,r6
;	../src/isp.c:126: ISP_ADDRH = addr >> 0x8;
	mov	_ISP_ADDRH,r7
;	../src/isp.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISP_setCommand'
;------------------------------------------------------------
;cmd                       Allocated to registers 
;------------------------------------------------------------
;	../src/isp.c:139: void ISP_setCommand(ISP_command cmd)
;	-----------------------------------------
;	 function ISP_setCommand
;	-----------------------------------------
_ISP_setCommand:
	mov	_ISP_CMD,dpl
;	../src/isp.c:141: ISP_CMD = cmd;
;	../src/isp.c:142: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISP_trig'
;------------------------------------------------------------
;	../src/isp.c:154: void ISP_trig(void)
;	-----------------------------------------
;	 function ISP_trig
;	-----------------------------------------
_ISP_trig:
;	../src/isp.c:156: ISP_TRIG = 0x46;
	mov	_ISP_TRIG,#0x46
;	../src/isp.c:157: ISP_TRIG = 0xB9;
	mov	_ISP_TRIG,#0xb9
;	../src/isp.c:158: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISP_writeByte'
;------------------------------------------------------------
;dat                       Allocated with name '_ISP_writeByte_PARM_2'
;addr                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	../src/isp.c:171: bool ISP_writeByte(uint16_t addr, byte dat)
;	-----------------------------------------
;	 function ISP_writeByte
;	-----------------------------------------
_ISP_writeByte:
	mov	r6,dpl
	mov	r7,dph
;	../src/isp.c:173: if ((addr < ISP_ADDR_START) || (addr > ISP_ADDR_END))
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x100 - 0x20
	add	a,r5
	jnc	00101$
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x2f
	subb	a,r5
	jnc	00102$
00101$:
;	../src/isp.c:175: return false;
	mov	dpl,#0x00
	ret
00102$:
;	../src/isp.c:179: ISP_setAddress(addr);
	mov	dpl,r6
	mov	dph,r7
	lcall	_ISP_setAddress
;	../src/isp.c:180: ISP_setCommand(ISP_command_write);
	mov	dpl,#0x02
	lcall	_ISP_setCommand
;	../src/isp.c:181: ISP_DATA = dat;
	mov	_ISP_DATA,_ISP_writeByte_PARM_2
;	../src/isp.c:182: ISP_trig();
	lcall	_ISP_trig
;	../src/isp.c:184: return true;
	mov	dpl,#0x01
;	../src/isp.c:186: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
