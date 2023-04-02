#ifndef ___LCD1602_H___
#define ___LCD1602_H___

#include "hml/hml.h"

#define RS_1602(x)   x?(GPIO_setBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_6)):(GPIO_resetBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_6))
#define RW_1602(x)   x?(GPIO_setBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_5)):(GPIO_resetBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_5))
#define EN_1602(x)   x?(GPIO_setBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_7)):(GPIO_resetBitValue(PERIPH_GPIO_2,PERIPH_GPIO_PIN_7))

#define DATA_1602(data)     GPIO_configPortValue(PERIPH_GPIO_0, data)
#define GetData_1602        GPIO_getPortValue(PERIPH_GPIO_0)

//*** LCD 1602 ***//
void lcd_init();                                    //LCD1602 Init Function
void lcd_busy();                                    //Read LCD1602 busy flag
void lcd_write_cmd(uint8_t cmd);                      //LCD1602 write command RS=0, RW=0, EN=1->0
void lcd_read_cmd(uint8_t cmd);                       //LCD1602 read command RS=0, RW=1, EN=1
void lcd_write_data(uint8_t dat);                     //LCD1602 write dataRS=1, RW=0, EN=1->0
void lcd_read_data(uint8_t dat);                      //LCD1602 read data RS=1, RW=1, EN=1
void lcd_set_cursor(uint8_t x,uint8_t y);               //LCD1602 set cursor or first place
void lcd_printf(uint8_t x,uint8_t y,uint8_t *str);        //LCD1602 display str at (x,y)
void lcd_display(uint8_t dat);                        //LCD1602 display data


#endif