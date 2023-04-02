#ifndef ___T18B20_H___
#define ___T18B20_H___

#include "hml/hml.h"
#include "stdio.h"

#define uchar unsigned char
#define  uint unsigned int


#define tdsDate(x)   x?(GPIO_setBitValue(PERIPH_GPIO_3,PERIPH_GPIO_PIN_7)):(GPIO_resetBitValue(PERIPH_GPIO_3,PERIPH_GPIO_PIN_7))
#define tgetDate     GPIO_getBitValue(PERIPH_GPIO_3,PERIPH_GPIO_PIN_7)

void t18b20Init(void);
void t18b20Write_byte(uint8_t dat);
void DelayT_10us(uchar count);
uint t18b20Read_temper(void);
uchar t18b20Read_byte(void);  

#endif