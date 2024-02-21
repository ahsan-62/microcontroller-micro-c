void main() {
     TRISB=0xC0;
     while(1){
     PORTB.f0=0xff;
     delay_ms(1000);
     PORTB.f0=0x00;
     delay_ms(1000);
     }
     
}