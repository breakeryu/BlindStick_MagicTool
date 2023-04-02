;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module t18b20
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf
	.globl _GPIO_setBitValue
	.globl _GPIO_resetBitValue
	.globl _GPIO_getBitValue
	.globl _sleep
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
	.globl _DelayT_10us
	.globl _t18b20Init
	.globl _t18b20Write_byte
	.globl _t18b20Read_byte
	.globl _t18b20Read_temper
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
;Allocation info for local variables in function 'DelayT_10us'
;------------------------------------------------------------
;count                     Allocated to registers 
;------------------------------------------------------------
;	../src/t18b20.c:6: void DelayT_10us(uchar count)
;	-----------------------------------------
;	 function DelayT_10us
;	-----------------------------------------
_DelayT_10us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../src/t18b20.c:8: while(count--)
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00104$
;	../src/t18b20.c:10: _nop_();
	NOP	
;	../src/t18b20.c:11: _nop_();
	NOP	
;	../src/t18b20.c:12: _nop_();
	NOP	
;	../src/t18b20.c:13: _nop_();
	NOP	
;	../src/t18b20.c:15: _nop_();
	NOP	
;	../src/t18b20.c:16: _nop_();
	NOP	
;	../src/t18b20.c:17: _nop_();
	NOP	
;	../src/t18b20.c:18: _nop_();
	NOP	
	sjmp	00101$
00104$:
;	../src/t18b20.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 't18b20Init'
;------------------------------------------------------------
;	../src/t18b20.c:32: void t18b20Init(void)
;	-----------------------------------------
;	 function t18b20Init
;	-----------------------------------------
_t18b20Init:
;	../src/t18b20.c:34: disableAllInterrupts();
	lcall	_disableAllInterrupts
;	../src/t18b20.c:36: tdsDate(0);
	mov	_GPIO_resetBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	lcall	_GPIO_resetBitValue
;	../src/t18b20.c:37: DelayT_10us(70);
	mov	dpl,#0x46
	lcall	_DelayT_10us
;	../src/t18b20.c:39: tdsDate(1);
	mov	_GPIO_setBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	lcall	_GPIO_setBitValue
;	../src/t18b20.c:40: DelayT_10us(6);
	mov	dpl,#0x06
	lcall	_DelayT_10us
;	../src/t18b20.c:42: while(!tgetDate);
00101$:
	mov	_GPIO_getBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	lcall	_GPIO_getBitValue
	mov	a,dpl
	jz	00101$
;	../src/t18b20.c:43: DelayT_10us(50);
	mov	dpl,#0x32
	lcall	_DelayT_10us
;	../src/t18b20.c:44: printf("Init Done!\r\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	../src/t18b20.c:45: enableAllInterrupts();
;	../src/t18b20.c:69: }
	ljmp	_enableAllInterrupts
;------------------------------------------------------------
;Allocation info for local variables in function 't18b20Write_byte'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;j                         Allocated to registers r6 
;flag                      Allocated to registers r5 
;------------------------------------------------------------
;	../src/t18b20.c:81: void t18b20Write_byte(uchar dat)  
;	-----------------------------------------
;	 function t18b20Write_byte
;	-----------------------------------------
_t18b20Write_byte:
	mov	r7,dpl
;	../src/t18b20.c:102: for(j=1;j<=8;j++)
	mov	r6,#0x01
00102$:
;	../src/t18b20.c:104: flag = dat&0x01;
	mov	a,r7
	anl	a,#0x01
	mov	r5,a
;	../src/t18b20.c:105: dat=dat>>1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	../src/t18b20.c:107: tdsDate(0);  //拉低总线并延时2us
	mov	_GPIO_resetBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	push	ar7
	push	ar6
	push	ar5
	lcall	_GPIO_resetBitValue
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/t18b20.c:108: _nop_();
	NOP	
;	../src/t18b20.c:109: _nop_();
	NOP	
;	../src/t18b20.c:111: tdsDate(flag);//将要写的位放到总线
	mov	a,r5
	jz	00106$
	mov	_GPIO_setBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	push	ar7
	push	ar6
	lcall	_GPIO_setBitValue
	pop	ar6
	pop	ar7
	sjmp	00107$
00106$:
	mov	_GPIO_resetBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	push	ar7
	push	ar6
	lcall	_GPIO_resetBitValue
	pop	ar6
	pop	ar7
00107$:
;	../src/t18b20.c:112: DelayT_10us(6);//延时60us
	mov	dpl,#0x06
	push	ar7
	push	ar6
	lcall	_DelayT_10us
;	../src/t18b20.c:114: tdsDate(1);//拉高释放总线
	mov	_GPIO_setBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	lcall	_GPIO_setBitValue
	pop	ar6
	pop	ar7
;	../src/t18b20.c:102: for(j=1;j<=8;j++)
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x08
	jnc	00102$
;	../src/t18b20.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 't18b20Read_byte'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;flag                      Allocated to registers r5 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	../src/t18b20.c:130: uchar t18b20Read_byte(void)    
;	-----------------------------------------
;	 function t18b20Read_byte
;	-----------------------------------------
_t18b20Read_byte:
;	../src/t18b20.c:162: uchar dat = 0,flag,j;
	mov	r7,#0x00
;	../src/t18b20.c:163: disableAllInterrupts();
	push	ar7
	lcall	_disableAllInterrupts
	pop	ar7
;	../src/t18b20.c:164: for(j=1;j<=8;j++)
	mov	r6,#0x01
00104$:
;	../src/t18b20.c:166: dat >>= 1;	
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	../src/t18b20.c:167: tdsDate(0);  //拉低总线并延时2us
	mov	_GPIO_resetBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	push	ar7
	push	ar6
	lcall	_GPIO_resetBitValue
	pop	ar6
	pop	ar7
;	../src/t18b20.c:168: _nop_();
	NOP	
;	../src/t18b20.c:169: _nop_();
	NOP	
;	../src/t18b20.c:170: tdsDate(1);  //拉高释放总线并延时2us
	mov	_GPIO_setBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	push	ar7
	push	ar6
	lcall	_GPIO_setBitValue
	pop	ar6
	pop	ar7
;	../src/t18b20.c:171: _nop_();
	NOP	
;	../src/t18b20.c:172: _nop_();
	NOP	
;	../src/t18b20.c:174: flag = tgetDate;//采集
	mov	_GPIO_getBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	push	ar7
	push	ar6
	lcall	_GPIO_getBitValue
	mov	r5,dpl
;	../src/t18b20.c:175: if (tgetDate) dat |= 0x80;        //读取数据
	mov	_GPIO_getBitValue_PARM_2,#0x80
	mov	dpl,#0x03
	push	ar5
	lcall	_GPIO_getBitValue
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00102$
	orl	ar7,#0x80
00102$:
;	../src/t18b20.c:176: DelayT_10us(7);//延时60us
	mov	dpl,#0x07
	push	ar7
	push	ar6
	push	ar5
	lcall	_DelayT_10us
;	../src/t18b20.c:177: printf("Write flag= ");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	../src/t18b20.c:178: printf("%u\r\n",flag);
	mov	r4,#0x00
	push	ar4
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	../src/t18b20.c:164: for(j=1;j<=8;j++)
	inc	r6
	mov	a,r6
	add	a,#0xff - 0x08
	jc	00122$
	ljmp	00104$
00122$:
;	../src/t18b20.c:182: enableAllInterrupts();
	push	ar7
	lcall	_enableAllInterrupts
	pop	ar7
;	../src/t18b20.c:183: return dat;	
	mov	dpl,r7
;	../src/t18b20.c:185: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 't18b20Read_temper'
;------------------------------------------------------------
;TL                        Allocated to registers r7 
;TH                        Allocated to registers r6 
;temp                      Allocated to registers 
;------------------------------------------------------------
;	../src/t18b20.c:197: uint t18b20Read_temper(void)
;	-----------------------------------------
;	 function t18b20Read_temper
;	-----------------------------------------
_t18b20Read_temper:
;	../src/t18b20.c:202: t18b20Init();
	lcall	_t18b20Init
;	../src/t18b20.c:204: t18b20Write_byte(0xcc);        //跳过ROM操作命令
	mov	dpl,#0xcc
	lcall	_t18b20Write_byte
;	../src/t18b20.c:205: t18b20Write_byte(0x44);        //发送启动温度转换命令
	mov	dpl,#0x44
	lcall	_t18b20Write_byte
;	../src/t18b20.c:207: sleep(20);
	mov	dptr,#0x0014
	lcall	_sleep
;	../src/t18b20.c:209: t18b20Init();
	lcall	_t18b20Init
;	../src/t18b20.c:211: t18b20Write_byte(0xcc);        //跳过ROM操作命令
	mov	dpl,#0xcc
	lcall	_t18b20Write_byte
;	../src/t18b20.c:212: t18b20Write_byte(0xbe);        //发送读温度寄存器命令
	mov	dpl,#0xbe
	lcall	_t18b20Write_byte
;	../src/t18b20.c:214: TL = t18b20Read_byte();           //先读低八位
	lcall	_t18b20Read_byte
	mov	r7,dpl
;	../src/t18b20.c:215: TH = t18b20Read_byte();           //再读高八位
	push	ar7
	lcall	_t18b20Read_byte
	mov	r6,dpl
	pop	ar7
;	../src/t18b20.c:222: temp = ((uint)TH<<8) + TL;//将温度组合成16变量
	mov	ar5,r6
	clr	a
	mov	r6,a
	mov	r4,a
	mov	a,r7
	add	a,r6
	mov	dpl,a
	mov	a,r4
	addc	a,r5
	mov	dph,a
;	../src/t18b20.c:224: return temp;
;	../src/t18b20.c:234: }
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
	.area CONST   (CODE)
___str_0:
	.ascii "Init Done!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Write flag= "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "%u"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
