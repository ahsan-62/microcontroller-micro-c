
_main:

;sevenButton.c,2 :: 		void main() {
;sevenButton.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevenButton.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;sevenButton.c,5 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;sevenButton.c,6 :: 		portb=0x00;
	CLRF       PORTB+0
;sevenButton.c,8 :: 		while(1)
L_main0:
;sevenButton.c,10 :: 		if(portd.f0==0x00){
	BTFSC      PORTD+0, 0
	GOTO       L_main2
;sevenButton.c,11 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;sevenButton.c,12 :: 		if(portd.f0==0x00)
	BTFSC      PORTD+0, 0
	GOTO       L_main4
;sevenButton.c,14 :: 		if(i<9)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;sevenButton.c,15 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
L_main5:
;sevenButton.c,16 :: 		}
L_main4:
;sevenButton.c,17 :: 		}
L_main2:
;sevenButton.c,19 :: 		if(portd.f1==0x00){
	BTFSC      PORTD+0, 1
	GOTO       L_main6
;sevenButton.c,20 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;sevenButton.c,21 :: 		if(portd.f1==0x00)
	BTFSC      PORTD+0, 1
	GOTO       L_main8
;sevenButton.c,23 :: 		if(i>=1)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      1
	SUBWF      main_i_L0+0, 0
L__main12:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;sevenButton.c,24 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
L_main9:
;sevenButton.c,25 :: 		}
L_main8:
;sevenButton.c,26 :: 		}
L_main6:
;sevenButton.c,28 :: 		portb=array_cc[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array_cc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenButton.c,29 :: 		}
	GOTO       L_main0
;sevenButton.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
