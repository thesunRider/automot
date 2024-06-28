//
// LED blink example for PIC16F676
// Written by Suryasaradhi
// Last updated 28-6-2024
//
 
#include <xc.h>

/*pinout
--Power--
Red - +5
Blk - GND

--Probes--
BLCK - +5
BRWN - Bottom - rc0
RED -  TOP   - rc1

--RFIN--
RFIN - RC5


*/

//intosc with watchdog timer
#pragma config FOSC=INTRCIO,MCLRE=OFF,WDTE=ON,BOREN=OFF
 
int main(void)
{
    // Make RD0 a digital output
    TRISC = 0b00100011;
     
    // Blink LED on RD0 (pin 19)
    while(1)
    {
        //LATDbits.LATD0 = 1 - LATDbits.LATD0;
        _delay(100000);
    }
}