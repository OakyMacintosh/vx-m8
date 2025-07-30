.segment "STARTUP"
    sei
    clc
    ldx #$FF
    txs
    jmp main

