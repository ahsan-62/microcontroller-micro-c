#line 1 "C:/Users/Ahsan Al Bashar/Desktop/MIcro-C/7_seg_2_display/seven_seg_two_display.c"
char array[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90 };
void main() {
 int i=0,k,res,mod;
 TRISB=0x00;
 TRISD=0x00;
 portb=0x00;
 portd=0x00;
 TRISC=0xff;
 while(1)
 {
 res=i/10;
 mod=i%10;
 portd.f0=1;
 portb=array[res];
 delay_ms(5);
 portd.f0=0;
 portd.f1=1;
 portb=array[mod];
 delay_ms(5);
 portd.f1=0;

 if(portc.f0==0x00 && i<99)

 {
 delay_ms(100);
 if(portc.f0==0x00 && i<99)
 {
 i=i+1;
 }
 }

 if(portc.f1==0x00 && i>0)

 {
 delay_ms(100);
 if(portc.f1==0x00 && i>0)
 {
 i=i-1;
 }
 }


 }



}
