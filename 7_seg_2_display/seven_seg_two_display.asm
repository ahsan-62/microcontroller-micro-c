
_main:

;seven_seg_two_display.c,2 :: 		void main() {
;seven_seg_two_display.c,3 :: 		int i=0,k,res,mod;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;seven_seg_two_display.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;seven_seg_two_display.c,5 :: 		TRISD=0x00;
	CLRF       TRISD+0
;seven_seg_two_display.c,6 :: 		portb=0x00;
	CLRF       PORTB+0
;seven_seg_two_display.c,7 :: 		portd=0x00;
	CLRF       PORTD+0
;seven_seg_two_display.c,8 :: 		TRISC=0xff;
	MOVLW      255
	MOVWF      TRISC+0
;seven_seg_two_display.c,9 :: 		while(1)
L_main0:
;seven_seg_two_display.c,11 :: 		res=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
;seven_seg_two_display.c,12 :: 		mod=i%10;
	MOVF       R0+0, 0
	MOVWF      main_mod_L0+0
	MOVF       R0+1, 0
	MOVWF      main_mod_L0+1
;seven_seg_two_display.c,13 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;seven_seg_two_display.c,14 :: 		portb=array[res];
	MOVF       FLOC__main+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;seven_seg_two_display.c,15 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;seven_seg_two_display.c,16 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;seven_seg_two_display.c,17 :: 		portd.f1=1;
	BSF        PORTD+0, 1
;seven_seg_two_display.c,18 :: 		portb=array[mod];
	MOVF       main_mod_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;seven_seg_two_display.c,19 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;seven_seg_two_display.c,20 :: 		portd.f1=0;
	BCF        PORTD+0, 1
;seven_seg_two_display.c,22 :: 		if(portc.f0==0x00 && i<99)
	BTFSC      PORTC+0, 0
	GOTO       L_main6
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      99
	SUBWF      main_i_L0+0, 0
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
L__main21:
;seven_seg_two_display.c,25 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;seven_seg_two_display.c,26 :: 		if(portc.f0==0x00 && i<99)
	BTFSC      PORTC+0, 0
	GOTO       L_main10
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      99
	SUBWF      main_i_L0+0, 0
L__main24:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
L__main20:
;seven_seg_two_display.c,28 :: 		i=i+1;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;seven_seg_two_display.c,29 :: 		}
L_main10:
;seven_seg_two_display.c,30 :: 		}
L_main6:
;seven_seg_two_display.c,32 :: 		if(portc.f1==0x00 && i>0)
	BTFSC      PORTC+0, 1
	GOTO       L_main13
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main25:
	BTFSC      STATUS+0, 0
	GOTO       L_main13
L__main19:
;seven_seg_two_display.c,35 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
;seven_seg_two_display.c,36 :: 		if(portc.f1==0x00 && i>0)
	BTFSC      PORTC+0, 1
	GOTO       L_main17
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main26:
	BTFSC      STATUS+0, 0
	GOTO       L_main17
L__main18:
;seven_seg_two_display.c,38 :: 		i=i-1;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;seven_seg_two_display.c,39 :: 		}
L_main17:
;seven_seg_two_display.c,40 :: 		}
L_main13:
;seven_seg_two_display.c,43 :: 		}
	GOTO       L_main0
;seven_seg_two_display.c,47 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
