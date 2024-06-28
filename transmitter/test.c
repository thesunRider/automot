//
// LED blink example for PIC16F676
// Written by Suryasaradhi
// Last updated 28-6-2024
//

#define _XTAL_FREQ   4000000

#include <xc.h>
#include "lib/TinyRF_TX.h"

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

#define SLEEP_TIME 15 //15seconds of sleep


//intosc with watchdog timer
#pragma config FOSC=INTRCIO,MCLRE=OFF,WDTE=ON,BOREN=OFF,PWRTE=OFF

int modifyBit(int n, int p, int b) 
{ 
    int mask = 1 << p; 
    return ((n & ~mask) | (b << p)); 
} 


int main(void)
{
    // Make RC0,RC1 a digital input , ,RC5 as digital output
    TRISC = 0b00000011;
    uint8_t captured_byte = 0xFF;


    // Blink LED on RD0 (pin 19)
    while(1)
    {
        captured_byte = modifyBit(captured_byte,0,RC0);
    	captured_byte = modifyBit(captured_byte,1,RC1);
        
        transmitByte(captured_byte);
        __delay_ms(100);
        SLEEP();
    }
}