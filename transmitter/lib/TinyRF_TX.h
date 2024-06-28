#ifndef TRF_TX_H
#define TRF_TX_H


#define _XTAL_FREQ   4000000

#include <xc.h>
#include "TinyRF.h"


/**
 * Function declarations
**/

// Sends an array of bytes
// Also appends error checking and sequence numbering
void send(byte* data, uint8_t len, boolean incrementSeq);

// Sends an array of bytes 'times' times
void sendMulti(byte data[], uint8_t len, uint8_t times);

// Sends one byte to the receiver
void transmitByte(byte _byte);


#endif	/* TRF_TX_H */