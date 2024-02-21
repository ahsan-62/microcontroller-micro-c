
_main:

;four.c,2 :: 		void main() {
;four.c,4 :: 		short duty=0;
	CLRF       main_duty_L0+0
;four.c,5 :: 		TRISB=0x00;
	CLRF       TRISB+0
;four.c,6 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;four.c,7 :: 		portb=0x00;
	CLRF       PORTB+0
;four.c,11 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;four.c,12 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;four.c,13 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      99
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;four.c,14 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;four.c,15 :: 		PWM1_Set_Duty(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;four.c,16 :: 		while(1)
L_main2:
;four.c,18 :: 		if(portd.f0==0xff && duty<250)
	BTFSS      PORTD+0, 0
	GOTO       L_main6
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
L__main21:
;four.c,20 :: 		delay_ms(200);
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
;four.c,21 :: 		if(portd.f0==0xff && duty<250)
	BTFSS      PORTD+0, 0
	GOTO       L_main10
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main24:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
L__main20:
;four.c,23 :: 		duty=duty+10;
	MOVLW      10
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;four.c,24 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;four.c,25 :: 		}
L_main10:
;four.c,26 :: 		}
L_main6:
;four.c,27 :: 		if(portd.f1==0xff && duty>0)
	BTFSS      PORTD+0, 1
	GOTO       L_main13
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main13
L__main19:
;four.c,29 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
;four.c,30 :: 		if(portd.f1==0xff && duty>0 )
	BTFSS      PORTD+0, 1
	GOTO       L_main17
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main17
L__main18:
;four.c,32 :: 		duty=duty-10;
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;four.c,33 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;four.c,34 :: 		}
L_main17:
;four.c,35 :: 		}
L_main13:
;four.c,36 :: 		}
	GOTO       L_main2
;four.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
