#define __SFR_OFFSET 0x00
#include "avr/io.h"
;------------------------
.global main
main:
    ; Output Setup - Pin 13 (PB5) as output
    SBI DDRB, 5   ; Set bit 5 of DDRB for output
    
    ; Input Setup - Pin 12 (PB4) as input with pull-up
    CBI DDRB, 4   ; Clear bit 4 of DDRB for input
    SBI PORTB, 4  ; Enable pull-up on PB4
    
    ; Toggle Setup
    CLR R16       ; Initialize toggle register to 0

MainLoop:
    SBIC PINB, 4  ; Skip next instruction if button (PB4) is pressed
    RJMP SkipOff  ; Skip to skip off so that the led is of
    RCALL LedON   ; Turn LED ON while button is pressed
    RJMP MainLoop ; Loop main
    SkipOff:
        RCALL LedOFF
        RJMP MainLoop ; Loop main

LedON:
    SBI PORTB, 5  ; Turn on LED (PB5)
    RET

LedOFF:
    CBI PORTB, 5  ; Turn off LED (PB5)
    RET