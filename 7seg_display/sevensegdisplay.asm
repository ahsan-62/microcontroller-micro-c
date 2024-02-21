
_main:

;sevensegdisplay.c,4 :: 		void main() {
;sevensegdisplay.c,6 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevensegdisplay.c,7 :: 		TRISD=0x00;
	CLRF       TRISD+0
;sevensegdisplay.c,8 :: 		TRISB=0x00;
	CLRF       TRISB+0
;sevensegdisplay.c,10 :: 		for(i=0;i<=9;i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main0:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVF       main_i_L0+0, 0
	SUBLW      9
L__main5:
	BTFSS      STATUS+0, 0
	GOTO       L_main1
;sevensegdisplay.c,11 :: 		portd=array_CA[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;sevensegdisplay.c,12 :: 		portb=array_CC[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array_CC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevensegdisplay.c,13 :: 		delay_ms(1000);
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
;sevensegdisplay.c,10 :: 		for(i=0;i<=9;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevensegdisplay.c,16 :: 		}
	GOTO       L_main0
L_main1:
;sevensegdisplay.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
