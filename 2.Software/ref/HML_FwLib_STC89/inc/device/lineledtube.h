#ifndef ___LINELEDTUBE_H___
#define ___LINELEDTUBE_H___


#include "hml/hml.h"

#define LSA(x)      x?(GPIO_setBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_2)):(GPIO_resetBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_2))
#define LSB(x)      x?(GPIO_setBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_3)):(GPIO_resetBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_3))
#define LSC(x)      x?(GPIO_setBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_4)):(GPIO_resetBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_4))
#define LE(x)       x?(GPIO_setBitValue(PERIPH_GPIO_1,PERIPH_GPIO_PIN_0)):(GPIO_resetBitValue(PERIPH_GPIO_1,PERIPH_GPIO_PIN_0))
//数码管0-9数值定义
static __code uint8_t smgduan[10]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};


void DigDisplayNum(uint8_t num,uint8_t setnum);




#endif
