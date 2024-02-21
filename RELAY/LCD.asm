
_main:

;LCD.c,17 :: 		void main() {
;LCD.c,19 :: 		char i=0;
	CLRF       main_i_L0+0
;LCD.c,20 :: 		Adcon1=0x06; //disable analog pin
	MOVLW      6
	MOVWF      ADCON1+0
;LCD.c,21 :: 		cmcon=0x07;// disable Comparator
	MOVLW      7
	MOVWF      CMCON+0
;LCD.c,22 :: 		LCD_init();
	CALL       _Lcd_Init+0
;LCD.c,23 :: 		LCD_cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LCD.c,24 :: 		LCD_cmd(_LCD_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LCD.c,25 :: 		LCD_out(1,1,text1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _text1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LCD.c,27 :: 		while(1)
L_main0:
;LCD.c,29 :: 		for(i=0;i<4;i++)
	CLRF       main_i_L0+0
L_main2:
	MOVLW      4
	SUBWF      main_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;LCD.c,31 :: 		LCD_cmd(_LCD_SHIFT_LEFT);
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LCD.c,32 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;LCD.c,29 :: 		for(i=0;i<4;i++)
	INCF       main_i_L0+0, 1
;LCD.c,33 :: 		}
	GOTO       L_main2
L_main3:
;LCD.c,35 :: 		}
	GOTO       L_main0
;LCD.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
