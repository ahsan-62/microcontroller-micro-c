#line 1 "C:/Users/Ahsan Al Bashar/Desktop/MIcro-C/RELAY/RELAY.c"
void main() {
 TRISC=0x00;
 portc=0x00;

 while(1)
 {
 portc.f0=1;
 portc.f1=1;
 delay_ms(1000);
 portc.f0=0;
 portc.f1=0;
 delay_ms(1000);
 }
}
