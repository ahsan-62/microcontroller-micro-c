
void main() {

short duty=0;
TRISB=0x00;
TRISD=0xff;
portb=0x00;

while(1)
{
  portb.f0=1;
  portb.f1=0;
  PWM1_Init(5000);
  PWM1_Start();
  PWM1_Set_Duty(duty);
  while(1)
  {
  if(portd.f0==0xff && duty<250)
  {
   delay_ms(200);
      if(portd.f0==0xff && duty<250)
      {
      duty=duty+10;
      PWM1_Set_Duty(duty);
      }
  }
  if(portd.f1==0xff && duty>0)
  {
   delay_ms(200);
      if(portd.f1==0xff && duty>0 )
      {
      duty=duty-10;
      PWM1_Set_Duty(duty);
      }
  }
    }


}
}