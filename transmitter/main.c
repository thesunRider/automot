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
#define NUM_PACKETS 5
#define WDT_TIMEOUT 2.3 //with max prescaler this much timeout can be achieved from WDT
#define SLEEP_TIME 20 //15seconds of sleep


//intosc with watchdog timer
#pragma config FOSC=INTRCIO,MCLRE=OFF,WDTE=ON,BOREN=OFF,PWRTE=OFF

int modifyBit(int n, int p, int b) 
{ 
    int mask = 1 << p; 
    return ((n & ~mask) | (b << p)); 
} 


int main(void)
{
	int i;
	int packet_cycle = 0;

    // Make RC0,RC1 a digital input , ,RC5 as digital output
    ANSEL = 0; //init as digital inputs first
    TRISC = 0b00000011; //set direction to input
    CM2 = 1;  //disable comparator (save power)
    CM1 = 1;
    CM0 = 1;
    VREN = 0; //disable voltage reference (save power)
    uint8_t captured_byte = 0xFF;

    //assign prescaler to wdt
    CLRWDT();
    //OPTION_REG = 0b00101111;
    PSA = 1;
    PS0 = 1;
    PS1 = 1;
    PS2 = 1;

    // Blink LED on RD0 (pin 19)
    while(1)
    {	
    	if (packet_cycle >= SLEEP_TIME/WDT_TIMEOUT || packet_cycle == 0){
	    	for (i=0; i < NUM_PACKETS;i++){
		        captured_byte = modifyBit(captured_byte,0,RC0);
				captured_byte = modifyBit(captured_byte,1,RC1);
		        
		        send(&captured_byte,1,1);
                CLRWDT();
		        __delay_us(TX_DELAY_MICROS);
	    	}
	    	packet_cycle = 0; 
	    }

        SLEEP();
        NOP();

        ++packet_cycle;
    }
}