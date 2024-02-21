#line 1 "C:/Users/Ahsan Al Bashar/Desktop/MIcro-C/7_seg_button/sevenButton.c"
char array_cc[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main() {
 int i=0;
 TRISB=0x00;
 TRISD=0xff;
 portb=0x00;

 while(1)
 {
 if(portd.f0==0x00){
 delay_ms(200);
 if(portd.f0==0x00)
 {
 if(i<9)
 i++;
 }
 }

 if(portd.f1==0x00){
 delay_ms(200);
 if(portd.f1==0x00)
 {
 if(i>=1)
 i--;
 }
 }

 portb=array_cc[i];
 }


}
