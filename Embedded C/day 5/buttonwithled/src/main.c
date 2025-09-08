#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD4
#define BTN_PIN PD5


int main(void){

  DDRD |=(1<<LED_PIN);

  DDRD &=~ (1<<BTN_PIN);

    PORTD |= (1<<BTN_PIN);

    PORTD &=~ 1<<LED_PIN;


  while (1){

if(!(PIND &(1<<BTN_PIN))){
    PORTD |= (1<<LED_PIN);
    _delay_ms(100);

  PORTD &=~ (1<<LED_PIN);

    _delay_ms(100);
  }else{
    PORTD &= ~(1<<LED_PIN);
  }
  _delay_ms(100);
}
}