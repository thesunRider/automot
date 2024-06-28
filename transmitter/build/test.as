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
	FNCALL	_main,_modifyBit
	FNCALL	_main,_transmitByte
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
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "INTRCIO"
	config WDTE = "ON"
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
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_transmitByte:	; 1 bytes @ 0x0
??_transmitByte:	; 1 bytes @ 0x0
	global	?_modifyBit
?_modifyBit:	; 2 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	modifyBit@n
modifyBit@n:	; 2 bytes @ 0x0
	ds	1
	global	transmitByte@_byte
transmitByte@_byte:	; 1 bytes @ 0x1
	ds	1
	global	transmitByte@i
transmitByte@i:	; 1 bytes @ 0x2
	global	modifyBit@p
modifyBit@p:	; 2 bytes @ 0x2
	ds	2
	global	modifyBit@b
modifyBit@b:	; 2 bytes @ 0x4
	ds	2
??_modifyBit:	; 1 bytes @ 0x6
	ds	7
	global	modifyBit@mask
modifyBit@mask:	; 2 bytes @ 0xD
	ds	2
??_main:	; 1 bytes @ 0xF
	ds	4
	global	main@captured_byte
main@captured_byte:	; 1 bytes @ 0x13
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
;!    BANK0            62     20      21

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
;!    _main->_modifyBit

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0     565
;!                                             15 BANK0      5     5      0
;!                          _modifyBit
;!                       _transmitByte
;! ---------------------------------------------------------------------------------
;! (1) _transmitByte                                         3     3      0      67
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _modifyBit                                           15     9      6     429
;!                                              0 BANK0     15     9      6
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
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
;!BANK0               3E     14      15       4       33.9%
;!ABS                  0      0      15       5        0.0%
;!DATA                 0      0      15       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 38 in file "../test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  captured_byt    1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   43[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       1
;;      Temps:          0       4
;;      Totals:         0       5
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_modifyBit
;;		_transmitByte
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"../test.c"
	line	38
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../test.c"
	line	38
	
_main:	
;incstack = 0
	callstack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l682:	
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	43
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@captured_byte)
	line	49
	
l684:	
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
	line	50
	
l686:	
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
	line	52
	
l688:	
	movf	(main@captured_byte),w
	fcall	_transmitByte
	line	53
	
l690:	
	asmopt push
asmopt off
movlw	130
movwf	((??_main+0)+0+1)
	movlw	221
movwf	((??_main+0)+0)
	u117:
decfsz	((??_main+0)+0),f
	goto	u117
	decfsz	((??_main+0)+0+1),f
	goto	u117
	nop2
asmopt pop

	goto	l684
	global	start
	ljmp	start
	callstack 0
	line	55
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
	
l668:	
	movlw	low(07h)
	movwf	(transmitByte@i)
	line	112
	
l670:	
	bcf	(61/8),(61)&7	;volatile
	line	114
	
l672:	
	movlw	low(01h)
	movwf	(??_transmitByte+0)+0
	incf	(transmitByte@i),w
	goto	u84
u85:
	clrc
	rlf	(??_transmitByte+0)+0,f
u84:
	addlw	-1
	skipz
	goto	u85
	movf	0+(??_transmitByte+0)+0,w
	andwf	(transmitByte@_byte),w
	btfsc	status,2
	goto	u91
	goto	u90
u91:
	goto	l676
u90:
	line	115
	
l674:	
	asmopt push
asmopt off
	movlw	167
movwf	((??_transmitByte+0)+0)
	u127:
decfsz	(??_transmitByte+0)+0,f
	goto	u127
	nop
asmopt pop

	line	116
	goto	l678
	line	118
	
l676:	
	asmopt push
asmopt off
	movlw	84
movwf	((??_transmitByte+0)+0)
	u137:
decfsz	(??_transmitByte+0)+0,f
	goto	u137
asmopt pop

	line	122
	
l678:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	123
	asmopt push
asmopt off
	movlw	165
movwf	((??_transmitByte+0)+0)
	u147:
decfsz	(??_transmitByte+0)+0,f
	goto	u147
	nop2
asmopt pop

	line	125
	
l680:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(transmitByte@i),f
		incf	(((transmitByte@i))),w
	btfss	status,2
	goto	u101
	goto	u100
u101:
	goto	l670
u100:
	line	126
	
l105:	
	return
	callstack 0
GLOBAL	__end_of_transmitByte
	__end_of_transmitByte:
	signat	_transmitByte,4217
	global	_modifyBit

;; *************** function _modifyBit *****************
;; Defined at:
;;		line 31 in file "../test.c"
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
	line	31
global __ptext2
__ptext2:	;psect for function _modifyBit
psect	text2
	file	"../test.c"
	line	31
	
_modifyBit:	
;incstack = 0
	callstack 7
; Regs used in _modifyBit: [wreg+status,2+status,0]
	line	33
	
l664:	
	incf	(modifyBit@p),w
	movwf	(??_modifyBit+0)+0
	movlw	01h
	movwf	(??_modifyBit+1)+0
	movlw	0
	movwf	(??_modifyBit+1)+0+1
	goto	u64
u65:
	clrc
	rlf	(??_modifyBit+1)+0,f
	rlf	(??_modifyBit+1)+1,f
u64:
	decfsz	(??_modifyBit+0)+0,f
	goto	u65
	
	movf	0+(??_modifyBit+1)+0,w
	movwf	(modifyBit@mask)
	movf	1+(??_modifyBit+1)+0,w
	movwf	(modifyBit@mask+1)
	line	34
	incf	(modifyBit@p),w
	movwf	(??_modifyBit+0)+0
	movf	(modifyBit@b+1),w
	movwf	(??_modifyBit+1)+0+1
	movf	(modifyBit@b),w
	movwf	(??_modifyBit+1)+0
	goto	u74
u75:
	clrc
	rlf	(??_modifyBit+1)+0,f
	rlf	(??_modifyBit+1)+1,f
u74:
	decfsz	(??_modifyBit+0)+0,f
	goto	u75
	
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
	line	35
	
l39:	
	return
	callstack 0
GLOBAL	__end_of_modifyBit
	__end_of_modifyBit:
	signat	_modifyBit,12410
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 05Eh

	DABS	1,94,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
