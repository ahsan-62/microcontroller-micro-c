sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D4 at RB2_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D6 at RB4_bit;
sbit LCD_D7 at RB5_bit;

sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D7_Direction at TRISB5_bit;

char text1[]="Ahsan Al Bashar";
char text2[]="Jun Al Ahsan";
void main() {

     char i=0;
     Adcon1=0x06; //disable analog pin
     cmcon=0x07;// disable Comparator
     LCD_init();
     LCD_cmd(_LCD_CLEAR);
     LCD_cmd(_LCD_cursor_off);
     LCD_out(1,1,text1);
     
     while(1)
     {
     for(i=0;i<4;i++)
     {
     LCD_cmd(_LCD_SHIFT_LEFT);
     delay_ms(500);
     }
     
     }
}