
#include "hml.h"


uint8_t  LED0 =   PERIPH_GPIO_PIN_5;			 //LED0 pin
uint8_t  LED1 =   PERIPH_GPIO_PIN_6;			 //LED1 pin


void main(void)
{

  //enable XFR register
  SFRX_ON();
  

  //config pin mode
  GPIO_configMode(PERIPH_GPIO_4, LED0, PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT);
  GPIO_configMode(PERIPH_GPIO_4, LED1, PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT);

  GPIO_configHighCurrent(PERIPH_GPIO_4,LED0,SET);
  GPIO_configHighSpeed(PERIPH_GPIO_4,LED0,SET);
  GPIO_configPullUP(PERIPH_GPIO_4,LED0,SET);

  GPIO_configHighCurrent(PERIPH_GPIO_4,LED1,SET);
  GPIO_configHighSpeed(PERIPH_GPIO_4,LED1,SET);
  GPIO_configPullUP(PERIPH_GPIO_4,LED1,SET);
  

  //disable XFR register
  SFRX_OFF();

  while(1)
  {
    
    GPIO_resetBitValue(PERIPH_GPIO_4,LED0);
    GPIO_resetBitValue(PERIPH_GPIO_4,LED1);
    Delay(500);

    GPIO_setBitValue(PERIPH_GPIO_4,LED0);
    GPIO_setBitValue(PERIPH_GPIO_4,LED1);
    Delay(500);

  }

}