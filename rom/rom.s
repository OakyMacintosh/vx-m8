.segment "STARTUP"
	sei		; disable interrupts
	clc		; clear carry flag
	ldx #$FF
	txs		; init stack pointer

start:
	jsr init_serial
	jsr print_ready
	
main_loop:
	jsr get_command
	jsr process_command
	jmp main_loop

; serial routines placeholders

init_serial:
	rts

print_ready:
	lda #>'R'
	jsr print_char
	lda #'E'
	jsr print_char
	lda #'A'
	jsr print_char
	lda #'D'
	jsr print_char
	lda #'Y'
	jsr print_char
	lda #'.'
	jsr print_char
	lda #13
	jsr print_char
	lda #10
	jsr print_char
	rts

print_char:
	; wait for UART ready (mocked)
	; send char in X register
	rts

get_command:
	; Wait for input, store command to buffer (mocked)
	rts

process_command:
	; parce buffer, exec (mocked)
	rts

.segment "RODATA"
; command buffer, string, etc.

.segment "BBS"
; vars
