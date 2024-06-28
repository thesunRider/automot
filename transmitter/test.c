//
// LED blink example for PIC18F4520
// Written by Ted Burke
// Last updated 5-3-2013
//
 
#include <xc.h>
 
#pragma config OSC=INTIO67,MCLRE=OFF,WDT=OFF,LVP=OFF,BOREN=OFF
 
int main(void)
{
    // Make RD0 a digital output
    TRISD = 0b11111110;
     
    // Blink LED on RD0 (pin 19)
    while(1)
    {
        LATDbits.LATD0 = 1 - LATDbits.LATD0;
        _delay(100000);
    }
}