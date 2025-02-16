;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module hello
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _setPortMode_PARM_3
	.globl _setPortMode_PARM_2
	.globl _main
	.globl _processCommand
	.globl _receiveChar
	.globl _sendCRLF
	.globl _sendChar
	.globl _Delay2400
	.globl _setPortMode
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
	.globl _AUXR
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _P7M1
	.globl _P7M0
	.globl _P6M1
	.globl _P6M0
	.globl _P5M1
	.globl _P5M0
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
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
_P0M0	=	0x0094
_P0M1	=	0x0093
_P1M0	=	0x0092
_P1M1	=	0x0091
_P2M0	=	0x0096
_P2M1	=	0x0095
_P3M0	=	0x00b2
_P3M1	=	0x00b1
_P4M0	=	0x00b4
_P4M1	=	0x00b3
_P5M0	=	0x00ca
_P5M1	=	0x00c9
_P6M0	=	0x00cc
_P6M1	=	0x00cb
_P7M0	=	0x00e2
_P7M1	=	0x00e1
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
_AUXR	=	0x008e
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_command_10000_27:
	.ds 8
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_setPortMode_PARM_2:
	.ds 1
_setPortMode_PARM_3:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
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
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
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
; restartable atomic support routines
	.ds	5
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
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
;Allocation info for local variables in function 'setPortMode'
;------------------------------------------------------------
;bitNum        Allocated with name '_setPortMode_PARM_2'
;mode          Allocated with name '_setPortMode_PARM_3'
;port          Allocated to registers r7 
;tmp1          Allocated to registers r6 
;tmp2          Allocated to registers r5 
;tmp3          Allocated to registers 
;tmp4          Allocated to registers 
;------------------------------------------------------------
;	hello.c:27: void setPortMode(unsigned char port,unsigned char bitNum, unsigned char mode)	// sets mode of an IO pin / only works on ports 0, 3 for now
;	-----------------------------------------
;	 function setPortMode
;	-----------------------------------------
_setPortMode:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7, dpl
;	hello.c:29: unsigned char tmp1 = 0;
	mov	r6,#0x00
;	hello.c:30: unsigned char tmp2 = 0;
	mov	r5,#0x00
;	hello.c:34: if(mode & 0x01){
	mov	a,_setPortMode_PARM_3
	mov	r4,a
	jnb	acc.0,00102$
;	hello.c:35: tmp1 = 1 << bitNum;
	mov	b,_setPortMode_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	00140$
00139$:
	add	a,acc
00140$:
	djnz	b,00139$
	mov	r6,a
00102$:
;	hello.c:37: if(mode & 0x02){
	mov	a,r4
	jnb	acc.1,00104$
;	hello.c:38: tmp2 = 1 << bitNum;
	mov	b,_setPortMode_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	00143$
00142$:
	add	a,acc
00143$:
	djnz	b,00142$
	mov	r5,a
00104$:
;	hello.c:41: switch(port){
	cjne	r7,#0x01,00144$
	sjmp	00105$
00144$:
;	hello.c:42: case 1 :
	cjne	r7,#0x03,00108$
	sjmp	00106$
00105$:
;	hello.c:43: tmp3 = (P1M0 & ~tmp1) | tmp1;
	mov	a,r6
	cpl	a
	mov	r7,a
	anl	a,_P1M0
	orl	a,r6
	mov	_P1M0,a
;	hello.c:44: tmp4 = (P1M1 & ~tmp1) | tmp2;
	mov	a,r7
	anl	a,_P1M1
	orl	a,r5
	mov	_P1M1,a
;	hello.c:48: break;
;	hello.c:49: case 3 :
	ret
00106$:
;	hello.c:50: tmp3 = (P3M0 & ~tmp1) | tmp1;
	mov	a,r6
	cpl	a
	mov	r7,a
	anl	a,_P3M0
	orl	a,r6
	mov	_P3M0,a
;	hello.c:51: tmp4 = (P3M1 & ~tmp1) | tmp2;
	mov	a,r7
	anl	a,_P3M1
	orl	a,r5
	mov	_P3M1,a
;	hello.c:56: }	
00108$:
;	hello.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay2400'
;------------------------------------------------------------
;	hello.c:62: void Delay2400(){	// 1 bit time for 2400 baud at 12 MHz
;	-----------------------------------------
;	 function Delay2400
;	-----------------------------------------
_Delay2400:
;	hello.c:73: __endasm;
	push	0x30
	push	0x31
	mov	0x30,#4
	mov	0x31,#220
NEXT:
	djnz	0x31,NEXT
	djnz	0x30,NEXT
	pop	0x31
	pop	0x30
;	hello.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c             Allocated to registers r7 
;mask          Allocated to registers r6 
;i             Allocated to registers r5 
;------------------------------------------------------------
;	hello.c:77: void sendChar(unsigned char c)	//send an ASCII character
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7, dpl
;	hello.c:79: unsigned char mask = 1;	//bit mask
	mov	r6,#0x01
;	hello.c:82: Delay2400();// wait 2 Stop bits before sending the char to give a stop bit if routine is called again before a stop bit time period has passed
	push	ar7
	push	ar6
	lcall	_Delay2400
;	hello.c:83: Delay2400();
	lcall	_Delay2400
;	hello.c:85: TX_LOW;              // low the line for start bit
;	assignBit
	clr	_P3_1
;	hello.c:87: Delay2400();	//wait 1 bit time for start bit
	lcall	_Delay2400
	pop	ar6
	pop	ar7
;	hello.c:89: for (i=0; i<8 ;i++){
	mov	r5,#0x00
00105$:
;	hello.c:90: if (c & mask){
	mov	a,r6
	anl	a,r7
	jz	00102$
;	hello.c:91: TX_HIGH;
;	assignBit
	setb	_P3_1
	sjmp	00103$
00102$:
;	hello.c:94: TX_LOW;
;	assignBit
	clr	_P3_1
00103$:
;	hello.c:96: mask <<= 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
;	hello.c:97: Delay2400();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Delay2400
	pop	ar5
	pop	ar6
	pop	ar7
;	hello.c:89: for (i=0; i<8 ;i++){
	inc	r5
	cjne	r5,#0x08,00129$
00129$:
	jc	00105$
;	hello.c:99: TX_HIGH;            //Return TXDATA pin to "1".
;	assignBit
	setb	_P3_1
;	hello.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendCRLF'
;------------------------------------------------------------
;	hello.c:103: void sendCRLF(void)
;	-----------------------------------------
;	 function sendCRLF
;	-----------------------------------------
_sendCRLF:
;	hello.c:105: sendChar(13);
	mov	dpl, #0x0d
	lcall	_sendChar
;	hello.c:106: sendChar(10);
	mov	dpl, #0x0a
;	hello.c:107: }
	ljmp	_sendChar
;------------------------------------------------------------
;Allocation info for local variables in function 'receiveChar'
;------------------------------------------------------------
;receivedChar  Allocated to registers r7 
;i             Allocated to registers r6 
;------------------------------------------------------------
;	hello.c:109: unsigned char receiveChar(void) {
;	-----------------------------------------
;	 function receiveChar
;	-----------------------------------------
_receiveChar:
;	hello.c:110: unsigned char receivedChar = 0;
	mov	r7,#0x00
;	hello.c:112: while (rxLine == 1);
00101$:
	jb	_P3_0,00101$
;	hello.c:113: Delay2400(); // Wait for the start bit to finish
	push	ar7
	lcall	_Delay2400
	pop	ar7
;	hello.c:115: for (unsigned char i = 0; i < 8; i++) {
	mov	r6,#0x00
00108$:
	cjne	r6,#0x08,00144$
00144$:
	jnc	00106$
;	hello.c:116: Delay2400(); // Wait for the bit time
	push	ar7
	push	ar6
	lcall	_Delay2400
	pop	ar6
	pop	ar7
;	hello.c:117: if (rxLine == 1) {
	jnb	_P3_0,00109$
;	hello.c:118: receivedChar |= (1 << i);
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00148$
00147$:
	add	a,acc
00148$:
	djnz	b,00147$
	orl	ar7,a
00109$:
;	hello.c:115: for (unsigned char i = 0; i < 8; i++) {
	inc	r6
	sjmp	00108$
00106$:
;	hello.c:121: Delay2400(); // Wait for the stop bit
	push	ar7
	lcall	_Delay2400
	pop	ar7
;	hello.c:122: return receivedChar;
	mov	dpl, r7
;	hello.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'processCommand'
;------------------------------------------------------------
;command       Allocated to registers r5 r6 r7 
;channel       Allocated to registers r4 
;action        Allocated to registers r7 
;------------------------------------------------------------
;	hello.c:125: void processCommand(unsigned char* command) {
;	-----------------------------------------
;	 function processCommand
;	-----------------------------------------
_processCommand:
;	hello.c:126: if (command[0] == 0x55 && command[1] == 0x56) {
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x55,00179$
	sjmp	00180$
00179$:
	ret
00180$:
	mov	a,#0x01
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x56,00117$
;	hello.c:127: unsigned char channel = command[5];
	mov	a,#0x05
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
;	hello.c:128: unsigned char action = command[6];
	mov	a,#0x06
	add	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
;	hello.c:130: if (action == 0x01) { // Open relay
	cjne	r7,#0x01,00112$
;	hello.c:131: switch (channel) {
	cjne	r4,#0x01,00185$
	sjmp	00101$
00185$:
	cjne	r4,#0x02,00186$
	sjmp	00102$
00186$:
;	hello.c:132: case 0x01:
	cjne	r4,#0x03,00117$
	sjmp	00103$
00101$:
;	hello.c:133: relay1 = 1; // Open relay 1
;	assignBit
	setb	_P3_2
;	hello.c:134: break;
;	hello.c:135: case 0x02:
	ret
00102$:
;	hello.c:136: relay2 = 1; // Open relay 2
;	assignBit
	setb	_P3_3
;	hello.c:137: break;
;	hello.c:138: case 0x03:
	ret
00103$:
;	hello.c:139: relay3 = 1; // Open relay 3
;	assignBit
	setb	_P3_5
;	hello.c:141: }
	ret
00112$:
;	hello.c:142: } else if (action == 0x02) { // Close relay
	cjne	r7,#0x02,00117$
;	hello.c:143: switch (channel) {
	cjne	r4,#0x01,00190$
	sjmp	00105$
00190$:
	cjne	r4,#0x02,00191$
	sjmp	00106$
00191$:
;	hello.c:144: case 0x01:
	cjne	r4,#0x03,00117$
	sjmp	00107$
00105$:
;	hello.c:145: relay1 = 0; // Close relay 1
;	assignBit
	clr	_P3_2
;	hello.c:146: break;
;	hello.c:147: case 0x02:
	ret
00106$:
;	hello.c:148: relay2 = 0; // Close relay 2
;	assignBit
	clr	_P3_3
;	hello.c:149: break;
;	hello.c:150: case 0x03:
	ret
00107$:
;	hello.c:151: relay3 = 0; // Close relay 3
;	assignBit
	clr	_P3_5
;	hello.c:153: }
00117$:
;	hello.c:156: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;delayCtr      Allocated to registers r5 r6 
;receivedChar  Allocated with name '_main_receivedChar_10000_27'
;command       Allocated with name '_main_command_10000_27'
;commandIndex  Allocated to registers r7 
;------------------------------------------------------------
;	hello.c:158: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	hello.c:164: unsigned char commandIndex = 0;
	mov	r7,#0x00
;	hello.c:168: setPortMode(3,2,1);		//this should make bit 3 on P3 a push pull output
	mov	_setPortMode_PARM_2,#0x02
	mov	_setPortMode_PARM_3,#0x01
	mov	dpl, #0x03
	push	ar7
	lcall	_setPortMode
;	hello.c:169: setPortMode(3,3,1);		//this should make bit 4 on P3 a push pull output
	mov	_setPortMode_PARM_2,#0x03
	mov	_setPortMode_PARM_3,#0x01
	mov	dpl, #0x03
	lcall	_setPortMode
;	hello.c:170: setPortMode(3,5,1);		//this should make bit 5 on P3 a push pull output
	mov	_setPortMode_PARM_2,#0x05
	mov	_setPortMode_PARM_3,#0x01
	mov	dpl, #0x03
	lcall	_setPortMode
	pop	ar7
;	hello.c:172: led = 0;
;	assignBit
	clr	_P3_4
;	hello.c:176: for(delayCtr = 2400;delayCtr > 0;delayCtr--)	//wait 1 second
00115$:
	mov	r5,#0x60
	mov	r6,#0x09
00108$:
;	hello.c:178: Delay2400();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Delay2400
	pop	ar5
	pop	ar6
	pop	ar7
;	hello.c:176: for(delayCtr = 2400;delayCtr > 0;delayCtr--)	//wait 1 second
	dec	r5
	cjne	r5,#0xff,00139$
	dec	r6
00139$:
	mov	a,r5
	orl	a,r6
	jnz	00108$
;	hello.c:180: led = !led;	//toggle led
	cpl	_P3_4
;	hello.c:183: if (commandIndex < 8) {
	cjne	r7,#0x08,00141$
00141$:
	jnc	00103$
;	hello.c:184: command[commandIndex++] = receiveChar();
	mov	ar6,r7
	inc	r7
	mov	a,r6
	add	a, #_main_command_10000_27
	mov	r1,a
	push	ar7
	push	ar1
	lcall	_receiveChar
	mov	a, dpl
	pop	ar1
	pop	ar7
	mov	@r1,a
	sjmp	00115$
00103$:
;	hello.c:186: processCommand(command);
	mov	dptr,#_main_command_10000_27
	mov	b, #0x40
	lcall	_processCommand
;	hello.c:187: commandIndex = 0; // Reset for next command
	mov	r7,#0x00
;	hello.c:190: }	  
	sjmp	00115$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
