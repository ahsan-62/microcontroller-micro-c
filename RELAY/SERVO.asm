
_main:

;SERVO.c,1 :: 		void main(){
;SERVO.c,3 :: 		TRISB=0x00;
	CLRF       TRISB+0
;SERVO.c,4 :: 		portb=0x00;
	CLRF       PORTB+0
;SERVO.c,6 :: 		while(1){
L_main0:
;SERVO.c,8 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_main2:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      50
	SUBWF      R1+0, 0
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;SERVO.c,10 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;SERVO.c,11 :: 		delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;SERVO.c,12 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;SERVO.c,13 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;SERVO.c,8 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;SERVO.c,14 :: 		}
	GOTO       L_main2
L_main3:
;SERVO.c,15 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;SERVO.c,17 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_main8:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      50
	SUBWF      R1+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;SERVO.c,19 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;SERVO.c,20 :: 		delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
;SERVO.c,21 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;SERVO.c,22 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;SERVO.c,17 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;SERVO.c,23 :: 		}
	GOTO       L_main8
L_main9:
;SERVO.c,24 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
;SERVO.c,26 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_main14:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      50
	SUBWF      R1+0, 0
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main15
;SERVO.c,28 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;SERVO.c,29 :: 		delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
	NOP
;SERVO.c,30 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;SERVO.c,31 :: 		delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;SERVO.c,26 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;SERVO.c,32 :: 		}
	GOTO       L_main14
L_main15:
;SERVO.c,33 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;SERVO.c,42 :: 		}
	GOTO       L_main0
;SERVO.c,51 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
