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
	debug_source C
	FNROOT	_main
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
??_main:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            62      2       2

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
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
;!BANK0               3E      2       2       4        3.2%
;!ABS                  0      0       0       5        0.0%
;!DATA                 0      0       0       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 28 in file "../test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    8[None  ] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       2
;;      Totals:         0       2
;;Total ram usage:        2 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"../test.c"
	line	28
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../test.c"
	line	28
	
_main:	
;incstack = 0
	callstack 8
; Regs used in _main: [wreg]
	line	31
	
l545:	
	movlw	low(023h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	34
	
l9:	
	line	37
	asmopt push
asmopt off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_main+0)+0+1)
	movlw	221
movwf	((??_main+0)+0)
	u17:
decfsz	((??_main+0)+0),f
	goto	u17
	decfsz	((??_main+0)+0+1),f
	goto	u17
	nop2
asmopt pop

	goto	l9
	global	start
	ljmp	start
	callstack 0
	line	39
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 05Eh

	DABS	1,94,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
