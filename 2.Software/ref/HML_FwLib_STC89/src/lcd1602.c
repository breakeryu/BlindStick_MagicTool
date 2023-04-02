#include "device/lcd1602.h"




//void lcd_display(unsigned char x,unsigned char y,unsigned char *str);

/*waiting lcd ready*/
void lcd_busy()
{
    uint8_t stat;
    DATA_1602(0xFF);
    EN_1602(0);
    RS_1602(0);
    RW_1602(1);
    do 
    {
        EN_1602(1);
        stat=GetData_1602; //Read busy flag of lcd1602
        EN_1602(0);
    }while (stat&0x80); //7th bit equ 1 as lcd busy, read busy flay until bit7=0

}

/*write cmd to lcd1602*/
void lcd_write_cmd(uint8_t cmd)
{
    lcd_busy();
    
    RS_1602(0);
    RW_1602(0);
    DATA_1602(cmd);
    EN_1602(1);
    EN_1602(0);
    sleep(1);
}

/*write data to lcd1602*/
void lcd_write_data(uint8_t dat)
{
    
    lcd_busy();
    RS_1602(1);
    RW_1602(0);
    DATA_1602(dat);
    EN_1602(1);
    EN_1602(0);
    sleep(1);
}



void lcd_set_cursor(uint8_t x,uint8_t y)
{
    uint8_t addr;
    if(y==0){
        x |= 0x80;
    }else{
        x |= 0xC0;
    }
    addr = x;
    lcd_write_cmd(addr);
}

//! 不允许回车换行，每行显示自己行的提示符。
/*****************************************************************************/
/**
 * \author      hitxy
 * \date        2021/02/05
 * \brief       show str at (x,y)
 * \param[in]   uint8_t x   设置光标的X位置，表示每一行的开始光标位置
 * \param[in]   uint8_t y   设置光标的Y位置，这里只有0和1两个选项，分别表示的是第一行和第二行
 * \param[in]   uint8_t *str    写入的字符串地址
 * \return      none
 * \ingroup     UTIL
 * \remarks
******************************************************************************/
void lcd_printf(uint8_t x,uint8_t y,uint8_t *str)
{
	lcd_write_cmd(0x06);	//stay
    lcd_set_cursor(x,y);
    while(*str!='\0')
    {
        lcd_write_data(*str++);
    }
}

/*init*/
void lcd_init()
{
    lcd_write_cmd(0x38); //16*2,5*7,8bit dataport
    lcd_write_cmd(0x0C); //open ,close cursor
    lcd_write_cmd(0x06); //addr+1
    lcd_write_cmd(0x01); //clear
    sleep(40);
}





