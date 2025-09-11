#include "C:\Users\HP\Desktop\Basic-Tech-Training\Embedded C\day 8\hal\hal\hal gpio.h"
#include "C:\Users\HP\Desktop\Basic-Tech-Training\Embedded C\day 8\hal\config\pin_config.h"



int main(void){

  DDRD |=(1<<LED_PIN);

  DDRD &=~ (1<<BTN_PIN);

    PORTD |= (1<<BTN_PIN);

    PORTD &=~ 1<<LED_PIN;


  while (1){

if(!(PIND &(1<<BTN_PIN))){
    PORTD |= (1<<LED_PIN);
    _delay_ms(1000);

  PORTD &=~ (1<<LED_PIN);

    _delay_ms(1000);
  }else{
    PORTD &= ~(1<<LED_PIN);
  }
  _delay_ms(100);
}
}