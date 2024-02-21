
_main:

;RELAY.c,1 :: 		void main() {
;RELAY.c,2 :: 		TRISC=0x00;
	CLRF       TRISC+0
;RELAY.c,3 :: 		portc=0x00;
	CLRF       PORTC+0
;RELAY.c,5 :: 		while(1)
L_main0:
;RELAY.c,7 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;RELAY.c,8 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;RELAY.c,9 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;RELAY.c,10 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;RELAY.c,11 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;RELAY.c,12 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;RELAY.c,13 :: 		}
	GOTO       L_main0
;RELAY.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
