
#include "hml.h"


sbit  LED0=P4^5;			 //定义LED0指示灯
sbit  LED1=P4^6;			 //定义LED1指示灯

void delayms(unsigned int m)
{
    int  a, b;

    for(a=0;a<5000;a++)
    for(b=0;b<m;b++);
	   
}

void main(void)
{

    //配置io 为准双向
  P4M0=0X00;
  P4M1=0X00;
  while(1)
  {
	LED0=0;
	LED1=0;
	delayms(100);
	LED0=1;
	LED1=1;
	delayms(100);
  }

}