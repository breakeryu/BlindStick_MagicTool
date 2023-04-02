                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module test
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _siexit_isr
                                     12 	.globl _tim0_isr
                                     13 	.globl _main
                                     14 	.globl _sys_init
                                     15 	.globl _lcd_printf
                                     16 	.globl _lcd_init
                                     17 	.globl _UART_sendByte
                                     18 	.globl _UART_isReceived
                                     19 	.globl _UART_getByte
                                     20 	.globl _UART_config
                                     21 	.globl _TIM_setValue
                                     22 	.globl _TIM_config
                                     23 	.globl _TIM_cmd
                                     24 	.globl _TIM_calculateValue
                                     25 	.globl _GPIO_toggleBitValue
                                     26 	.globl _enableAllInterrupts
                                     27 	.globl _disableAllInterrupts
                                     28 	.globl _PX3
                                     29 	.globl _EX3
                                     30 	.globl _IE3
                                     31 	.globl _IT3
                                     32 	.globl _PX2
                                     33 	.globl _EX2
                                     34 	.globl _IE2
                                     35 	.globl _IT2
                                     36 	.globl _TF2
                                     37 	.globl _EXF2
                                     38 	.globl _RCLK
                                     39 	.globl _TCLK
                                     40 	.globl _EXEN2
                                     41 	.globl _TR2
                                     42 	.globl _T2_CT
                                     43 	.globl _CPRL2
                                     44 	.globl _INT2
                                     45 	.globl _INT3
                                     46 	.globl _P4_3
                                     47 	.globl _P4_2
                                     48 	.globl _P4_1
                                     49 	.globl _P4_0
                                     50 	.globl _T2EX
                                     51 	.globl _T2
                                     52 	.globl _PT2
                                     53 	.globl _ET2
                                     54 	.globl _CY
                                     55 	.globl _AC
                                     56 	.globl _F0
                                     57 	.globl _RS1
                                     58 	.globl _RS0
                                     59 	.globl _OV
                                     60 	.globl _F1
                                     61 	.globl _P
                                     62 	.globl _PS
                                     63 	.globl _PT1
                                     64 	.globl _PX1
                                     65 	.globl _PT0
                                     66 	.globl _PX0
                                     67 	.globl _RD
                                     68 	.globl _WR
                                     69 	.globl _T1
                                     70 	.globl _T0
                                     71 	.globl _INT1
                                     72 	.globl _INT0
                                     73 	.globl _TXD
                                     74 	.globl _RXD
                                     75 	.globl _P3_7
                                     76 	.globl _P3_6
                                     77 	.globl _P3_5
                                     78 	.globl _P3_4
                                     79 	.globl _P3_3
                                     80 	.globl _P3_2
                                     81 	.globl _P3_1
                                     82 	.globl _P3_0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _P2_7
                                     90 	.globl _P2_6
                                     91 	.globl _P2_5
                                     92 	.globl _P2_4
                                     93 	.globl _P2_3
                                     94 	.globl _P2_2
                                     95 	.globl _P2_1
                                     96 	.globl _P2_0
                                     97 	.globl _SM0
                                     98 	.globl _SM1
                                     99 	.globl _SM2
                                    100 	.globl _REN
                                    101 	.globl _TB8
                                    102 	.globl _RB8
                                    103 	.globl _TI
                                    104 	.globl _RI
                                    105 	.globl _P1_7
                                    106 	.globl _P1_6
                                    107 	.globl _P1_5
                                    108 	.globl _P1_4
                                    109 	.globl _P1_3
                                    110 	.globl _P1_2
                                    111 	.globl _P1_1
                                    112 	.globl _P1_0
                                    113 	.globl _TF1
                                    114 	.globl _TR1
                                    115 	.globl _TF0
                                    116 	.globl _TR0
                                    117 	.globl _IE1
                                    118 	.globl _IT1
                                    119 	.globl _IE0
                                    120 	.globl _IT0
                                    121 	.globl _P0_7
                                    122 	.globl _P0_6
                                    123 	.globl _P0_5
                                    124 	.globl _P0_4
                                    125 	.globl _P0_3
                                    126 	.globl _P0_2
                                    127 	.globl _P0_1
                                    128 	.globl _P0_0
                                    129 	.globl _P4
                                    130 	.globl _ISP_CONTR
                                    131 	.globl _ISP_TRIG
                                    132 	.globl _ISP_CMD
                                    133 	.globl _ISP_ADDRL
                                    134 	.globl _ISP_ADDRH
                                    135 	.globl _ISP_DATA
                                    136 	.globl _WDT_CONTR
                                    137 	.globl _TH2
                                    138 	.globl _TL2
                                    139 	.globl _RCAP2H
                                    140 	.globl _RCAP2L
                                    141 	.globl _T2MOD
                                    142 	.globl _T2CON
                                    143 	.globl _XICON
                                    144 	.globl _IPH
                                    145 	.globl _SADDR1
                                    146 	.globl _AUXR1
                                    147 	.globl _AUXR
                                    148 	.globl _B
                                    149 	.globl _ACC
                                    150 	.globl _PSW
                                    151 	.globl _IP
                                    152 	.globl _P3
                                    153 	.globl _IE
                                    154 	.globl _P2
                                    155 	.globl _SBUF
                                    156 	.globl _SCON
                                    157 	.globl _P1
                                    158 	.globl _TH1
                                    159 	.globl _TH0
                                    160 	.globl _TL1
                                    161 	.globl _TL0
                                    162 	.globl _TMOD
                                    163 	.globl _TCON
                                    164 	.globl _PCON
                                    165 	.globl _DPH
                                    166 	.globl _DPL
                                    167 	.globl _SP
                                    168 	.globl _P0
                                    169 	.globl _putchar
                                    170 ;--------------------------------------------------------
                                    171 ; special function registers
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P0	=	0x0080
                           000081   176 _SP	=	0x0081
                           000082   177 _DPL	=	0x0082
                           000083   178 _DPH	=	0x0083
                           000087   179 _PCON	=	0x0087
                           000088   180 _TCON	=	0x0088
                           000089   181 _TMOD	=	0x0089
                           00008A   182 _TL0	=	0x008a
                           00008B   183 _TL1	=	0x008b
                           00008C   184 _TH0	=	0x008c
                           00008D   185 _TH1	=	0x008d
                           000090   186 _P1	=	0x0090
                           000098   187 _SCON	=	0x0098
                           000099   188 _SBUF	=	0x0099
                           0000A0   189 _P2	=	0x00a0
                           0000A8   190 _IE	=	0x00a8
                           0000B0   191 _P3	=	0x00b0
                           0000B8   192 _IP	=	0x00b8
                           0000D0   193 _PSW	=	0x00d0
                           0000E0   194 _ACC	=	0x00e0
                           0000F0   195 _B	=	0x00f0
                           00008E   196 _AUXR	=	0x008e
                           0000A2   197 _AUXR1	=	0x00a2
                           0000A9   198 _SADDR1	=	0x00a9
                           0000B7   199 _IPH	=	0x00b7
                           0000C0   200 _XICON	=	0x00c0
                           0000C8   201 _T2CON	=	0x00c8
                           0000C9   202 _T2MOD	=	0x00c9
                           0000CA   203 _RCAP2L	=	0x00ca
                           0000CB   204 _RCAP2H	=	0x00cb
                           0000CC   205 _TL2	=	0x00cc
                           0000CD   206 _TH2	=	0x00cd
                           0000E1   207 _WDT_CONTR	=	0x00e1
                           0000E2   208 _ISP_DATA	=	0x00e2
                           0000E3   209 _ISP_ADDRH	=	0x00e3
                           0000E4   210 _ISP_ADDRL	=	0x00e4
                           0000E5   211 _ISP_CMD	=	0x00e5
                           0000E6   212 _ISP_TRIG	=	0x00e6
                           0000E7   213 _ISP_CONTR	=	0x00e7
                           0000E8   214 _P4	=	0x00e8
                                    215 ;--------------------------------------------------------
                                    216 ; special function bits
                                    217 ;--------------------------------------------------------
                                    218 	.area RSEG    (ABS,DATA)
      000000                        219 	.org 0x0000
                           000080   220 _P0_0	=	0x0080
                           000081   221 _P0_1	=	0x0081
                           000082   222 _P0_2	=	0x0082
                           000083   223 _P0_3	=	0x0083
                           000084   224 _P0_4	=	0x0084
                           000085   225 _P0_5	=	0x0085
                           000086   226 _P0_6	=	0x0086
                           000087   227 _P0_7	=	0x0087
                           000088   228 _IT0	=	0x0088
                           000089   229 _IE0	=	0x0089
                           00008A   230 _IT1	=	0x008a
                           00008B   231 _IE1	=	0x008b
                           00008C   232 _TR0	=	0x008c
                           00008D   233 _TF0	=	0x008d
                           00008E   234 _TR1	=	0x008e
                           00008F   235 _TF1	=	0x008f
                           000090   236 _P1_0	=	0x0090
                           000091   237 _P1_1	=	0x0091
                           000092   238 _P1_2	=	0x0092
                           000093   239 _P1_3	=	0x0093
                           000094   240 _P1_4	=	0x0094
                           000095   241 _P1_5	=	0x0095
                           000096   242 _P1_6	=	0x0096
                           000097   243 _P1_7	=	0x0097
                           000098   244 _RI	=	0x0098
                           000099   245 _TI	=	0x0099
                           00009A   246 _RB8	=	0x009a
                           00009B   247 _TB8	=	0x009b
                           00009C   248 _REN	=	0x009c
                           00009D   249 _SM2	=	0x009d
                           00009E   250 _SM1	=	0x009e
                           00009F   251 _SM0	=	0x009f
                           0000A0   252 _P2_0	=	0x00a0
                           0000A1   253 _P2_1	=	0x00a1
                           0000A2   254 _P2_2	=	0x00a2
                           0000A3   255 _P2_3	=	0x00a3
                           0000A4   256 _P2_4	=	0x00a4
                           0000A5   257 _P2_5	=	0x00a5
                           0000A6   258 _P2_6	=	0x00a6
                           0000A7   259 _P2_7	=	0x00a7
                           0000A8   260 _EX0	=	0x00a8
                           0000A9   261 _ET0	=	0x00a9
                           0000AA   262 _EX1	=	0x00aa
                           0000AB   263 _ET1	=	0x00ab
                           0000AC   264 _ES	=	0x00ac
                           0000AF   265 _EA	=	0x00af
                           0000B0   266 _P3_0	=	0x00b0
                           0000B1   267 _P3_1	=	0x00b1
                           0000B2   268 _P3_2	=	0x00b2
                           0000B3   269 _P3_3	=	0x00b3
                           0000B4   270 _P3_4	=	0x00b4
                           0000B5   271 _P3_5	=	0x00b5
                           0000B6   272 _P3_6	=	0x00b6
                           0000B7   273 _P3_7	=	0x00b7
                           0000B0   274 _RXD	=	0x00b0
                           0000B1   275 _TXD	=	0x00b1
                           0000B2   276 _INT0	=	0x00b2
                           0000B3   277 _INT1	=	0x00b3
                           0000B4   278 _T0	=	0x00b4
                           0000B5   279 _T1	=	0x00b5
                           0000B6   280 _WR	=	0x00b6
                           0000B7   281 _RD	=	0x00b7
                           0000B8   282 _PX0	=	0x00b8
                           0000B9   283 _PT0	=	0x00b9
                           0000BA   284 _PX1	=	0x00ba
                           0000BB   285 _PT1	=	0x00bb
                           0000BC   286 _PS	=	0x00bc
                           0000D0   287 _P	=	0x00d0
                           0000D1   288 _F1	=	0x00d1
                           0000D2   289 _OV	=	0x00d2
                           0000D3   290 _RS0	=	0x00d3
                           0000D4   291 _RS1	=	0x00d4
                           0000D5   292 _F0	=	0x00d5
                           0000D6   293 _AC	=	0x00d6
                           0000D7   294 _CY	=	0x00d7
                           0000AD   295 _ET2	=	0x00ad
                           0000BD   296 _PT2	=	0x00bd
                           000090   297 _T2	=	0x0090
                           000091   298 _T2EX	=	0x0091
                           0000E8   299 _P4_0	=	0x00e8
                           0000E9   300 _P4_1	=	0x00e9
                           0000EA   301 _P4_2	=	0x00ea
                           0000EB   302 _P4_3	=	0x00eb
                           0000EA   303 _INT3	=	0x00ea
                           0000EB   304 _INT2	=	0x00eb
                           0000C8   305 _CPRL2	=	0x00c8
                           0000C9   306 _T2_CT	=	0x00c9
                           0000CA   307 _TR2	=	0x00ca
                           0000CB   308 _EXEN2	=	0x00cb
                           0000CC   309 _TCLK	=	0x00cc
                           0000CD   310 _RCLK	=	0x00cd
                           0000CE   311 _EXF2	=	0x00ce
                           0000CF   312 _TF2	=	0x00cf
                           0000C0   313 _IT2	=	0x00c0
                           0000C1   314 _IE2	=	0x00c1
                           0000C2   315 _EX2	=	0x00c2
                           0000C3   316 _PX2	=	0x00c3
                           0000C4   317 _IT3	=	0x00c4
                           0000C5   318 _IE3	=	0x00c5
                           0000C6   319 _EX3	=	0x00c6
                           0000C7   320 _PX3	=	0x00c7
                                    321 ;--------------------------------------------------------
                                    322 ; overlayable register banks
                                    323 ;--------------------------------------------------------
                                    324 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        325 	.ds 8
                                    326 ;--------------------------------------------------------
                                    327 ; overlayable bit register bank
                                    328 ;--------------------------------------------------------
                                    329 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        330 bits:
      000020                        331 	.ds 1
                           008000   332 	b0 = bits[0]
                           008100   333 	b1 = bits[1]
                           008200   334 	b2 = bits[2]
                           008300   335 	b3 = bits[3]
                           008400   336 	b4 = bits[4]
                           008500   337 	b5 = bits[5]
                           008600   338 	b6 = bits[6]
                           008700   339 	b7 = bits[7]
                                    340 ;--------------------------------------------------------
                                    341 ; internal ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area DSEG    (DATA)
      000021                        344 _sys_init_uc_65537_101:
      000021                        345 	.ds 10
      00002B                        346 _sys_init_tc_65538_102:
      00002B                        347 	.ds 6
      000031                        348 _main_str_65537_105:
      000031                        349 	.ds 12
      00003D                        350 _tim0_isr_i_65536_108:
      00003D                        351 	.ds 1
                                    352 ;--------------------------------------------------------
                                    353 ; overlayable items in internal ram 
                                    354 ;--------------------------------------------------------
                                    355 ;--------------------------------------------------------
                                    356 ; Stack segment in internal ram 
                                    357 ;--------------------------------------------------------
                                    358 	.area	SSEG
      000054                        359 __start__stack:
      000054                        360 	.ds	1
                                    361 
                                    362 ;--------------------------------------------------------
                                    363 ; indirectly addressable internal ram data
                                    364 ;--------------------------------------------------------
                                    365 	.area ISEG    (DATA)
                                    366 ;--------------------------------------------------------
                                    367 ; absolute internal ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area IABS    (ABS,DATA)
                                    370 	.area IABS    (ABS,DATA)
                                    371 ;--------------------------------------------------------
                                    372 ; bit data
                                    373 ;--------------------------------------------------------
                                    374 	.area BSEG    (BIT)
                                    375 ;--------------------------------------------------------
                                    376 ; paged external ram data
                                    377 ;--------------------------------------------------------
                                    378 	.area PSEG    (PAG,XDATA)
                                    379 ;--------------------------------------------------------
                                    380 ; external ram data
                                    381 ;--------------------------------------------------------
                                    382 	.area XSEG    (XDATA)
                                    383 ;--------------------------------------------------------
                                    384 ; absolute external ram data
                                    385 ;--------------------------------------------------------
                                    386 	.area XABS    (ABS,XDATA)
                                    387 ;--------------------------------------------------------
                                    388 ; external initialized ram data
                                    389 ;--------------------------------------------------------
                                    390 	.area XISEG   (XDATA)
                                    391 	.area HOME    (CODE)
                                    392 	.area GSINIT0 (CODE)
                                    393 	.area GSINIT1 (CODE)
                                    394 	.area GSINIT2 (CODE)
                                    395 	.area GSINIT3 (CODE)
                                    396 	.area GSINIT4 (CODE)
                                    397 	.area GSINIT5 (CODE)
                                    398 	.area GSINIT  (CODE)
                                    399 	.area GSFINAL (CODE)
                                    400 	.area CSEG    (CODE)
                                    401 ;--------------------------------------------------------
                                    402 ; interrupt vector 
                                    403 ;--------------------------------------------------------
                                    404 	.area HOME    (CODE)
      000000                        405 __interrupt_vect:
      000000 02 00 29         [24]  406 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  407 	reti
      000004                        408 	.ds	7
      00000B 02 01 40         [24]  409 	ljmp	_tim0_isr
      00000E                        410 	.ds	5
      000013 32               [24]  411 	reti
      000014                        412 	.ds	7
      00001B 32               [24]  413 	reti
      00001C                        414 	.ds	7
      000023 02 01 A4         [24]  415 	ljmp	_siexit_isr
                                    416 ;--------------------------------------------------------
                                    417 ; global & static initialisations
                                    418 ;--------------------------------------------------------
                                    419 	.area HOME    (CODE)
                                    420 	.area GSINIT  (CODE)
                                    421 	.area GSFINAL (CODE)
                                    422 	.area GSINIT  (CODE)
                                    423 	.globl __sdcc_gsinit_startup
                                    424 	.globl __sdcc_program_startup
                                    425 	.globl __start__stack
                                    426 	.globl __mcs51_genXINIT
                                    427 	.globl __mcs51_genXRAMCLEAR
                                    428 	.globl __mcs51_genRAMCLEAR
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'tim0_isr'
                                    431 ;------------------------------------------------------------
                                    432 ;i                         Allocated with name '_tim0_isr_i_65536_108'
                                    433 ;------------------------------------------------------------
                                    434 ;	test.c:109: static uint8_t i = 0;
      000082 75 3D 00         [24]  435 	mov	_tim0_isr_i_65536_108,#0x00
                                    436 	.area GSFINAL (CODE)
      000085 02 00 26         [24]  437 	ljmp	__sdcc_program_startup
                                    438 ;--------------------------------------------------------
                                    439 ; Home
                                    440 ;--------------------------------------------------------
                                    441 	.area HOME    (CODE)
                                    442 	.area HOME    (CODE)
      000026                        443 __sdcc_program_startup:
      000026 02 00 EA         [24]  444 	ljmp	_main
                                    445 ;	return from main will return to caller
                                    446 ;--------------------------------------------------------
                                    447 ; code
                                    448 ;--------------------------------------------------------
                                    449 	.area CSEG    (CODE)
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'sys_init'
                                    452 ;------------------------------------------------------------
                                    453 ;uc                        Allocated with name '_sys_init_uc_65537_101'
                                    454 ;tc                        Allocated with name '_sys_init_tc_65538_102'
                                    455 ;------------------------------------------------------------
                                    456 ;	test.c:33: void sys_init(void)
                                    457 ;	-----------------------------------------
                                    458 ;	 function sys_init
                                    459 ;	-----------------------------------------
      000088                        460 _sys_init:
                           000007   461 	ar7 = 0x07
                           000006   462 	ar6 = 0x06
                           000005   463 	ar5 = 0x05
                           000004   464 	ar4 = 0x04
                           000003   465 	ar3 = 0x03
                           000002   466 	ar2 = 0x02
                           000001   467 	ar1 = 0x01
                           000000   468 	ar0 = 0x00
                                    469 ;	test.c:35: disableAllInterrupts();
      000088 12 04 90         [24]  470 	lcall	_disableAllInterrupts
                                    471 ;	test.c:39: uc.baudrate          = 14400;
      00008B 75 21 40         [24]  472 	mov	(_sys_init_uc_65537_101 + 0),#0x40
      00008E 75 22 38         [24]  473 	mov	(_sys_init_uc_65537_101 + 1),#0x38
      000091 E4               [12]  474 	clr	a
      000092 F5 23            [12]  475 	mov	(_sys_init_uc_65537_101 + 2),a
      000094 F5 24            [12]  476 	mov	(_sys_init_uc_65537_101 + 3),a
                                    477 ;	test.c:40: uc.baudGenerator     = PERIPH_TIM_2;
      000096 75 25 02         [24]  478 	mov	(_sys_init_uc_65537_101 + 0x0004),#0x02
                                    479 ;	test.c:41: uc.interruptState    = ENABLE;
      000099 75 26 01         [24]  480 	mov	(_sys_init_uc_65537_101 + 0x0005),#0x01
                                    481 ;	test.c:42: uc.interruptPriority = UTIL_interruptPriority_3;
      00009C 75 27 03         [24]  482 	mov	(_sys_init_uc_65537_101 + 0x0006),#0x03
                                    483 ;	test.c:43: uc.mode              = UART_mode_1;
      00009F 75 28 01         [24]  484 	mov	(_sys_init_uc_65537_101 + 0x0007),#0x01
                                    485 ;	test.c:44: uc.multiBaudrate     = DISABLE;
                                    486 ;	1-genFromRTrack replaced	mov	(_sys_init_uc_65537_101 + 0x0008),#0x00
      0000A2 F5 29            [12]  487 	mov	(_sys_init_uc_65537_101 + 0x0008),a
                                    488 ;	test.c:45: uc.receiveState      = ENABLE;
      0000A4 75 2A 01         [24]  489 	mov	(_sys_init_uc_65537_101 + 0x0009),#0x01
                                    490 ;	test.c:47: UART_config(&uc);
      0000A7 90 00 21         [24]  491 	mov	dptr,#_sys_init_uc_65537_101
      0000AA 75 F0 40         [24]  492 	mov	b,#0x40
      0000AD 12 05 12         [24]  493 	lcall	_UART_config
                                    494 ;	test.c:51: tc.function          = TIM_function_tim;
      0000B0 75 2B 00         [24]  495 	mov	_sys_init_tc_65538_102,#0x00
                                    496 ;	test.c:52: tc.interruptState    = ENABLE;
      0000B3 75 2C 01         [24]  497 	mov	(_sys_init_tc_65538_102 + 0x0001),#0x01
                                    498 ;	test.c:53: tc.interruptPriority = UTIL_interruptPriority_1;
      0000B6 75 2D 01         [24]  499 	mov	(_sys_init_tc_65538_102 + 0x0002),#0x01
                                    500 ;	test.c:54: tc.mode              = TIM_mode_1;
      0000B9 75 2E 01         [24]  501 	mov	(_sys_init_tc_65538_102 + 0x0003),#0x01
                                    502 ;	test.c:55: tc.value             = TIM_calculateValue(50000, TIM_mode_1);//todo该定时器计算value是会溢出，是有大问题的
      0000BC 75 0F 01         [24]  503 	mov	_TIM_calculateValue_PARM_2,#0x01
      0000BF 90 C3 50         [24]  504 	mov	dptr,#0xc350
      0000C2 12 09 C5         [24]  505 	lcall	_TIM_calculateValue
      0000C5 E5 82            [12]  506 	mov	a,dpl
      0000C7 85 83 F0         [24]  507 	mov	b,dph
      0000CA F5 2F            [12]  508 	mov	((_sys_init_tc_65538_102 + 0x0004) + 0),a
      0000CC 85 F0 30         [24]  509 	mov	((_sys_init_tc_65538_102 + 0x0004) + 1),b
                                    510 ;	test.c:56: TIM_config(PERIPH_TIM_0,&tc);
      0000CF 75 12 2B         [24]  511 	mov	_TIM_config_PARM_2,#_sys_init_tc_65538_102
      0000D2 75 13 00         [24]  512 	mov	(_TIM_config_PARM_2 + 1),#0x00
      0000D5 75 14 40         [24]  513 	mov	(_TIM_config_PARM_2 + 2),#0x40
      0000D8 75 82 00         [24]  514 	mov	dpl,#0x00
      0000DB 12 0A 81         [24]  515 	lcall	_TIM_config
                                    516 ;	test.c:57: TIM_cmd(PERIPH_TIM_0, ENABLE);
      0000DE 75 15 01         [24]  517 	mov	_TIM_cmd_PARM_2,#0x01
      0000E1 75 82 00         [24]  518 	mov	dpl,#0x00
      0000E4 12 0A 67         [24]  519 	lcall	_TIM_cmd
                                    520 ;	test.c:59: enableAllInterrupts();
                                    521 ;	test.c:62: }
      0000E7 02 04 93         [24]  522 	ljmp	_enableAllInterrupts
                                    523 ;------------------------------------------------------------
                                    524 ;Allocation info for local variables in function 'main'
                                    525 ;------------------------------------------------------------
                                    526 ;str                       Allocated with name '_main_str_65537_105'
                                    527 ;------------------------------------------------------------
                                    528 ;	test.c:75: void main(void)
                                    529 ;	-----------------------------------------
                                    530 ;	 function main
                                    531 ;	-----------------------------------------
      0000EA                        532 _main:
                                    533 ;	test.c:77: sys_init();
      0000EA 12 00 88         [24]  534 	lcall	_sys_init
                                    535 ;	test.c:81: uint8_t str[]="1234567890!";//TODO 不允许回车换行，每行显示自己行的提示符
      0000ED 75 31 31         [24]  536 	mov	_main_str_65537_105,#0x31
      0000F0 75 32 32         [24]  537 	mov	(_main_str_65537_105 + 0x0001),#0x32
      0000F3 75 33 33         [24]  538 	mov	(_main_str_65537_105 + 0x0002),#0x33
      0000F6 75 34 34         [24]  539 	mov	(_main_str_65537_105 + 0x0003),#0x34
      0000F9 75 35 35         [24]  540 	mov	(_main_str_65537_105 + 0x0004),#0x35
      0000FC 75 36 36         [24]  541 	mov	(_main_str_65537_105 + 0x0005),#0x36
      0000FF 75 37 37         [24]  542 	mov	(_main_str_65537_105 + 0x0006),#0x37
      000102 75 38 38         [24]  543 	mov	(_main_str_65537_105 + 0x0007),#0x38
      000105 75 39 39         [24]  544 	mov	(_main_str_65537_105 + 0x0008),#0x39
      000108 75 3A 30         [24]  545 	mov	(_main_str_65537_105 + 0x0009),#0x30
      00010B 75 3B 21         [24]  546 	mov	(_main_str_65537_105 + 0x000a),#0x21
      00010E 75 3C 00         [24]  547 	mov	(_main_str_65537_105 + 0x000b),#0x00
                                    548 ;	test.c:82: lcd_init();	                            //init lcd1602
      000111 12 03 0D         [24]  549 	lcall	_lcd_init
                                    550 ;	test.c:83: lcd_printf(0,0,str);
      000114 75 0A 31         [24]  551 	mov	_lcd_printf_PARM_3,#_main_str_65537_105
      000117 75 0B 00         [24]  552 	mov	(_lcd_printf_PARM_3 + 1),#0x00
      00011A 75 0C 40         [24]  553 	mov	(_lcd_printf_PARM_3 + 2),#0x40
      00011D 75 09 00         [24]  554 	mov	_lcd_printf_PARM_2,#0x00
      000120 75 82 00         [24]  555 	mov	dpl,#0x00
      000123 12 02 CE         [24]  556 	lcall	_lcd_printf
                                    557 ;	test.c:84: lcd_printf(0,1,str);
      000126 75 0A 31         [24]  558 	mov	_lcd_printf_PARM_3,#_main_str_65537_105
      000129 75 0B 00         [24]  559 	mov	(_lcd_printf_PARM_3 + 1),#0x00
      00012C 75 0C 40         [24]  560 	mov	(_lcd_printf_PARM_3 + 2),#0x40
      00012F 75 09 01         [24]  561 	mov	_lcd_printf_PARM_2,#0x01
      000132 75 82 00         [24]  562 	mov	dpl,#0x00
      000135 12 02 CE         [24]  563 	lcall	_lcd_printf
                                    564 ;	test.c:86: while(true){
      000138                        565 00102$:
                                    566 ;	test.c:89: disableAllInterrupts();     
      000138 12 04 90         [24]  567 	lcall	_disableAllInterrupts
                                    568 ;	test.c:91: enableAllInterrupts();
      00013B 12 04 93         [24]  569 	lcall	_enableAllInterrupts
                                    570 ;	test.c:95: }
      00013E 80 F8            [24]  571 	sjmp	00102$
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'tim0_isr'
                                    574 ;------------------------------------------------------------
                                    575 ;i                         Allocated with name '_tim0_isr_i_65536_108'
                                    576 ;------------------------------------------------------------
                                    577 ;	test.c:107: void tim0_isr(void) __interrupt TF0_VECTOR
                                    578 ;	-----------------------------------------
                                    579 ;	 function tim0_isr
                                    580 ;	-----------------------------------------
      000140                        581 _tim0_isr:
      000140 C0 20            [24]  582 	push	bits
      000142 C0 E0            [24]  583 	push	acc
      000144 C0 F0            [24]  584 	push	b
      000146 C0 82            [24]  585 	push	dpl
      000148 C0 83            [24]  586 	push	dph
      00014A C0 07            [24]  587 	push	(0+7)
      00014C C0 06            [24]  588 	push	(0+6)
      00014E C0 05            [24]  589 	push	(0+5)
      000150 C0 04            [24]  590 	push	(0+4)
      000152 C0 03            [24]  591 	push	(0+3)
      000154 C0 02            [24]  592 	push	(0+2)
      000156 C0 01            [24]  593 	push	(0+1)
      000158 C0 00            [24]  594 	push	(0+0)
      00015A C0 D0            [24]  595 	push	psw
      00015C 75 D0 00         [24]  596 	mov	psw,#0x00
                                    597 ;	test.c:111: TIM_setValue(PERIPH_TIM_0,TIM_calculateValue(50000, TIM_mode_1));
      00015F 75 0F 01         [24]  598 	mov	_TIM_calculateValue_PARM_2,#0x01
      000162 90 C3 50         [24]  599 	mov	dptr,#0xc350
      000165 12 09 C5         [24]  600 	lcall	_TIM_calculateValue
      000168 85 82 15         [24]  601 	mov	_TIM_setValue_PARM_2,dpl
      00016B 85 83 16         [24]  602 	mov	(_TIM_setValue_PARM_2 + 1),dph
      00016E 75 82 00         [24]  603 	mov	dpl,#0x00
      000171 12 0B E6         [24]  604 	lcall	_TIM_setValue
                                    605 ;	test.c:115: i++;
      000174 05 3D            [12]  606 	inc	_tim0_isr_i_65536_108
                                    607 ;	test.c:116: if (i == 10)
      000176 74 0A            [12]  608 	mov	a,#0x0a
      000178 B5 3D 0C         [24]  609 	cjne	a,_tim0_isr_i_65536_108,00103$
                                    610 ;	test.c:118: GPIO_toggleBitValue(PERIPH_GPIO_2, PERIPH_GPIO_PIN_2);
      00017B 75 15 04         [24]  611 	mov	_GPIO_toggleBitValue_PARM_2,#0x04
      00017E 75 82 02         [24]  612 	mov	dpl,#0x02
      000181 12 04 60         [24]  613 	lcall	_GPIO_toggleBitValue
                                    614 ;	test.c:119: i = 0;
      000184 75 3D 00         [24]  615 	mov	_tim0_isr_i_65536_108,#0x00
      000187                        616 00103$:
                                    617 ;	test.c:123: }
      000187 D0 D0            [24]  618 	pop	psw
      000189 D0 00            [24]  619 	pop	(0+0)
      00018B D0 01            [24]  620 	pop	(0+1)
      00018D D0 02            [24]  621 	pop	(0+2)
      00018F D0 03            [24]  622 	pop	(0+3)
      000191 D0 04            [24]  623 	pop	(0+4)
      000193 D0 05            [24]  624 	pop	(0+5)
      000195 D0 06            [24]  625 	pop	(0+6)
      000197 D0 07            [24]  626 	pop	(0+7)
      000199 D0 83            [24]  627 	pop	dph
      00019B D0 82            [24]  628 	pop	dpl
      00019D D0 F0            [24]  629 	pop	b
      00019F D0 E0            [24]  630 	pop	acc
      0001A1 D0 20            [24]  631 	pop	bits
      0001A3 32               [24]  632 	reti
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'siexit_isr'
                                    635 ;------------------------------------------------------------
                                    636 ;RDATA                     Allocated to registers 
                                    637 ;------------------------------------------------------------
                                    638 ;	test.c:127: void siexit_isr(void) __interrupt SI0_VECTOR
                                    639 ;	-----------------------------------------
                                    640 ;	 function siexit_isr
                                    641 ;	-----------------------------------------
      0001A4                        642 _siexit_isr:
      0001A4 C0 20            [24]  643 	push	bits
      0001A6 C0 E0            [24]  644 	push	acc
      0001A8 C0 F0            [24]  645 	push	b
      0001AA C0 82            [24]  646 	push	dpl
      0001AC C0 83            [24]  647 	push	dph
      0001AE C0 07            [24]  648 	push	(0+7)
      0001B0 C0 06            [24]  649 	push	(0+6)
      0001B2 C0 05            [24]  650 	push	(0+5)
      0001B4 C0 04            [24]  651 	push	(0+4)
      0001B6 C0 03            [24]  652 	push	(0+3)
      0001B8 C0 02            [24]  653 	push	(0+2)
      0001BA C0 01            [24]  654 	push	(0+1)
      0001BC C0 00            [24]  655 	push	(0+0)
      0001BE C0 D0            [24]  656 	push	psw
      0001C0 75 D0 00         [24]  657 	mov	psw,#0x00
                                    658 ;	test.c:135: if (UART_isReceived())
      0001C3 12 07 4B         [24]  659 	lcall	_UART_isReceived
      0001C6 E5 82            [12]  660 	mov	a,dpl
      0001C8 60 0E            [24]  661 	jz	00103$
                                    662 ;	test.c:138: GPIO_toggleBitValue(PERIPH_GPIO_2, PERIPH_GPIO_PIN_1);
      0001CA 75 15 02         [24]  663 	mov	_GPIO_toggleBitValue_PARM_2,#0x02
      0001CD 75 82 02         [24]  664 	mov	dpl,#0x02
      0001D0 12 04 60         [24]  665 	lcall	_GPIO_toggleBitValue
                                    666 ;	test.c:139: uint8_t RDATA = UART_getByte();
      0001D3 12 07 47         [24]  667 	lcall	_UART_getByte
                                    668 ;	test.c:140: RI = 0;
                                    669 ;	assignBit
      0001D6 C2 98            [12]  670 	clr	_RI
      0001D8                        671 00103$:
                                    672 ;	test.c:145: }
      0001D8 D0 D0            [24]  673 	pop	psw
      0001DA D0 00            [24]  674 	pop	(0+0)
      0001DC D0 01            [24]  675 	pop	(0+1)
      0001DE D0 02            [24]  676 	pop	(0+2)
      0001E0 D0 03            [24]  677 	pop	(0+3)
      0001E2 D0 04            [24]  678 	pop	(0+4)
      0001E4 D0 05            [24]  679 	pop	(0+5)
      0001E6 D0 06            [24]  680 	pop	(0+6)
      0001E8 D0 07            [24]  681 	pop	(0+7)
      0001EA D0 83            [24]  682 	pop	dph
      0001EC D0 82            [24]  683 	pop	dpl
      0001EE D0 F0            [24]  684 	pop	b
      0001F0 D0 E0            [24]  685 	pop	acc
      0001F2 D0 20            [24]  686 	pop	bits
      0001F4 32               [24]  687 	reti
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'putchar'
                                    690 ;------------------------------------------------------------
                                    691 ;c                         Allocated to registers r6 r7 
                                    692 ;------------------------------------------------------------
                                    693 ;	test.c:148: int putchar(int c){
                                    694 ;	-----------------------------------------
                                    695 ;	 function putchar
                                    696 ;	-----------------------------------------
      0001F5                        697 _putchar:
                                    698 ;	test.c:150: UART_sendByte((uint8_t)c);
      0001F5 12 07 59         [24]  699 	lcall	_UART_sendByte
                                    700 ;	test.c:151: return 0;
      0001F8 90 00 00         [24]  701 	mov	dptr,#0x0000
                                    702 ;	test.c:153: }
      0001FB 22               [24]  703 	ret
                                    704 	.area CSEG    (CODE)
                                    705 	.area CONST   (CODE)
      000D68                        706 _hexTable:
      000D68 30                     707 	.db #0x30	;  48	'0'
      000D69 31                     708 	.db #0x31	;  49	'1'
      000D6A 32                     709 	.db #0x32	;  50	'2'
      000D6B 33                     710 	.db #0x33	;  51	'3'
      000D6C 34                     711 	.db #0x34	;  52	'4'
      000D6D 35                     712 	.db #0x35	;  53	'5'
      000D6E 36                     713 	.db #0x36	;  54	'6'
      000D6F 37                     714 	.db #0x37	;  55	'7'
      000D70 38                     715 	.db #0x38	;  56	'8'
      000D71 39                     716 	.db #0x39	;  57	'9'
      000D72 41                     717 	.db #0x41	;  65	'A'
      000D73 42                     718 	.db #0x42	;  66	'B'
      000D74 43                     719 	.db #0x43	;  67	'C'
      000D75 44                     720 	.db #0x44	;  68	'D'
      000D76 45                     721 	.db #0x45	;  69	'E'
      000D77 46                     722 	.db #0x46	;  70	'F'
      000D78                        723 _smgduan:
      000D78 3F                     724 	.db #0x3f	; 63
      000D79 06                     725 	.db #0x06	; 6
      000D7A 5B                     726 	.db #0x5b	; 91
      000D7B 4F                     727 	.db #0x4f	; 79	'O'
      000D7C 66                     728 	.db #0x66	; 102	'f'
      000D7D 6D                     729 	.db #0x6d	; 109	'm'
      000D7E 7D                     730 	.db #0x7d	; 125
      000D7F 07                     731 	.db #0x07	; 7
      000D80 7F                     732 	.db #0x7f	; 127
      000D81 6F                     733 	.db #0x6f	; 111	'o'
                                    734 	.area XINIT   (CODE)
                                    735 	.area CABS    (ABS,CODE)
