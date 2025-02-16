                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module hello
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _setPortMode_PARM_3
                                     12 	.globl _setPortMode_PARM_2
                                     13 	.globl _main
                                     14 	.globl _processCommand
                                     15 	.globl _receiveChar
                                     16 	.globl _sendCRLF
                                     17 	.globl _sendChar
                                     18 	.globl _Delay2400
                                     19 	.globl _setPortMode
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _AUXR
                                     96 	.globl _IAP_CONTR
                                     97 	.globl _IAP_TRIG
                                     98 	.globl _IAP_CMD
                                     99 	.globl _IAP_ADDRL
                                    100 	.globl _IAP_ADDRH
                                    101 	.globl _IAP_DATA
                                    102 	.globl _P7M1
                                    103 	.globl _P7M0
                                    104 	.globl _P6M1
                                    105 	.globl _P6M0
                                    106 	.globl _P5M1
                                    107 	.globl _P5M0
                                    108 	.globl _P4M1
                                    109 	.globl _P4M0
                                    110 	.globl _P3M1
                                    111 	.globl _P3M0
                                    112 	.globl _P2M1
                                    113 	.globl _P2M0
                                    114 	.globl _P1M1
                                    115 	.globl _P1M0
                                    116 	.globl _P0M1
                                    117 	.globl _P0M0
                                    118 	.globl _B
                                    119 	.globl _ACC
                                    120 	.globl _PSW
                                    121 	.globl _IP
                                    122 	.globl _P3
                                    123 	.globl _IE
                                    124 	.globl _P2
                                    125 	.globl _SBUF
                                    126 	.globl _SCON
                                    127 	.globl _P1
                                    128 	.globl _TH1
                                    129 	.globl _TH0
                                    130 	.globl _TL1
                                    131 	.globl _TL0
                                    132 	.globl _TMOD
                                    133 	.globl _TCON
                                    134 	.globl _PCON
                                    135 	.globl _DPH
                                    136 	.globl _DPL
                                    137 	.globl _SP
                                    138 	.globl _P0
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0	=	0x0080
                           000081   145 _SP	=	0x0081
                           000082   146 _DPL	=	0x0082
                           000083   147 _DPH	=	0x0083
                           000087   148 _PCON	=	0x0087
                           000088   149 _TCON	=	0x0088
                           000089   150 _TMOD	=	0x0089
                           00008A   151 _TL0	=	0x008a
                           00008B   152 _TL1	=	0x008b
                           00008C   153 _TH0	=	0x008c
                           00008D   154 _TH1	=	0x008d
                           000090   155 _P1	=	0x0090
                           000098   156 _SCON	=	0x0098
                           000099   157 _SBUF	=	0x0099
                           0000A0   158 _P2	=	0x00a0
                           0000A8   159 _IE	=	0x00a8
                           0000B0   160 _P3	=	0x00b0
                           0000B8   161 _IP	=	0x00b8
                           0000D0   162 _PSW	=	0x00d0
                           0000E0   163 _ACC	=	0x00e0
                           0000F0   164 _B	=	0x00f0
                           000094   165 _P0M0	=	0x0094
                           000093   166 _P0M1	=	0x0093
                           000092   167 _P1M0	=	0x0092
                           000091   168 _P1M1	=	0x0091
                           000096   169 _P2M0	=	0x0096
                           000095   170 _P2M1	=	0x0095
                           0000B2   171 _P3M0	=	0x00b2
                           0000B1   172 _P3M1	=	0x00b1
                           0000B4   173 _P4M0	=	0x00b4
                           0000B3   174 _P4M1	=	0x00b3
                           0000CA   175 _P5M0	=	0x00ca
                           0000C9   176 _P5M1	=	0x00c9
                           0000CC   177 _P6M0	=	0x00cc
                           0000CB   178 _P6M1	=	0x00cb
                           0000E2   179 _P7M0	=	0x00e2
                           0000E1   180 _P7M1	=	0x00e1
                           0000C2   181 _IAP_DATA	=	0x00c2
                           0000C3   182 _IAP_ADDRH	=	0x00c3
                           0000C4   183 _IAP_ADDRL	=	0x00c4
                           0000C5   184 _IAP_CMD	=	0x00c5
                           0000C6   185 _IAP_TRIG	=	0x00c6
                           0000C7   186 _IAP_CONTR	=	0x00c7
                           00008E   187 _AUXR	=	0x008e
                                    188 ;--------------------------------------------------------
                                    189 ; special function bits
                                    190 ;--------------------------------------------------------
                                    191 	.area RSEG    (ABS,DATA)
      000000                        192 	.org 0x0000
                           000080   193 _P0_0	=	0x0080
                           000081   194 _P0_1	=	0x0081
                           000082   195 _P0_2	=	0x0082
                           000083   196 _P0_3	=	0x0083
                           000084   197 _P0_4	=	0x0084
                           000085   198 _P0_5	=	0x0085
                           000086   199 _P0_6	=	0x0086
                           000087   200 _P0_7	=	0x0087
                           000088   201 _IT0	=	0x0088
                           000089   202 _IE0	=	0x0089
                           00008A   203 _IT1	=	0x008a
                           00008B   204 _IE1	=	0x008b
                           00008C   205 _TR0	=	0x008c
                           00008D   206 _TF0	=	0x008d
                           00008E   207 _TR1	=	0x008e
                           00008F   208 _TF1	=	0x008f
                           000090   209 _P1_0	=	0x0090
                           000091   210 _P1_1	=	0x0091
                           000092   211 _P1_2	=	0x0092
                           000093   212 _P1_3	=	0x0093
                           000094   213 _P1_4	=	0x0094
                           000095   214 _P1_5	=	0x0095
                           000096   215 _P1_6	=	0x0096
                           000097   216 _P1_7	=	0x0097
                           000098   217 _RI	=	0x0098
                           000099   218 _TI	=	0x0099
                           00009A   219 _RB8	=	0x009a
                           00009B   220 _TB8	=	0x009b
                           00009C   221 _REN	=	0x009c
                           00009D   222 _SM2	=	0x009d
                           00009E   223 _SM1	=	0x009e
                           00009F   224 _SM0	=	0x009f
                           0000A0   225 _P2_0	=	0x00a0
                           0000A1   226 _P2_1	=	0x00a1
                           0000A2   227 _P2_2	=	0x00a2
                           0000A3   228 _P2_3	=	0x00a3
                           0000A4   229 _P2_4	=	0x00a4
                           0000A5   230 _P2_5	=	0x00a5
                           0000A6   231 _P2_6	=	0x00a6
                           0000A7   232 _P2_7	=	0x00a7
                           0000A8   233 _EX0	=	0x00a8
                           0000A9   234 _ET0	=	0x00a9
                           0000AA   235 _EX1	=	0x00aa
                           0000AB   236 _ET1	=	0x00ab
                           0000AC   237 _ES	=	0x00ac
                           0000AF   238 _EA	=	0x00af
                           0000B0   239 _P3_0	=	0x00b0
                           0000B1   240 _P3_1	=	0x00b1
                           0000B2   241 _P3_2	=	0x00b2
                           0000B3   242 _P3_3	=	0x00b3
                           0000B4   243 _P3_4	=	0x00b4
                           0000B5   244 _P3_5	=	0x00b5
                           0000B6   245 _P3_6	=	0x00b6
                           0000B7   246 _P3_7	=	0x00b7
                           0000B0   247 _RXD	=	0x00b0
                           0000B1   248 _TXD	=	0x00b1
                           0000B2   249 _INT0	=	0x00b2
                           0000B3   250 _INT1	=	0x00b3
                           0000B4   251 _T0	=	0x00b4
                           0000B5   252 _T1	=	0x00b5
                           0000B6   253 _WR	=	0x00b6
                           0000B7   254 _RD	=	0x00b7
                           0000B8   255 _PX0	=	0x00b8
                           0000B9   256 _PT0	=	0x00b9
                           0000BA   257 _PX1	=	0x00ba
                           0000BB   258 _PT1	=	0x00bb
                           0000BC   259 _PS	=	0x00bc
                           0000D0   260 _P	=	0x00d0
                           0000D1   261 _F1	=	0x00d1
                           0000D2   262 _OV	=	0x00d2
                           0000D3   263 _RS0	=	0x00d3
                           0000D4   264 _RS1	=	0x00d4
                           0000D5   265 _F0	=	0x00d5
                           0000D6   266 _AC	=	0x00d6
                           0000D7   267 _CY	=	0x00d7
                                    268 ;--------------------------------------------------------
                                    269 ; overlayable register banks
                                    270 ;--------------------------------------------------------
                                    271 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        272 	.ds 8
                                    273 ;--------------------------------------------------------
                                    274 ; internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area DSEG    (DATA)
      000008                        277 _main_command_10000_27:
      000008                        278 	.ds 8
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable items in internal ram
                                    281 ;--------------------------------------------------------
                                    282 	.area	OSEG    (OVR,DATA)
      000010                        283 _setPortMode_PARM_2:
      000010                        284 	.ds 1
      000011                        285 _setPortMode_PARM_3:
      000011                        286 	.ds 1
                                    287 	.area	OSEG    (OVR,DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; Stack segment in internal ram
                                    290 ;--------------------------------------------------------
                                    291 	.area SSEG
      000012                        292 __start__stack:
      000012                        293 	.ds	1
                                    294 
                                    295 ;--------------------------------------------------------
                                    296 ; indirectly addressable internal ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area ISEG    (DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; absolute internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area IABS    (ABS,DATA)
                                    303 	.area IABS    (ABS,DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; bit data
                                    306 ;--------------------------------------------------------
                                    307 	.area BSEG    (BIT)
                                    308 ;--------------------------------------------------------
                                    309 ; paged external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area PSEG    (PAG,XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; uninitialized external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XSEG    (XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; absolute external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XABS    (ABS,XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; initialized external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XISEG   (XDATA)
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT0 (CODE)
                                    326 	.area GSINIT1 (CODE)
                                    327 	.area GSINIT2 (CODE)
                                    328 	.area GSINIT3 (CODE)
                                    329 	.area GSINIT4 (CODE)
                                    330 	.area GSINIT5 (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.area GSFINAL (CODE)
                                    333 	.area CSEG    (CODE)
                                    334 ;--------------------------------------------------------
                                    335 ; interrupt vector
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
      000000                        338 __interrupt_vect:
      000000 02 00 4C         [24]  339 	ljmp	__sdcc_gsinit_startup
                                    340 ; restartable atomic support routines
      000003                        341 	.ds	5
      000008                        342 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  343 	nop
      000009 00               [12]  344 	nop
      00000A                        345 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  346 	movx	a, @r0
      00000B FB               [12]  347 	mov	r3, a
      00000C EA               [12]  348 	mov	a, r2
      00000D F2               [24]  349 	movx	@r0, a
      00000E 80 2C            [24]  350 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  351 	nop
      000011 00               [12]  352 	nop
      000012                        353 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  354 	movx	a, @dptr
      000013 FB               [12]  355 	mov	r3, a
      000014 EA               [12]  356 	mov	a, r2
      000015 F0               [24]  357 	movx	@dptr, a
      000016 80 24            [24]  358 	sjmp	sdcc_atomic_exchange_exit
      000018                        359 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  360 	mov	a, @r0
      000019 B5 02 02         [24]  361 	cjne	a, ar2, .+#5
      00001C EB               [12]  362 	mov	a, r3
      00001D F6               [12]  363 	mov	@r0, a
      00001E 22               [24]  364 	ret
      00001F 00               [12]  365 	nop
      000020                        366 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  367 	movx	a, @r0
      000021 B5 02 02         [24]  368 	cjne	a, ar2, .+#5
      000024 EB               [12]  369 	mov	a, r3
      000025 F2               [24]  370 	movx	@r0, a
      000026 22               [24]  371 	ret
      000027 00               [12]  372 	nop
      000028                        373 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  374 	movx	a, @dptr
      000029 B5 02 02         [24]  375 	cjne	a, ar2, .+#5
      00002C EB               [12]  376 	mov	a, r3
      00002D F0               [24]  377 	movx	@dptr, a
      00002E 22               [24]  378 	ret
      00002F                        379 sdcc_atomic_exchange_rollback_end::
                                    380 
      00002F                        381 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  382 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  383 	mov	r0, dpl
      000034 20 F5 D3         [24]  384 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        385 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  386 	mov	a, r2
      000038 C6               [12]  387 	xch	a, @r0
      000039 F5 82            [12]  388 	mov	dpl, a
      00003B 22               [24]  389 	ret
      00003C                        390 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  391 	mov	dpl, r3
      00003E 22               [24]  392 	ret
      00003F                        393 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  394 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  395 	mov	r0, dpl
      000044 20 F5 D9         [24]  396 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  397 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    398 ;--------------------------------------------------------
                                    399 ; global & static initialisations
                                    400 ;--------------------------------------------------------
                                    401 	.area HOME    (CODE)
                                    402 	.area GSINIT  (CODE)
                                    403 	.area GSFINAL (CODE)
                                    404 	.area GSINIT  (CODE)
                                    405 	.globl __sdcc_gsinit_startup
                                    406 	.globl __sdcc_program_startup
                                    407 	.globl __start__stack
                                    408 	.globl __mcs51_genXINIT
                                    409 	.globl __mcs51_genXRAMCLEAR
                                    410 	.globl __mcs51_genRAMCLEAR
                                    411 	.area GSFINAL (CODE)
      0000A5 02 00 49         [24]  412 	ljmp	__sdcc_program_startup
                                    413 ;--------------------------------------------------------
                                    414 ; Home
                                    415 ;--------------------------------------------------------
                                    416 	.area HOME    (CODE)
                                    417 	.area HOME    (CODE)
      000049                        418 __sdcc_program_startup:
      000049 02 02 1A         [24]  419 	ljmp	_main
                                    420 ;	return from main will return to caller
                                    421 ;--------------------------------------------------------
                                    422 ; code
                                    423 ;--------------------------------------------------------
                                    424 	.area CSEG    (CODE)
                                    425 ;------------------------------------------------------------
                                    426 ;Allocation info for local variables in function 'setPortMode'
                                    427 ;------------------------------------------------------------
                                    428 ;bitNum        Allocated with name '_setPortMode_PARM_2'
                                    429 ;mode          Allocated with name '_setPortMode_PARM_3'
                                    430 ;port          Allocated to registers r7 
                                    431 ;tmp1          Allocated to registers r6 
                                    432 ;tmp2          Allocated to registers r5 
                                    433 ;tmp3          Allocated to registers 
                                    434 ;tmp4          Allocated to registers 
                                    435 ;------------------------------------------------------------
                                    436 ;	hello.c:27: void setPortMode(unsigned char port,unsigned char bitNum, unsigned char mode)	// sets mode of an IO pin / only works on ports 0, 3 for now
                                    437 ;	-----------------------------------------
                                    438 ;	 function setPortMode
                                    439 ;	-----------------------------------------
      0000A8                        440 _setPortMode:
                           000007   441 	ar7 = 0x07
                           000006   442 	ar6 = 0x06
                           000005   443 	ar5 = 0x05
                           000004   444 	ar4 = 0x04
                           000003   445 	ar3 = 0x03
                           000002   446 	ar2 = 0x02
                           000001   447 	ar1 = 0x01
                           000000   448 	ar0 = 0x00
      0000A8 AF 82            [24]  449 	mov	r7, dpl
                                    450 ;	hello.c:29: unsigned char tmp1 = 0;
      0000AA 7E 00            [12]  451 	mov	r6,#0x00
                                    452 ;	hello.c:30: unsigned char tmp2 = 0;
      0000AC 7D 00            [12]  453 	mov	r5,#0x00
                                    454 ;	hello.c:34: if(mode & 0x01){
      0000AE E5 11            [12]  455 	mov	a,_setPortMode_PARM_3
      0000B0 FC               [12]  456 	mov	r4,a
      0000B1 30 E0 0F         [24]  457 	jnb	acc.0,00102$
                                    458 ;	hello.c:35: tmp1 = 1 << bitNum;
      0000B4 85 10 F0         [24]  459 	mov	b,_setPortMode_PARM_2
      0000B7 05 F0            [12]  460 	inc	b
      0000B9 74 01            [12]  461 	mov	a,#0x01
      0000BB 80 02            [24]  462 	sjmp	00140$
      0000BD                        463 00139$:
      0000BD 25 E0            [12]  464 	add	a,acc
      0000BF                        465 00140$:
      0000BF D5 F0 FB         [24]  466 	djnz	b,00139$
      0000C2 FE               [12]  467 	mov	r6,a
      0000C3                        468 00102$:
                                    469 ;	hello.c:37: if(mode & 0x02){
      0000C3 EC               [12]  470 	mov	a,r4
      0000C4 30 E1 0F         [24]  471 	jnb	acc.1,00104$
                                    472 ;	hello.c:38: tmp2 = 1 << bitNum;
      0000C7 85 10 F0         [24]  473 	mov	b,_setPortMode_PARM_2
      0000CA 05 F0            [12]  474 	inc	b
      0000CC 74 01            [12]  475 	mov	a,#0x01
      0000CE 80 02            [24]  476 	sjmp	00143$
      0000D0                        477 00142$:
      0000D0 25 E0            [12]  478 	add	a,acc
      0000D2                        479 00143$:
      0000D2 D5 F0 FB         [24]  480 	djnz	b,00142$
      0000D5 FD               [12]  481 	mov	r5,a
      0000D6                        482 00104$:
                                    483 ;	hello.c:41: switch(port){
      0000D6 BF 01 02         [24]  484 	cjne	r7,#0x01,00144$
      0000D9 80 05            [24]  485 	sjmp	00105$
      0000DB                        486 00144$:
                                    487 ;	hello.c:42: case 1 :
      0000DB BF 03 1F         [24]  488 	cjne	r7,#0x03,00108$
      0000DE 80 0F            [24]  489 	sjmp	00106$
      0000E0                        490 00105$:
                                    491 ;	hello.c:43: tmp3 = (P1M0 & ~tmp1) | tmp1;
      0000E0 EE               [12]  492 	mov	a,r6
      0000E1 F4               [12]  493 	cpl	a
      0000E2 FF               [12]  494 	mov	r7,a
      0000E3 55 92            [12]  495 	anl	a,_P1M0
      0000E5 4E               [12]  496 	orl	a,r6
      0000E6 F5 92            [12]  497 	mov	_P1M0,a
                                    498 ;	hello.c:44: tmp4 = (P1M1 & ~tmp1) | tmp2;
      0000E8 EF               [12]  499 	mov	a,r7
      0000E9 55 91            [12]  500 	anl	a,_P1M1
      0000EB 4D               [12]  501 	orl	a,r5
      0000EC F5 91            [12]  502 	mov	_P1M1,a
                                    503 ;	hello.c:48: break;
                                    504 ;	hello.c:49: case 3 :
      0000EE 22               [24]  505 	ret
      0000EF                        506 00106$:
                                    507 ;	hello.c:50: tmp3 = (P3M0 & ~tmp1) | tmp1;
      0000EF EE               [12]  508 	mov	a,r6
      0000F0 F4               [12]  509 	cpl	a
      0000F1 FF               [12]  510 	mov	r7,a
      0000F2 55 B2            [12]  511 	anl	a,_P3M0
      0000F4 4E               [12]  512 	orl	a,r6
      0000F5 F5 B2            [12]  513 	mov	_P3M0,a
                                    514 ;	hello.c:51: tmp4 = (P3M1 & ~tmp1) | tmp2;
      0000F7 EF               [12]  515 	mov	a,r7
      0000F8 55 B1            [12]  516 	anl	a,_P3M1
      0000FA 4D               [12]  517 	orl	a,r5
      0000FB F5 B1            [12]  518 	mov	_P3M1,a
                                    519 ;	hello.c:56: }	
      0000FD                        520 00108$:
                                    521 ;	hello.c:58: }
      0000FD 22               [24]  522 	ret
                                    523 ;------------------------------------------------------------
                                    524 ;Allocation info for local variables in function 'Delay2400'
                                    525 ;------------------------------------------------------------
                                    526 ;	hello.c:62: void Delay2400(){	// 1 bit time for 2400 baud at 12 MHz
                                    527 ;	-----------------------------------------
                                    528 ;	 function Delay2400
                                    529 ;	-----------------------------------------
      0000FE                        530 _Delay2400:
                                    531 ;	hello.c:73: __endasm;
      0000FE C0 30            [24]  532 	push	0x30
      000100 C0 31            [24]  533 	push	0x31
      000102 75 30 04         [24]  534 	mov	0x30,#4
      000105 75 31 DC         [24]  535 	mov	0x31,#220
      000108                        536 NEXT:
      000108 D5 31 FD         [24]  537 	djnz	0x31,NEXT
      00010B D5 30 FA         [24]  538 	djnz	0x30,NEXT
      00010E D0 31            [24]  539 	pop	0x31
      000110 D0 30            [24]  540 	pop	0x30
                                    541 ;	hello.c:74: }
      000112 22               [24]  542 	ret
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'sendChar'
                                    545 ;------------------------------------------------------------
                                    546 ;c             Allocated to registers r7 
                                    547 ;mask          Allocated to registers r6 
                                    548 ;i             Allocated to registers r5 
                                    549 ;------------------------------------------------------------
                                    550 ;	hello.c:77: void sendChar(unsigned char c)	//send an ASCII character
                                    551 ;	-----------------------------------------
                                    552 ;	 function sendChar
                                    553 ;	-----------------------------------------
      000113                        554 _sendChar:
      000113 AF 82            [24]  555 	mov	r7, dpl
                                    556 ;	hello.c:79: unsigned char mask = 1;	//bit mask
      000115 7E 01            [12]  557 	mov	r6,#0x01
                                    558 ;	hello.c:82: Delay2400();// wait 2 Stop bits before sending the char to give a stop bit if routine is called again before a stop bit time period has passed
      000117 C0 07            [24]  559 	push	ar7
      000119 C0 06            [24]  560 	push	ar6
      00011B 12 00 FE         [24]  561 	lcall	_Delay2400
                                    562 ;	hello.c:83: Delay2400();
      00011E 12 00 FE         [24]  563 	lcall	_Delay2400
                                    564 ;	hello.c:85: TX_LOW;              // low the line for start bit
                                    565 ;	assignBit
      000121 C2 B1            [12]  566 	clr	_P3_1
                                    567 ;	hello.c:87: Delay2400();	//wait 1 bit time for start bit
      000123 12 00 FE         [24]  568 	lcall	_Delay2400
      000126 D0 06            [24]  569 	pop	ar6
      000128 D0 07            [24]  570 	pop	ar7
                                    571 ;	hello.c:89: for (i=0; i<8 ;i++){
      00012A 7D 00            [12]  572 	mov	r5,#0x00
      00012C                        573 00105$:
                                    574 ;	hello.c:90: if (c & mask){
      00012C EE               [12]  575 	mov	a,r6
      00012D 5F               [12]  576 	anl	a,r7
      00012E 60 04            [24]  577 	jz	00102$
                                    578 ;	hello.c:91: TX_HIGH;
                                    579 ;	assignBit
      000130 D2 B1            [12]  580 	setb	_P3_1
      000132 80 02            [24]  581 	sjmp	00103$
      000134                        582 00102$:
                                    583 ;	hello.c:94: TX_LOW;
                                    584 ;	assignBit
      000134 C2 B1            [12]  585 	clr	_P3_1
      000136                        586 00103$:
                                    587 ;	hello.c:96: mask <<= 1;
      000136 EE               [12]  588 	mov	a,r6
      000137 2E               [12]  589 	add	a,r6
      000138 FE               [12]  590 	mov	r6,a
                                    591 ;	hello.c:97: Delay2400();
      000139 C0 07            [24]  592 	push	ar7
      00013B C0 06            [24]  593 	push	ar6
      00013D C0 05            [24]  594 	push	ar5
      00013F 12 00 FE         [24]  595 	lcall	_Delay2400
      000142 D0 05            [24]  596 	pop	ar5
      000144 D0 06            [24]  597 	pop	ar6
      000146 D0 07            [24]  598 	pop	ar7
                                    599 ;	hello.c:89: for (i=0; i<8 ;i++){
      000148 0D               [12]  600 	inc	r5
      000149 BD 08 00         [24]  601 	cjne	r5,#0x08,00129$
      00014C                        602 00129$:
      00014C 40 DE            [24]  603 	jc	00105$
                                    604 ;	hello.c:99: TX_HIGH;            //Return TXDATA pin to "1".
                                    605 ;	assignBit
      00014E D2 B1            [12]  606 	setb	_P3_1
                                    607 ;	hello.c:100: }
      000150 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'sendCRLF'
                                    611 ;------------------------------------------------------------
                                    612 ;	hello.c:103: void sendCRLF(void)
                                    613 ;	-----------------------------------------
                                    614 ;	 function sendCRLF
                                    615 ;	-----------------------------------------
      000151                        616 _sendCRLF:
                                    617 ;	hello.c:105: sendChar(13);
      000151 75 82 0D         [24]  618 	mov	dpl, #0x0d
      000154 12 01 13         [24]  619 	lcall	_sendChar
                                    620 ;	hello.c:106: sendChar(10);
      000157 75 82 0A         [24]  621 	mov	dpl, #0x0a
                                    622 ;	hello.c:107: }
      00015A 02 01 13         [24]  623 	ljmp	_sendChar
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'receiveChar'
                                    626 ;------------------------------------------------------------
                                    627 ;receivedChar  Allocated to registers r7 
                                    628 ;i             Allocated to registers r6 
                                    629 ;------------------------------------------------------------
                                    630 ;	hello.c:109: unsigned char receiveChar(void) {
                                    631 ;	-----------------------------------------
                                    632 ;	 function receiveChar
                                    633 ;	-----------------------------------------
      00015D                        634 _receiveChar:
                                    635 ;	hello.c:110: unsigned char receivedChar = 0;
      00015D 7F 00            [12]  636 	mov	r7,#0x00
                                    637 ;	hello.c:112: while (rxLine == 1);
      00015F                        638 00101$:
      00015F 20 B0 FD         [24]  639 	jb	_P3_0,00101$
                                    640 ;	hello.c:113: Delay2400(); // Wait for the start bit to finish
      000162 C0 07            [24]  641 	push	ar7
      000164 12 00 FE         [24]  642 	lcall	_Delay2400
      000167 D0 07            [24]  643 	pop	ar7
                                    644 ;	hello.c:115: for (unsigned char i = 0; i < 8; i++) {
      000169 7E 00            [12]  645 	mov	r6,#0x00
      00016B                        646 00108$:
      00016B BE 08 00         [24]  647 	cjne	r6,#0x08,00144$
      00016E                        648 00144$:
      00016E 50 20            [24]  649 	jnc	00106$
                                    650 ;	hello.c:116: Delay2400(); // Wait for the bit time
      000170 C0 07            [24]  651 	push	ar7
      000172 C0 06            [24]  652 	push	ar6
      000174 12 00 FE         [24]  653 	lcall	_Delay2400
      000177 D0 06            [24]  654 	pop	ar6
      000179 D0 07            [24]  655 	pop	ar7
                                    656 ;	hello.c:117: if (rxLine == 1) {
      00017B 30 B0 0F         [24]  657 	jnb	_P3_0,00109$
                                    658 ;	hello.c:118: receivedChar |= (1 << i);
      00017E 8E F0            [24]  659 	mov	b,r6
      000180 05 F0            [12]  660 	inc	b
      000182 74 01            [12]  661 	mov	a,#0x01
      000184 80 02            [24]  662 	sjmp	00148$
      000186                        663 00147$:
      000186 25 E0            [12]  664 	add	a,acc
      000188                        665 00148$:
      000188 D5 F0 FB         [24]  666 	djnz	b,00147$
      00018B 42 07            [12]  667 	orl	ar7,a
      00018D                        668 00109$:
                                    669 ;	hello.c:115: for (unsigned char i = 0; i < 8; i++) {
      00018D 0E               [12]  670 	inc	r6
      00018E 80 DB            [24]  671 	sjmp	00108$
      000190                        672 00106$:
                                    673 ;	hello.c:121: Delay2400(); // Wait for the stop bit
      000190 C0 07            [24]  674 	push	ar7
      000192 12 00 FE         [24]  675 	lcall	_Delay2400
      000195 D0 07            [24]  676 	pop	ar7
                                    677 ;	hello.c:122: return receivedChar;
      000197 8F 82            [24]  678 	mov	dpl, r7
                                    679 ;	hello.c:123: }
      000199 22               [24]  680 	ret
                                    681 ;------------------------------------------------------------
                                    682 ;Allocation info for local variables in function 'processCommand'
                                    683 ;------------------------------------------------------------
                                    684 ;command       Allocated to registers r5 r6 r7 
                                    685 ;channel       Allocated to registers r4 
                                    686 ;action        Allocated to registers r7 
                                    687 ;------------------------------------------------------------
                                    688 ;	hello.c:125: void processCommand(unsigned char* command) {
                                    689 ;	-----------------------------------------
                                    690 ;	 function processCommand
                                    691 ;	-----------------------------------------
      00019A                        692 _processCommand:
                                    693 ;	hello.c:126: if (command[0] == 0x55 && command[1] == 0x56) {
      00019A AD 82            [24]  694 	mov	r5,dpl
      00019C AE 83            [24]  695 	mov	r6,dph
      00019E AF F0            [24]  696 	mov	r7,b
      0001A0 12 02 8D         [24]  697 	lcall	__gptrget
      0001A3 FC               [12]  698 	mov	r4,a
      0001A4 BC 55 02         [24]  699 	cjne	r4,#0x55,00179$
      0001A7 80 01            [24]  700 	sjmp	00180$
      0001A9                        701 00179$:
      0001A9 22               [24]  702 	ret
      0001AA                        703 00180$:
      0001AA 74 01            [12]  704 	mov	a,#0x01
      0001AC 2D               [12]  705 	add	a, r5
      0001AD FA               [12]  706 	mov	r2,a
      0001AE E4               [12]  707 	clr	a
      0001AF 3E               [12]  708 	addc	a, r6
      0001B0 FB               [12]  709 	mov	r3,a
      0001B1 8F 04            [24]  710 	mov	ar4,r7
      0001B3 8A 82            [24]  711 	mov	dpl,r2
      0001B5 8B 83            [24]  712 	mov	dph,r3
      0001B7 8C F0            [24]  713 	mov	b,r4
      0001B9 12 02 8D         [24]  714 	lcall	__gptrget
      0001BC FA               [12]  715 	mov	r2,a
      0001BD BA 56 59         [24]  716 	cjne	r2,#0x56,00117$
                                    717 ;	hello.c:127: unsigned char channel = command[5];
      0001C0 74 05            [12]  718 	mov	a,#0x05
      0001C2 2D               [12]  719 	add	a, r5
      0001C3 FA               [12]  720 	mov	r2,a
      0001C4 E4               [12]  721 	clr	a
      0001C5 3E               [12]  722 	addc	a, r6
      0001C6 FB               [12]  723 	mov	r3,a
      0001C7 8F 04            [24]  724 	mov	ar4,r7
      0001C9 8A 82            [24]  725 	mov	dpl,r2
      0001CB 8B 83            [24]  726 	mov	dph,r3
      0001CD 8C F0            [24]  727 	mov	b,r4
      0001CF 12 02 8D         [24]  728 	lcall	__gptrget
      0001D2 FC               [12]  729 	mov	r4,a
                                    730 ;	hello.c:128: unsigned char action = command[6];
      0001D3 74 06            [12]  731 	mov	a,#0x06
      0001D5 2D               [12]  732 	add	a, r5
      0001D6 FD               [12]  733 	mov	r5,a
      0001D7 E4               [12]  734 	clr	a
      0001D8 3E               [12]  735 	addc	a, r6
      0001D9 FE               [12]  736 	mov	r6,a
      0001DA 8D 82            [24]  737 	mov	dpl,r5
      0001DC 8E 83            [24]  738 	mov	dph,r6
      0001DE 8F F0            [24]  739 	mov	b,r7
      0001E0 12 02 8D         [24]  740 	lcall	__gptrget
      0001E3 FF               [12]  741 	mov	r7,a
                                    742 ;	hello.c:130: if (action == 0x01) { // Open relay
      0001E4 BF 01 18         [24]  743 	cjne	r7,#0x01,00112$
                                    744 ;	hello.c:131: switch (channel) {
      0001E7 BC 01 02         [24]  745 	cjne	r4,#0x01,00185$
      0001EA 80 0A            [24]  746 	sjmp	00101$
      0001EC                        747 00185$:
      0001EC BC 02 02         [24]  748 	cjne	r4,#0x02,00186$
      0001EF 80 08            [24]  749 	sjmp	00102$
      0001F1                        750 00186$:
                                    751 ;	hello.c:132: case 0x01:
      0001F1 BC 03 25         [24]  752 	cjne	r4,#0x03,00117$
      0001F4 80 06            [24]  753 	sjmp	00103$
      0001F6                        754 00101$:
                                    755 ;	hello.c:133: relay1 = 1; // Open relay 1
                                    756 ;	assignBit
      0001F6 D2 B2            [12]  757 	setb	_P3_2
                                    758 ;	hello.c:134: break;
                                    759 ;	hello.c:135: case 0x02:
      0001F8 22               [24]  760 	ret
      0001F9                        761 00102$:
                                    762 ;	hello.c:136: relay2 = 1; // Open relay 2
                                    763 ;	assignBit
      0001F9 D2 B3            [12]  764 	setb	_P3_3
                                    765 ;	hello.c:137: break;
                                    766 ;	hello.c:138: case 0x03:
      0001FB 22               [24]  767 	ret
      0001FC                        768 00103$:
                                    769 ;	hello.c:139: relay3 = 1; // Open relay 3
                                    770 ;	assignBit
      0001FC D2 B5            [12]  771 	setb	_P3_5
                                    772 ;	hello.c:141: }
      0001FE 22               [24]  773 	ret
      0001FF                        774 00112$:
                                    775 ;	hello.c:142: } else if (action == 0x02) { // Close relay
      0001FF BF 02 17         [24]  776 	cjne	r7,#0x02,00117$
                                    777 ;	hello.c:143: switch (channel) {
      000202 BC 01 02         [24]  778 	cjne	r4,#0x01,00190$
      000205 80 0A            [24]  779 	sjmp	00105$
      000207                        780 00190$:
      000207 BC 02 02         [24]  781 	cjne	r4,#0x02,00191$
      00020A 80 08            [24]  782 	sjmp	00106$
      00020C                        783 00191$:
                                    784 ;	hello.c:144: case 0x01:
      00020C BC 03 0A         [24]  785 	cjne	r4,#0x03,00117$
      00020F 80 06            [24]  786 	sjmp	00107$
      000211                        787 00105$:
                                    788 ;	hello.c:145: relay1 = 0; // Close relay 1
                                    789 ;	assignBit
      000211 C2 B2            [12]  790 	clr	_P3_2
                                    791 ;	hello.c:146: break;
                                    792 ;	hello.c:147: case 0x02:
      000213 22               [24]  793 	ret
      000214                        794 00106$:
                                    795 ;	hello.c:148: relay2 = 0; // Close relay 2
                                    796 ;	assignBit
      000214 C2 B3            [12]  797 	clr	_P3_3
                                    798 ;	hello.c:149: break;
                                    799 ;	hello.c:150: case 0x03:
      000216 22               [24]  800 	ret
      000217                        801 00107$:
                                    802 ;	hello.c:151: relay3 = 0; // Close relay 3
                                    803 ;	assignBit
      000217 C2 B5            [12]  804 	clr	_P3_5
                                    805 ;	hello.c:153: }
      000219                        806 00117$:
                                    807 ;	hello.c:156: }
      000219 22               [24]  808 	ret
                                    809 ;------------------------------------------------------------
                                    810 ;Allocation info for local variables in function 'main'
                                    811 ;------------------------------------------------------------
                                    812 ;delayCtr      Allocated to registers r5 r6 
                                    813 ;receivedChar  Allocated with name '_main_receivedChar_10000_27'
                                    814 ;command       Allocated with name '_main_command_10000_27'
                                    815 ;commandIndex  Allocated to registers r7 
                                    816 ;------------------------------------------------------------
                                    817 ;	hello.c:158: void main()
                                    818 ;	-----------------------------------------
                                    819 ;	 function main
                                    820 ;	-----------------------------------------
      00021A                        821 _main:
                                    822 ;	hello.c:164: unsigned char commandIndex = 0;
      00021A 7F 00            [12]  823 	mov	r7,#0x00
                                    824 ;	hello.c:168: setPortMode(3,2,1);		//this should make bit 3 on P3 a push pull output
      00021C 75 10 02         [24]  825 	mov	_setPortMode_PARM_2,#0x02
      00021F 75 11 01         [24]  826 	mov	_setPortMode_PARM_3,#0x01
      000222 75 82 03         [24]  827 	mov	dpl, #0x03
      000225 C0 07            [24]  828 	push	ar7
      000227 12 00 A8         [24]  829 	lcall	_setPortMode
                                    830 ;	hello.c:169: setPortMode(3,3,1);		//this should make bit 4 on P3 a push pull output
      00022A 75 10 03         [24]  831 	mov	_setPortMode_PARM_2,#0x03
      00022D 75 11 01         [24]  832 	mov	_setPortMode_PARM_3,#0x01
      000230 75 82 03         [24]  833 	mov	dpl, #0x03
      000233 12 00 A8         [24]  834 	lcall	_setPortMode
                                    835 ;	hello.c:170: setPortMode(3,5,1);		//this should make bit 5 on P3 a push pull output
      000236 75 10 05         [24]  836 	mov	_setPortMode_PARM_2,#0x05
      000239 75 11 01         [24]  837 	mov	_setPortMode_PARM_3,#0x01
      00023C 75 82 03         [24]  838 	mov	dpl, #0x03
      00023F 12 00 A8         [24]  839 	lcall	_setPortMode
      000242 D0 07            [24]  840 	pop	ar7
                                    841 ;	hello.c:172: led = 0;
                                    842 ;	assignBit
      000244 C2 B4            [12]  843 	clr	_P3_4
                                    844 ;	hello.c:176: for(delayCtr = 2400;delayCtr > 0;delayCtr--)	//wait 1 second
      000246                        845 00115$:
      000246 7D 60            [12]  846 	mov	r5,#0x60
      000248 7E 09            [12]  847 	mov	r6,#0x09
      00024A                        848 00108$:
                                    849 ;	hello.c:178: Delay2400();
      00024A C0 07            [24]  850 	push	ar7
      00024C C0 06            [24]  851 	push	ar6
      00024E C0 05            [24]  852 	push	ar5
      000250 12 00 FE         [24]  853 	lcall	_Delay2400
      000253 D0 05            [24]  854 	pop	ar5
      000255 D0 06            [24]  855 	pop	ar6
      000257 D0 07            [24]  856 	pop	ar7
                                    857 ;	hello.c:176: for(delayCtr = 2400;delayCtr > 0;delayCtr--)	//wait 1 second
      000259 1D               [12]  858 	dec	r5
      00025A BD FF 01         [24]  859 	cjne	r5,#0xff,00139$
      00025D 1E               [12]  860 	dec	r6
      00025E                        861 00139$:
      00025E ED               [12]  862 	mov	a,r5
      00025F 4E               [12]  863 	orl	a,r6
      000260 70 E8            [24]  864 	jnz	00108$
                                    865 ;	hello.c:180: led = !led;	//toggle led
      000262 B2 B4            [12]  866 	cpl	_P3_4
                                    867 ;	hello.c:183: if (commandIndex < 8) {
      000264 BF 08 00         [24]  868 	cjne	r7,#0x08,00141$
      000267                        869 00141$:
      000267 50 17            [24]  870 	jnc	00103$
                                    871 ;	hello.c:184: command[commandIndex++] = receiveChar();
      000269 8F 06            [24]  872 	mov	ar6,r7
      00026B 0F               [12]  873 	inc	r7
      00026C EE               [12]  874 	mov	a,r6
      00026D 24 08            [12]  875 	add	a, #_main_command_10000_27
      00026F F9               [12]  876 	mov	r1,a
      000270 C0 07            [24]  877 	push	ar7
      000272 C0 01            [24]  878 	push	ar1
      000274 12 01 5D         [24]  879 	lcall	_receiveChar
      000277 E5 82            [12]  880 	mov	a, dpl
      000279 D0 01            [24]  881 	pop	ar1
      00027B D0 07            [24]  882 	pop	ar7
      00027D F7               [12]  883 	mov	@r1,a
      00027E 80 C6            [24]  884 	sjmp	00115$
      000280                        885 00103$:
                                    886 ;	hello.c:186: processCommand(command);
      000280 90 00 08         [24]  887 	mov	dptr,#_main_command_10000_27
      000283 75 F0 40         [24]  888 	mov	b, #0x40
      000286 12 01 9A         [24]  889 	lcall	_processCommand
                                    890 ;	hello.c:187: commandIndex = 0; // Reset for next command
      000289 7F 00            [12]  891 	mov	r7,#0x00
                                    892 ;	hello.c:190: }	  
      00028B 80 B9            [24]  893 	sjmp	00115$
                                    894 	.area CSEG    (CODE)
                                    895 	.area CONST   (CODE)
                                    896 	.area XINIT   (CODE)
                                    897 	.area CABS    (ABS,CODE)
