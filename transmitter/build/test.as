subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og9 "

pagewidth 120

	opt flic

	processor	16F676
include "/opt/microchip/xc8/v2.46/pic/include/proc/16f676.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PORTC equ 07h ;# 
# 268 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PCLATH equ 0Ah ;# 
# 288 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
INTCON equ 0Bh ;# 
# 366 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PIR1 equ 0Ch ;# 
# 414 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR1 equ 0Eh ;# 
# 421 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR1L equ 0Eh ;# 
# 428 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR1H equ 0Fh ;# 
# 435 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
T1CON equ 010h ;# 
# 500 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
CMCON equ 019h ;# 
# 559 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADRESH equ 01Eh ;# 
# 566 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADCON0 equ 01Fh ;# 
# 656 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
OPTION_REG equ 081h ;# 
# 733 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TRISA equ 085h ;# 
# 783 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TRISC equ 087h ;# 
# 833 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PIE1 equ 08Ch ;# 
# 881 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PCON equ 08Eh ;# 
# 915 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
OSCCAL equ 090h ;# 
# 975 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ANSEL equ 091h ;# 
# 1037 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
WPUA equ 095h ;# 
# 1042 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
WPU equ 095h ;# 
# 1125 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
IOCA equ 096h ;# 
# 1130 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
IOC equ 096h ;# 
# 1223 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
VRCON equ 099h ;# 
# 1283 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EEDAT equ 09Ah ;# 
# 1288 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EEDATA equ 09Ah ;# 
# 1321 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EEADR equ 09Bh ;# 
# 1328 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EECON1 equ 09Ch ;# 
# 1366 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EECON2 equ 09Dh ;# 
# 1373 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADRESL equ 09Eh ;# 
# 1380 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADCON1 equ 09Fh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PORTC equ 07h ;# 
# 268 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PCLATH equ 0Ah ;# 
# 288 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
INTCON equ 0Bh ;# 
# 366 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PIR1 equ 0Ch ;# 
# 414 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR1 equ 0Eh ;# 
# 421 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR1L equ 0Eh ;# 
# 428 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR1H equ 0Fh ;# 
# 435 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
T1CON equ 010h ;# 
# 500 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
CMCON equ 019h ;# 
# 559 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADRESH equ 01Eh ;# 
# 566 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADCON0 equ 01Fh ;# 
# 656 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
OPTION_REG equ 081h ;# 
# 733 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TRISA equ 085h ;# 
# 783 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TRISC equ 087h ;# 
# 833 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PIE1 equ 08Ch ;# 
# 881 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PCON equ 08Eh ;# 
# 915 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
OSCCAL equ 090h ;# 
# 975 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ANSEL equ 091h ;# 
# 1037 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
WPUA equ 095h ;# 
# 1042 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
WPU equ 095h ;# 
# 1125 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
IOCA equ 096h ;# 
# 1130 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
IOC equ 096h ;# 
# 1223 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
VRCON equ 099h ;# 
# 1283 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EEDAT equ 09Ah ;# 
# 1288 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EEDATA equ 09Ah ;# 
# 1321 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EEADR equ 09Bh ;# 
# 1328 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EECON1 equ 09Ch ;# 
# 1366 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EECON2 equ 09Dh ;# 
# 1373 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADRESL equ 09Eh ;# 
# 1380 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADCON1 equ 09Fh ;# 
# 54 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
INDF equ 00h ;# 
# 61 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR0 equ 01h ;# 
# 68 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PCL equ 02h ;# 
# 75 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
STATUS equ 03h ;# 
# 161 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
FSR equ 04h ;# 
# 168 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PORTA equ 05h ;# 
# 218 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PORTC equ 07h ;# 
# 268 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PCLATH equ 0Ah ;# 
# 288 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
INTCON equ 0Bh ;# 
# 366 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PIR1 equ 0Ch ;# 
# 414 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR1 equ 0Eh ;# 
# 421 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR1L equ 0Eh ;# 
# 428 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TMR1H equ 0Fh ;# 
# 435 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
T1CON equ 010h ;# 
# 500 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
CMCON equ 019h ;# 
# 559 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADRESH equ 01Eh ;# 
# 566 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADCON0 equ 01Fh ;# 
# 656 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
OPTION_REG equ 081h ;# 
# 733 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TRISA equ 085h ;# 
# 783 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
TRISC equ 087h ;# 
# 833 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PIE1 equ 08Ch ;# 
# 881 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
PCON equ 08Eh ;# 
# 915 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
OSCCAL equ 090h ;# 
# 975 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ANSEL equ 091h ;# 
# 1037 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
WPUA equ 095h ;# 
# 1042 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
WPU equ 095h ;# 
# 1125 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
IOCA equ 096h ;# 
# 1130 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
IOC equ 096h ;# 
# 1223 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
VRCON equ 099h ;# 
# 1283 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EEDAT equ 09Ah ;# 
# 1288 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EEDATA equ 09Ah ;# 
# 1321 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EEADR equ 09Bh ;# 
# 1328 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EECON1 equ 09Ch ;# 
# 1366 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
EECON2 equ 09Dh ;# 
# 1373 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADRESL equ 09Eh ;# 
# 1380 "/opt/microchip/xc8/v2.46/pic/include/proc/pic16f676.h"
ADCON1 equ 09Fh ;# 
	debug_source C
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftge
	FNCALL	_main,_modifyBit
	FNCALL	_main,_transmitByte
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"../lib/TinyRF.h"
	line	118
_TX_DELAY_MICROS:
	retlw	030h
	retlw	013h

	global __end_of_TX_DELAY_MICROS
__end_of_TX_DELAY_MICROS:
psect	strings
	file	"../lib/TinyRF.h"
	line	114
_START_PULSE_MAX_ERROR:
	retlw	0CAh
	retlw	01h

	global __end_of_START_PULSE_MAX_ERROR
__end_of_START_PULSE_MAX_ERROR:
psect	strings
	file	"../lib/TinyRF.h"
	line	111
_ZERO_PULSE_TRIGG_ERROR:
	retlw	069h
	retlw	0

	global __end_of_ZERO_PULSE_TRIGG_ERROR
__end_of_ZERO_PULSE_TRIGG_ERROR:
psect	strings
	file	"../lib/TinyRF.h"
	line	110
_ONE_PULSE_TRIGG_ERROR:
	retlw	082h
	retlw	0

	global __end_of_ONE_PULSE_TRIGG_ERROR
__end_of_ONE_PULSE_TRIGG_ERROR:
psect	strings
	file	"../lib/TinyRF.h"
	line	94
_NUM_PREAMBLE_BYTES:
	retlw	0Fh
	retlw	0

	global __end_of_NUM_PREAMBLE_BYTES
__end_of_NUM_PREAMBLE_BYTES:
psect	strings
	file	"../lib/TinyRF.h"
	line	93
_TRIGGER_ERROR:
	retlw	01Eh
	retlw	0

	global __end_of_TRIGGER_ERROR
__end_of_TRIGGER_ERROR:
psect	strings
	file	"../lib/TinyRF.h"
	line	92
_TX_INTERVAL_CONST:
	retlw	012h
	retlw	027h

	global __end_of_TX_INTERVAL_CONST
__end_of_TX_INTERVAL_CONST:
psect	strings
	file	"../lib/TinyRF.h"
	line	90
_ZERO_PULSE_PERIOD:
	retlw	0EFh
	retlw	02h

	global __end_of_ZERO_PULSE_PERIOD
__end_of_ZERO_PULSE_PERIOD:
psect	strings
	file	"../lib/TinyRF.h"
	line	89
_ONE_PULSE_PERIOD:
	retlw	0E9h
	retlw	03h

	global __end_of_ONE_PULSE_PERIOD
__end_of_ONE_PULSE_PERIOD:
psect	strings
	file	"../lib/TinyRF.h"
	line	88
_START_PULSE_PERIOD:
	retlw	0CEh
	retlw	07h

	global __end_of_START_PULSE_PERIOD
__end_of_START_PULSE_PERIOD:
psect	strings
	file	"../lib/TinyRF.h"
	line	116
_MIN_TX_INTERVAL_REAL:
	retlw	098h
	retlw	09h

	global __end_of_MIN_TX_INTERVAL_REAL
__end_of_MIN_TX_INTERVAL_REAL:
psect	strings
	file	"../lib/TinyRF.h"
	line	112
_START_PULSE_TRIGG_ERROR:
	retlw	0E5h
	retlw	0

	global __end_of_START_PULSE_TRIGG_ERROR
__end_of_START_PULSE_TRIGG_ERROR:
psect	strings
	file	"../lib/TinyRF.h"
	line	91
_PERIOD_HIGH_DURATION:
	retlw	0F2h
	retlw	01h

	global __end_of_PERIOD_HIGH_DURATION
__end_of_PERIOD_HIGH_DURATION:
	global	_RC5
_RC5	set	0x3D
	global	_RC1
_RC1	set	0x39
	global	_RC0
_RC0	set	0x38
	global	_TRISC
_TRISC	set	0x87
	global	_ANSEL
_ANSEL	set	0x91
	global	_PS2
_PS2	set	0x40A
	global	_PS1
_PS1	set	0x409
	global	_PS0
_PS0	set	0x408
	global	_PSA
_PSA	set	0x40B
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "INTRCIO"
	config WDTE = "ON"
	config PWRTE = "OFF"
	config MCLRE = "OFF"
	config BOREN = "OFF"
	file	"test.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_seq:
       ds      1

	file	"test.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
??___awtoft:	; 1 bytes @ 0x0
??___ftge:	; 1 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_transmitByte:	; 1 bytes @ 0x0
??_transmitByte:	; 1 bytes @ 0x0
	global	?_modifyBit
?_modifyBit:	; 2 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	modifyBit@n
modifyBit@n:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	transmitByte@_byte
transmitByte@_byte:	; 1 bytes @ 0x1
	ds	1
	global	transmitByte@i
transmitByte@i:	; 1 bytes @ 0x2
	global	modifyBit@p
modifyBit@p:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	modifyBit@b
modifyBit@b:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 1 bytes @ 0x5
	ds	1
??_modifyBit:	; 1 bytes @ 0x6
	ds	2
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	3
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	ds	1
?___ftge:	; 1 bit 
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0xC
	ds	1
	global	modifyBit@mask
modifyBit@mask:	; 2 bytes @ 0xD
	ds	2
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0xF
	ds	3
??_main:	; 1 bytes @ 0x12
	ds	4
	global	main@i
main@i:	; 2 bytes @ 0x16
	ds	2
	global	main@packet_cycle
main@packet_cycle:	; 2 bytes @ 0x18
	ds	2
	global	main@captured_byte
main@captured_byte:	; 1 bytes @ 0x1A
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    26
;!    Data        0
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            62     27      28

;!
;!Pointer List with Targets:
;!
;!    crc8$0	PTR unsigned char  size(1) Largest target is 0
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___ftge
;!    ___ftge->___awtoft
;!    ___awtoft->___ftpack

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 9     9      0    2874
;!                                             18 BANK0      9     9      0
;!                           ___awtoft
;!                             ___ftge
;!                          _modifyBit
;!                       _transmitByte
;! ---------------------------------------------------------------------------------
;! (1) _transmitByte                                         3     3      0      67
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _modifyBit                                           15     9      6     429
;!                                              0 BANK0     15     9      6
;! ---------------------------------------------------------------------------------
;! (1) ___ftge                                               6     0      6     242
;!                                             12 BANK0      6     0      6
;!                           ___awtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___awtoft                                             4     1      3    1974
;!                                              8 BANK0      4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    1830
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awtoft
;!     ___ftpack
;!   ___ftge
;!     ___awtoft (ARG)
;!   _modifyBit
;!   _transmitByte
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            0      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            3E      0       0       3        0.0%
;!BANK0               3E     1B      1C       4       45.2%
;!ABS                  0      0      1C       5        0.0%
;!DATA                 0      0      1C       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 42 in file "../test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  packet_cycle    2   24[BANK0 ] int 
;;  i               2   22[BANK0 ] int 
;;  captured_byt    1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   55[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       5
;;      Temps:          0       4
;;      Totals:         0       9
;;Total ram usage:        9 bytes
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awtoft
;;		___ftge
;;		_modifyBit
;;		_transmitByte
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"../test.c"
	line	42
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../test.c"
	line	42
	
_main:	
;incstack = 0
	callstack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	45
	
l871:	
	clrf	(main@packet_cycle)
	clrf	(main@packet_cycle+1)
	line	48
	bsf	status, 5	;RP0=1, select bank1
	clrf	(145)^080h	;volatile
	line	49
	
l873:	
	movlw	low(03h)
	movwf	(135)^080h	;volatile
	line	50
	
l875:	
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@captured_byte)
	line	53
# 53 "../test.c"
clrwdt ;# 
psect	maintext
	line	55
	
l877:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1035/8)^080h,(1035)&7	;volatile
	line	56
	
l879:	
	bsf	(1032/8)^080h,(1032)&7	;volatile
	line	57
	
l881:	
	bsf	(1033/8)^080h,(1033)&7	;volatile
	line	58
	
l883:	
	bsf	(1034/8)^080h,(1034)&7	;volatile
	line	63
	
l885:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(main@packet_cycle+1),w
	movwf	(___awtoft@c+1)
	movf	(main@packet_cycle),w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	0xb2
	movwf	(___ftge@ff2)
	movlw	0xd0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u461
	goto	u460
u461:
	goto	l889
u460:
	
l887:	
	movf	((main@packet_cycle)),w
iorwf	((main@packet_cycle+1)),w
	btfss	status,2
	goto	u471
	goto	u470
u471:
	goto	l57
u470:
	line	64
	
l889:	
	clrf	(main@i)
	clrf	(main@i+1)
	line	65
	
l895:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(main@captured_byte),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(modifyBit@n)
	movf	1+(??_main+0)+0,w
	movwf	(modifyBit@n+1)
	movlw	0
	movwf	(modifyBit@p)
	movwf	(modifyBit@p+1)
	clrc
	btfsc	(56/8),(56)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	0+(??_main+2)+0,w
	movwf	(modifyBit@b)
	movf	1+(??_main+2)+0,w
	movwf	(modifyBit@b+1)
	fcall	_modifyBit
	movf	(0+(?_modifyBit)),w
	movwf	(main@captured_byte)
	line	66
	movf	(main@captured_byte),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(modifyBit@n)
	movf	1+(??_main+0)+0,w
	movwf	(modifyBit@n+1)
	movlw	01h
	movwf	(modifyBit@p)
	movlw	0
	movwf	((modifyBit@p))+1
	clrc
	btfsc	(57/8),(57)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	0+(??_main+2)+0,w
	movwf	(modifyBit@b)
	movf	1+(??_main+2)+0,w
	movwf	(modifyBit@b+1)
	fcall	_modifyBit
	movf	(0+(?_modifyBit)),w
	movwf	(main@captured_byte)
	line	68
	movf	(main@captured_byte),w
	fcall	_transmitByte
	line	69
	
l897:	
	asmopt push
asmopt off
movlw	13
movwf	((??_main+0)+0+1)
	movlw	251
movwf	((??_main+0)+0)
	u497:
decfsz	((??_main+0)+0),f
	goto	u497
	decfsz	((??_main+0)+0+1),f
	goto	u497
	nop2
asmopt pop

	line	64
	
l899:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	0
	addwf	(main@i+1),f
	
l901:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u485
	movlw	05h
	subwf	(main@i),w
u485:

	skipc
	goto	u481
	goto	u480
u481:
	goto	l895
u480:
	line	71
	
l903:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@packet_cycle)
	clrf	(main@packet_cycle+1)
	line	72
	
l57:	
	line	74
# 74 "../test.c"
sleep ;# 
psect	maintext
	line	75
	
l905:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	77
	
l907:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(main@packet_cycle),f
	skipnc
	incf	(main@packet_cycle+1),f
	movlw	0
	addwf	(main@packet_cycle+1),f
	goto	l885
	global	start
	ljmp	start
	callstack 0
	line	79
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_transmitByte

;; *************** function _transmitByte *****************
;; Defined at:
;;		line 106 in file "../lib/TinyRF_TX.c"
;; Parameters:    Size  Location     Type
;;  _byte           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  _byte           1    1[BANK0 ] unsigned char 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       2
;;      Temps:          0       1
;;      Totals:         0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"../lib/TinyRF_TX.c"
	line	106
global __ptext1
__ptext1:	;psect for function _transmitByte
psect	text1
	file	"../lib/TinyRF_TX.c"
	line	106
	
_transmitByte:	
;incstack = 0
	callstack 7
; Regs used in _transmitByte: [wreg+status,2+status,0]
	movwf	(transmitByte@_byte)
	line	108
	
l825:	
	movlw	low(07h)
	movwf	(transmitByte@i)
	line	112
	
l827:	
	bcf	(61/8),(61)&7	;volatile
	line	114
	
l829:	
	movlw	low(01h)
	movwf	(??_transmitByte+0)+0
	incf	(transmitByte@i),w
	goto	u394
u395:
	clrc
	rlf	(??_transmitByte+0)+0,f
u394:
	addlw	-1
	skipz
	goto	u395
	movf	0+(??_transmitByte+0)+0,w
	andwf	(transmitByte@_byte),w
	btfsc	status,2
	goto	u401
	goto	u400
u401:
	goto	l833
u400:
	line	115
	
l831:	
	asmopt push
asmopt off
	movlw	167
movwf	((??_transmitByte+0)+0)
	u507:
decfsz	(??_transmitByte+0)+0,f
	goto	u507
	nop
asmopt pop

	line	116
	goto	l835
	line	118
	
l833:	
	asmopt push
asmopt off
	movlw	84
movwf	((??_transmitByte+0)+0)
	u517:
decfsz	(??_transmitByte+0)+0,f
	goto	u517
asmopt pop

	line	122
	
l835:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	123
	asmopt push
asmopt off
	movlw	165
movwf	((??_transmitByte+0)+0)
	u527:
decfsz	(??_transmitByte+0)+0,f
	goto	u527
	nop2
asmopt pop

	line	125
	
l837:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(transmitByte@i),f
		incf	(((transmitByte@i))),w
	btfss	status,2
	goto	u411
	goto	u410
u411:
	goto	l827
u410:
	line	126
	
l122:	
	return
	callstack 0
GLOBAL	__end_of_transmitByte
	__end_of_transmitByte:
	signat	_transmitByte,4217
	global	_modifyBit

;; *************** function _modifyBit *****************
;; Defined at:
;;		line 35 in file "../test.c"
;; Parameters:    Size  Location     Type
;;  n               2    0[BANK0 ] int 
;;  p               2    2[BANK0 ] int 
;;  b               2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  mask            2   13[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       6
;;      Locals:         0       2
;;      Temps:          0       7
;;      Totals:         0      15
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"../test.c"
	line	35
global __ptext2
__ptext2:	;psect for function _modifyBit
psect	text2
	file	"../test.c"
	line	35
	
_modifyBit:	
;incstack = 0
	callstack 7
; Regs used in _modifyBit: [wreg+status,2+status,0]
	line	37
	
l821:	
	incf	(modifyBit@p),w
	movwf	(??_modifyBit+0)+0
	movlw	01h
	movwf	(??_modifyBit+1)+0
	movlw	0
	movwf	(??_modifyBit+1)+0+1
	goto	u374
u375:
	clrc
	rlf	(??_modifyBit+1)+0,f
	rlf	(??_modifyBit+1)+1,f
u374:
	decfsz	(??_modifyBit+0)+0,f
	goto	u375
	
	movf	0+(??_modifyBit+1)+0,w
	movwf	(modifyBit@mask)
	movf	1+(??_modifyBit+1)+0,w
	movwf	(modifyBit@mask+1)
	line	38
	incf	(modifyBit@p),w
	movwf	(??_modifyBit+0)+0
	movf	(modifyBit@b+1),w
	movwf	(??_modifyBit+1)+0+1
	movf	(modifyBit@b),w
	movwf	(??_modifyBit+1)+0
	goto	u384
u385:
	clrc
	rlf	(??_modifyBit+1)+0,f
	rlf	(??_modifyBit+1)+1,f
u384:
	decfsz	(??_modifyBit+0)+0,f
	goto	u385
	
	movf	(modifyBit@mask+1),w
	movwf	(??_modifyBit+3)+0+1
	movf	(modifyBit@mask),w
	movwf	(??_modifyBit+3)+0
	comf	(??_modifyBit+3)+0,f
	comf	(??_modifyBit+3)+1,f
	movf	(modifyBit@n),w
	andwf	0+(??_modifyBit+3)+0,w
	movwf	(??_modifyBit+5)+0
	movf	(modifyBit@n+1),w
	andwf	1+(??_modifyBit+3)+0,w
	movwf	1+(??_modifyBit+5)+0
	movf	0+(??_modifyBit+1)+0,w
	iorwf	0+(??_modifyBit+5)+0,w
	movwf	(?_modifyBit)
	movf	1+(??_modifyBit+1)+0,w
	iorwf	1+(??_modifyBit+5)+0,w
	movwf	1+(?_modifyBit)
	line	39
	
l51:	
	return
	callstack 0
GLOBAL	__end_of_modifyBit
	__end_of_modifyBit:
	signat	_modifyBit,12410
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v2.46/pic/sources/c90/common/ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   12[BANK0 ] float 
;;  ff2             3   15[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       6
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       6
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/ftge.c"
	line	4
global __ptext3
__ptext3:	;psect for function ___ftge
psect	text3
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/ftge.c"
	line	4
	
___ftge:	
;incstack = 0
	callstack 7
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l851:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u431
	goto	u430
u431:
	goto	l855
u430:
	line	7
	
l853:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l855:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u441
	goto	u440
u441:
	goto	l859
u440:
	line	9
	
l857:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l859:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l861:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l863:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u455
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u455
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u455:
	skipnc
	goto	u451
	goto	u450
u451:
	goto	l867
u450:
	
l865:	
	clrc
	
	goto	l477
	
l867:	
	setc
	
	line	13
	
l477:	
	return
	callstack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "/opt/microchip/xc8/v2.46/pic/sources/c90/common/awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       3
;;      Locals:         0       1
;;      Temps:          0       0
;;      Totals:         0       4
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/awtoft.c"
	line	32
global __ptext4
__ptext4:	;psect for function ___awtoft
psect	text4
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/awtoft.c"
	line	32
	
___awtoft:	
;incstack = 0
	callstack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l839:	
	clrf	(___awtoft@sign)
	line	37
	
l841:	
	btfss	(___awtoft@c+1),7
	goto	u421
	goto	u420
u421:
	goto	l847
u420:
	line	38
	
l843:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l845:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l847:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l410:	
	return
	callstack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v2.46/pic/sources/c90/common/float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       5
;;      Locals:         0       0
;;      Temps:          0       3
;;      Totals:         0       8
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/float.c"
	line	62
global __ptext5
__ptext5:	;psect for function ___ftpack
psect	text5
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/float.c"
	line	62
	
___ftpack:	
;incstack = 0
	callstack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l789:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u251
	goto	u250
u251:
	goto	l793
u250:
	
l791:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u261
	goto	u260
u261:
	goto	l799
u260:
	line	65
	
l793:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l416
	line	67
	
l797:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u275:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u275

	line	66
	
l799:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u281
	goto	u280
u281:
	goto	l797
u280:
	goto	l420
	line	71
	
l801:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l803:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l805:	
	movlw	01h
u295:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u295

	line	74
	
l420:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u301
	goto	u300
u301:
	goto	l801
u300:
	goto	l809
	line	76
	
l807:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u315:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u315
	line	75
	
l809:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u321
	goto	u320
u321:
	goto	l427
u320:
	
l811:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u331
	goto	u330
u331:
	goto	l807
u330:
	
l427:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u341
	goto	u340
u341:
	goto	l428
u340:
	line	80
	
l813:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l428:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l815:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u355:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u350:
	addlw	-1
	skipz
	goto	u355
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l817:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u361
	goto	u360
u361:
	goto	l429
u360:
	line	84
	
l819:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l429:	
	line	85
	line	86
	
l416:	
	return
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 05Eh

	DABS	1,94,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
