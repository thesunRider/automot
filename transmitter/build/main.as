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
	FNCALL	_main,_send
	FNCALL	_send,_crc8
	FNCALL	_send,_transmitByte
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
	retlw	04h
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
	line	118
_TX_DELAY_MICROS:
	retlw	030h
	retlw	013h

	global __end_of_TX_DELAY_MICROS
__end_of_TX_DELAY_MICROS:
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
	file	"main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
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
?_crc8:	; 1 bytes @ 0x0
?_transmitByte:	; 1 bytes @ 0x0
??_transmitByte:	; 1 bytes @ 0x0
	global	?_modifyBit
?_modifyBit:	; 2 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	crc8@len
crc8@len:	; 1 bytes @ 0x0
	global	modifyBit@n
modifyBit@n:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	transmitByte@_byte
transmitByte@_byte:	; 1 bytes @ 0x1
	global	crc8@seq
crc8@seq:	; 1 bytes @ 0x1
	ds	1
??_crc8:	; 1 bytes @ 0x2
	global	transmitByte@i
transmitByte@i:	; 1 bytes @ 0x2
	global	modifyBit@p
modifyBit@p:	; 2 bytes @ 0x2
	ds	1
	global	crc8@sum
crc8@sum:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	crc8@extract
crc8@extract:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	modifyBit@b
modifyBit@b:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 1 bytes @ 0x5
	global	crc8@tempI
crc8@tempI:	; 1 bytes @ 0x5
	ds	1
??_modifyBit:	; 1 bytes @ 0x6
	global	crc8@data
crc8@data:	; 1 bytes @ 0x6
	ds	1
	global	crc8@crc
crc8@crc:	; 1 bytes @ 0x7
	ds	1
?_send:	; 1 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	send@len
send@len:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	1
	global	send@incrementSeq
send@incrementSeq:	; 1 bytes @ 0x9
	ds	1
??_send:	; 1 bytes @ 0xA
	ds	1
	global	send@errChck
send@errChck:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	ds	1
?___ftge:	; 1 bit 
	global	send@i
send@i:	; 1 bytes @ 0xC
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0xC
	ds	1
	global	send@data
send@data:	; 1 bytes @ 0xD
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
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            62     27      27

;!
;!Pointer List with Targets:
;!
;!    crc8@data	PTR unsigned char  size(1) Largest target is 1
;!		 -> main@captured_byte(BANK0[1]), 
;!
;!    send@data	PTR unsigned char  size(1) Largest target is 1
;!		 -> main@captured_byte(BANK0[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___ftge
;!    _send->_crc8
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
;! (0) _main                                                 9     9      0    3635
;!                                             18 BANK0      9     9      0
;!                           ___awtoft
;!                             ___ftge
;!                          _modifyBit
;!                               _send
;! ---------------------------------------------------------------------------------
;! (1) _send                                                 6     4      2     826
;!                                              8 BANK0      6     4      2
;!                               _crc8
;!                       _transmitByte
;! ---------------------------------------------------------------------------------
;! (2) _transmitByte                                         3     3      0      67
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _crc8                                                 8     6      2     318
;!                                              0 BANK0      8     6      2
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
;!   _send
;!     _crc8
;!     _transmitByte
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
;!BANK0               3E     1B      1B       4       43.5%
;!ABS                  0      0       0       5        0.0%
;!DATA                 0      0       0       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 42 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  packet_cycle    2   24[BANK0 ] int 
;;  i               2   22[BANK0 ] int 
;;  captured_byt    1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   55[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_send
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"../main.c"
	line	42
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	42
	
_main:	
;incstack = 0
	callstack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	45
	
l1020:	
	clrf	(main@packet_cycle)
	clrf	(main@packet_cycle+1)
	line	48
	bsf	status, 5	;RP0=1, select bank1
	clrf	(145)^080h	;volatile
	line	49
	
l1022:	
	movlw	low(03h)
	movwf	(135)^080h	;volatile
	line	50
	
l1024:	
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@captured_byte)
	line	53
# 53 "../main.c"
clrwdt ;# 
psect	maintext
	line	55
	
l1026:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1035/8)^080h,(1035)&7	;volatile
	line	56
	
l1028:	
	bsf	(1032/8)^080h,(1032)&7	;volatile
	line	57
	
l1030:	
	bsf	(1033/8)^080h,(1033)&7	;volatile
	line	58
	
l1032:	
	bsf	(1034/8)^080h,(1034)&7	;volatile
	line	63
	
l1034:	
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
	movlw	0x21
	movwf	(___ftge@ff2)
	movlw	0xb
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u561
	goto	u560
u561:
	goto	l1038
u560:
	
l1036:	
	movf	((main@packet_cycle)),w
iorwf	((main@packet_cycle+1)),w
	btfss	status,2
	goto	u571
	goto	u570
u571:
	goto	l57
u570:
	line	64
	
l1038:	
	clrf	(main@i)
	clrf	(main@i+1)
	line	65
	
l1044:	
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
	
l1046:	
	clrf	(send@len)
	incf	(send@len),f
	clrf	(send@incrementSeq)
	incf	(send@incrementSeq),f
	movlw	(low(main@captured_byte|((0x0)<<8)))&0ffh
	fcall	_send
	line	69
# 69 "../main.c"
clrwdt ;# 
psect	maintext
	line	70
	
l1048:	
	asmopt push
asmopt off
movlw	7
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_main+0)+0+1)
	movlw	95
movwf	((??_main+0)+0)
	u597:
decfsz	((??_main+0)+0),f
	goto	u597
	decfsz	((??_main+0)+0+1),f
	goto	u597
	nop2
asmopt pop

	line	64
	
l1050:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	0
	addwf	(main@i+1),f
	
l1052:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u585
	movlw	05h
	subwf	(main@i),w
u585:

	skipc
	goto	u581
	goto	u580
u581:
	goto	l1044
u580:
	line	72
	
l1054:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@packet_cycle)
	clrf	(main@packet_cycle+1)
	line	73
	
l57:	
	line	75
# 75 "../main.c"
sleep ;# 
psect	maintext
	line	76
	
l1056:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	78
	
l1058:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(main@packet_cycle),f
	skipnc
	incf	(main@packet_cycle+1),f
	movlw	0
	addwf	(main@packet_cycle+1),f
	goto	l1034
	global	start
	ljmp	start
	callstack 0
	line	80
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_send

;; *************** function _send *****************
;; Defined at:
;;		line 19 in file "../lib/TinyRF_TX.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     PTR unsigned char 
;;		 -> main@captured_byte(1), 
;;  len             1    8[BANK0 ] unsigned char 
;;  incrementSeq    1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   13[BANK0 ] PTR unsigned char 
;;		 -> main@captured_byte(1), 
;;  i               1   12[BANK0 ] unsigned char 
;;  errChck         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       2
;;      Locals:         0       3
;;      Temps:          0       1
;;      Totals:         0       6
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_crc8
;;		_transmitByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"../lib/TinyRF_TX.c"
	line	19
global __ptext1
__ptext1:	;psect for function _send
psect	text1
	file	"../lib/TinyRF_TX.c"
	line	19
	
_send:	
;incstack = 0
	callstack 6
; Regs used in _send: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(send@data)
	line	27
	
l962:	
	movf	(send@len),w
	movwf	(crc8@len)
	clrf	(crc8@seq)
	movf	(send@data),w
	fcall	_crc8
	movwf	(send@errChck)
	line	34
	
l964:	
	clrf	(send@i)
	line	35
	
l970:	
	movlw	low(0)
	fcall	_transmitByte
	line	34
	
l972:	
	movlw	low(01h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	addwf	(send@i),f
	
l974:	
	movlw	low(04h)
	subwf	(send@i),w
	skipc
	goto	u501
	goto	u500
u501:
	goto	l970
u500:
	
l102:	
	line	40
	bcf	(61/8),(61)&7	;volatile
	line	41
	
l976:	
	asmopt push
asmopt off
	movlw	214
movwf	((??_send+0)+0)
	u607:
	nop2
	nop2
decfsz	(??_send+0)+0,f
	goto	u607
	nop
asmopt pop

	line	42
	
l978:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	43
	asmopt push
asmopt off
	movlw	165
movwf	((??_send+0)+0)
	u617:
decfsz	(??_send+0)+0,f
	goto	u617
	nop2
asmopt pop

	line	45
	
l980:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(send@len),w
	fcall	_transmitByte
	line	49
	
l982:	
	movf	(send@errChck),w
	fcall	_transmitByte
	line	59
	goto	l986
	line	60
	
l984:	
	movf	(send@len),w
	addwf	(send@data),w
	movwf	(??_send+0)+0
	movf	0+(??_send+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_transmitByte
	line	59
	
l986:	
	movlw	01h
	subwf	(send@len),f
		incf	(((send@len))),w
	btfss	status,2
	goto	u511
	goto	u510
u511:
	goto	l984
u510:
	
l105:	
	line	65
	bcf	(61/8),(61)&7	;volatile
	line	90
	
l106:	
	return
	callstack 0
GLOBAL	__end_of_send
	__end_of_send:
	signat	_send,12409
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
;;		_send
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	106
global __ptext2
__ptext2:	;psect for function _transmitByte
psect	text2
	file	"../lib/TinyRF_TX.c"
	line	106
	
_transmitByte:	
;incstack = 0
	callstack 6
; Regs used in _transmitByte: [wreg+status,2+status,0]
	movwf	(transmitByte@_byte)
	line	108
	
l912:	
	movlw	low(07h)
	movwf	(transmitByte@i)
	line	112
	
l914:	
	bcf	(61/8),(61)&7	;volatile
	line	114
	
l916:	
	movlw	low(01h)
	movwf	(??_transmitByte+0)+0
	incf	(transmitByte@i),w
	goto	u334
u335:
	clrc
	rlf	(??_transmitByte+0)+0,f
u334:
	addlw	-1
	skipz
	goto	u335
	movf	0+(??_transmitByte+0)+0,w
	andwf	(transmitByte@_byte),w
	btfsc	status,2
	goto	u341
	goto	u340
u341:
	goto	l920
u340:
	line	115
	
l918:	
	asmopt push
asmopt off
	movlw	167
movwf	((??_transmitByte+0)+0)
	u627:
decfsz	(??_transmitByte+0)+0,f
	goto	u627
	nop
asmopt pop

	line	116
	goto	l922
	line	118
	
l920:	
	asmopt push
asmopt off
	movlw	84
movwf	((??_transmitByte+0)+0)
	u637:
decfsz	(??_transmitByte+0)+0,f
	goto	u637
asmopt pop

	line	122
	
l922:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	123
	asmopt push
asmopt off
	movlw	165
movwf	((??_transmitByte+0)+0)
	u647:
decfsz	(??_transmitByte+0)+0,f
	goto	u647
	nop2
asmopt pop

	line	125
	
l924:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(transmitByte@i),f
		incf	(((transmitByte@i))),w
	btfss	status,2
	goto	u351
	goto	u350
u351:
	goto	l914
u350:
	line	126
	
l119:	
	return
	callstack 0
GLOBAL	__end_of_transmitByte
	__end_of_transmitByte:
	signat	_transmitByte,4217
	global	_crc8

;; *************** function _crc8 *****************
;; Defined at:
;;		line 18 in file "../lib/TinyRF.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     PTR unsigned char 
;;		 -> main@captured_byte(1), 
;;  len             1    0[BANK0 ] unsigned char 
;;  seq             1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    6[BANK0 ] PTR unsigned char 
;;		 -> main@captured_byte(1), 
;;  sum             1    3[BANK0 ] unsigned char 
;;  tempI           1    5[BANK0 ] unsigned char 
;;  extract         1    4[BANK0 ] unsigned char 
;;  crc             1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       2
;;      Locals:         0       5
;;      Temps:          0       1
;;      Totals:         0       8
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"../lib/TinyRF.c"
	line	18
global __ptext3
__ptext3:	;psect for function _crc8
psect	text3
	file	"../lib/TinyRF.c"
	line	18
	
_crc8:	
;incstack = 0
	callstack 6
; Regs used in _crc8: [wreg-fsr0h+status,2+status,0]
	movwf	(crc8@data)
	line	19
	
l884:	
	movf	(crc8@seq),w
	movwf	(crc8@crc)
	line	20
	goto	l906
	line	22
	
l886:	
	movf	(crc8@data),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(crc8@extract)
	
l888:	
	movlw	low(01h)
	movwf	(??_crc8+0)+0
	movf	(??_crc8+0)+0,w
	addwf	(crc8@data),f
	line	23
	
l890:	
	movlw	low(08h)
	movwf	(crc8@tempI)
	goto	l904
	line	25
	
l892:	
	movf	(crc8@crc),w
	xorwf	(crc8@extract),w
	andlw	01h
	movwf	(crc8@sum)
	line	26
	
l894:	
	clrc
	rrf	(crc8@crc),f

	line	27
	
l896:	
	movf	((crc8@sum)),w
	btfsc	status,2
	goto	u301
	goto	u300
u301:
	goto	l900
u300:
	line	29
	
l898:	
	movlw	low(08Ch)
	movwf	(??_crc8+0)+0
	movf	(??_crc8+0)+0,w
	xorwf	(crc8@crc),f
	line	31
	
l900:	
	clrc
	rrf	(crc8@extract),f

	line	23
	
l902:	
	movlw	01h
	subwf	(crc8@tempI),f
	
l904:	
	movf	((crc8@tempI)),w
	btfss	status,2
	goto	u311
	goto	u310
u311:
	goto	l892
u310:
	line	20
	
l906:	
	movlw	01h
	subwf	(crc8@len),f
		incf	(((crc8@len))),w
	btfss	status,2
	goto	u321
	goto	u320
u321:
	goto	l886
u320:
	line	34
	
l908:	
	movf	(crc8@crc),w
	line	35
	
l161:	
	return
	callstack 0
GLOBAL	__end_of_crc8
	__end_of_crc8:
	signat	_crc8,12409
	global	_modifyBit

;; *************** function _modifyBit *****************
;; Defined at:
;;		line 35 in file "../main.c"
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	35
global __ptext4
__ptext4:	;psect for function _modifyBit
psect	text4
	file	"../main.c"
	line	35
	
_modifyBit:	
;incstack = 0
	callstack 7
; Regs used in _modifyBit: [wreg+status,2+status,0]
	line	37
	
l958:	
	incf	(modifyBit@p),w
	movwf	(??_modifyBit+0)+0
	movlw	01h
	movwf	(??_modifyBit+1)+0
	movlw	0
	movwf	(??_modifyBit+1)+0+1
	goto	u484
u485:
	clrc
	rlf	(??_modifyBit+1)+0,f
	rlf	(??_modifyBit+1)+1,f
u484:
	decfsz	(??_modifyBit+0)+0,f
	goto	u485
	
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
	goto	u494
u495:
	clrc
	rlf	(??_modifyBit+1)+0,f
	rlf	(??_modifyBit+1)+1,f
u494:
	decfsz	(??_modifyBit+0)+0,f
	goto	u495
	
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
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/ftge.c"
	line	4
global __ptext5
__ptext5:	;psect for function ___ftge
psect	text5
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/ftge.c"
	line	4
	
___ftge:	
;incstack = 0
	callstack 7
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1000:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u531
	goto	u530
u531:
	goto	l1004
u530:
	line	7
	
l1002:	
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
	
l1004:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u541
	goto	u540
u541:
	goto	l1008
u540:
	line	9
	
l1006:	
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
	
l1008:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1010:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1012:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u555
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u555
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u555:
	skipnc
	goto	u551
	goto	u550
u551:
	goto	l1016
u550:
	
l1014:	
	clrc
	
	goto	l516
	
l1016:	
	setc
	
	line	13
	
l516:	
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
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/awtoft.c"
	line	32
global __ptext6
__ptext6:	;psect for function ___awtoft
psect	text6
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/awtoft.c"
	line	32
	
___awtoft:	
;incstack = 0
	callstack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l988:	
	clrf	(___awtoft@sign)
	line	37
	
l990:	
	btfss	(___awtoft@c+1),7
	goto	u521
	goto	u520
u521:
	goto	l996
u520:
	line	38
	
l992:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l994:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l996:	
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
	
l449:	
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
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/float.c"
	line	62
global __ptext7
__ptext7:	;psect for function ___ftpack
psect	text7
	file	"/opt/microchip/xc8/v2.46/pic/sources/c90/common/float.c"
	line	62
	
___ftpack:	
;incstack = 0
	callstack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l926:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u361
	goto	u360
u361:
	goto	l930
u360:
	
l928:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u371
	goto	u370
u371:
	goto	l936
u370:
	line	65
	
l930:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l455
	line	67
	
l934:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u385:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u385

	line	66
	
l936:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u391
	goto	u390
u391:
	goto	l934
u390:
	goto	l459
	line	71
	
l938:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l940:	
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
	
l942:	
	movlw	01h
u405:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u405

	line	74
	
l459:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u411
	goto	u410
u411:
	goto	l938
u410:
	goto	l946
	line	76
	
l944:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u425:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u425
	line	75
	
l946:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u431
	goto	u430
u431:
	goto	l466
u430:
	
l948:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u441
	goto	u440
u441:
	goto	l944
u440:
	
l466:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u451
	goto	u450
u451:
	goto	l467
u450:
	line	80
	
l950:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l467:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l952:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u465:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u460:
	addlw	-1
	skipz
	goto	u465
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l954:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u471
	goto	u470
u471:
	goto	l468
u470:
	line	84
	
l956:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l468:	
	line	85
	line	86
	
l455:	
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
