
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		TRISB=0xC0;
	MOVLW      192
	MOVWF      TRISB+0
;MyProject.c,3 :: 		while(1){
L_main0:
;MyProject.c,4 :: 		PORTB.f0=0xff;
	BSF        PORTB+0, 0
;MyProject.c,5 :: 		delay_ms(1000);
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
;MyProject.c,6 :: 		PORTB.f0=0x00;
	BCF        PORTB+0, 0
;MyProject.c,7 :: 		delay_ms(1000);
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
;MyProject.c,8 :: 		}
	GOTO       L_main0
;MyProject.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
