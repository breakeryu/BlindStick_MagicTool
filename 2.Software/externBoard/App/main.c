
#include "hml.h"


uint8_t  LED0 =   PERIPH_GPIO_PIN_5;			 //LED0 pin
uint8_t  LED1 =   PERIPH_GPIO_PIN_6;			 //LED1 pin

void delayms(unsigned int m)
{
    int  a, b;

    for(a=0;a<5000;a++)
    for(b=0;b<m;b++);
	   
}

void main(void)
{

  //config pin mode
  GPIO_configMode(PERIPH_GPIO_4, LED0, PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT);
  GPIO_configMode(PERIPH_GPIO_4, LED1, PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT);
  while(1)
  {
    
    GPIO_resetBitValue(PERIPH_GPIO_4,LED0);
    GPIO_resetBitValue(PERIPH_GPIO_4,LED1);
    delayms(100);

    GPIO_setBitValue(PERIPH_GPIO_4,LED0);
    GPIO_setBitValue(PERIPH_GPIO_4,LED1);
    delayms(100);

  }

}