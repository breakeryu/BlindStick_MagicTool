#include "device/t18b20.h"

//TODO 18b20的驱动还是有问题的，之后有空再试试吧！


void DelayT_10us(uchar count)
{
	while(count--)
	{	//模拟10us延时
		_nop_();
		_nop_();
		_nop_();
		_nop_();

		_nop_();
		_nop_();
		_nop_();
		_nop_();
	}
}

/*****************************************************************************/
/**
 * \author      hitxy
 * \date        2021/02/05
 * \brief       18b20初始化函数
 * \param[in]   
 * \return      true or false
 * \ingroup     UTIL
 * \remarks
******************************************************************************/
void t18b20Init(void)
{
     disableAllInterrupts();
    //单片机拉低总线并延时600us
	tdsDate(0);
	DelayT_10us(70);
	//单片机释放总线并延时60us
	tdsDate(1);
	DelayT_10us(6);
	//当DS18B20返回低电平时，表示总线上存在传感器
	while(!tgetDate);
	DelayT_10us(50);
    printf("Init Done!\r\n");
    enableAllInterrupts();
    // uint8_t temp = 0;
    // uint8_t i = 0;
    // //1.总线拉低480-960us
    // tdsDate(0);
    // //sleep_us(60);
    // i = 70;	
	// while(i--);//延时642us
    // //2.拉高总线，等待设备响应
    // tdsDate(1);
    // i = 0;
    // //3.从机响应
    // while (tgetDate)
    // {
    //     sleep(1);
    //     temp++;
    //     if (temp>5)
    //     {
    //         return false;
    //     }
        
    // }


}

/*****************************************************************************/
/**
 * \author      hitxy
 * \date        2021/02/06
 * \brief       18b20写字节函数
 * \param[in]   uint8_t dat 要写入的数据
 * \return      true or false
 * \ingroup     UTIL
 * \remarks
******************************************************************************/
void t18b20Write_byte(uchar dat)  
{
    // uint8_t i,j;
    
    // for(i=0;i<8;i++)
    // {
    //         //1.总线拉低1us
    //         tdsDate(0);  
    //         j++;
    //         //2.写入数据，持续时间设置为60us
    //         tdsDate(dat&0x01);      //取最低位写入
    //         //sleep_us(6);           //延时60us
    //         j=6;
	// 	    while(j--); //延时68us，持续时间最少60us
    //         //3.释放总线，dat右移一位，为下一次写入做准备
    //         tdsDate(1);             //释放总线
    //         dat=dat>>1;             //数据右移，舍弃原来低位
    // }
    uchar j;
	bool flag;
   
	for(j=1;j<=8;j++)
 	{	//从低到高一次将1Byte数据写入DS18B20
		flag = dat&0x01;
    	dat=dat>>1;
        
		tdsDate(0);  //拉低总线并延时2us
		_nop_();
		_nop_();

		tdsDate(flag);//将要写的位放到总线
		DelayT_10us(6);//延时60us
		  
		tdsDate(1);//拉高释放总线
	}


}

/*****************************************************************************/
/**
 * \author      hitxy
 * \date        2021/02/06
 * \brief       18b20读字节函数
 * \param[in]   
 * \return      uint8_t dat
 * \ingroup     UTIL
 * \remarks
******************************************************************************/
uchar t18b20Read_byte(void)    
{
    // uint8_t i,dat=0,j=0;
    // uint8_t bi;
    // for(i=0;i<8;i++)
    // {
    //     //数据右移
    //     //dat >>= 1;      
    //     //1.总线拉低1us     
    //     tdsDate(0);  
    //     j++;                               //延时1us
    //     //2.释放总线，延时6us，为读取数据做准备
    //     tdsDate(1);  
    //     j++;
	// 	j++;//延时6us等待数据稳定
    //     //sleep_us(1);                             //延时10us
    //     //3.读取数据
    //     bi = tgetDate;	 //读取数据，从最低位开始读取
    //     printf("bi = ");
    //     printf("%u\r\n",bi);
	// 	/*将byte左移一位，然后与上右移7位后的bi，注意移动之后移掉那位补0。*/
	// 	dat = (dat >> 1) | (bi << 7);	
    //     // if(tgetDate == 1) 
    //     // {
    //     //     dat = dat|0x80;
    //     // }
    //     //4.时序间隔   
    //    //sleep_us(6);
    //     j = 4;		//读取完之后等待48us再接着读取下一个数
	// 	while(j--);
    // }

    uchar dat = 0,flag,j;
    disableAllInterrupts();
	for(j=1;j<=8;j++)
	{	
        dat >>= 1;	
		tdsDate(0);  //拉低总线并延时2us
		_nop_();
		_nop_();
		tdsDate(1);  //拉高释放总线并延时2us
		_nop_();
		_nop_();
        
		flag = tgetDate;//采集
        if (tgetDate) dat |= 0x80;        //读取数据
		DelayT_10us(7);//延时60us
        printf("Write flag= ");
        printf("%u\r\n",flag);
		//读出的值最低位在前面
		//dat=(dat>>1)|(flag<<7);
	}
    enableAllInterrupts();
	return dat;	

}

/*****************************************************************************/
/**
 * \author      hitxy
 * \date        2021/02/06
 * \brief       18b20读温度函数
 * \param[in]   
 * \return      uint16_t temp (-550~1250)
 * \ingroup     UTIL
 * \remarks
******************************************************************************/
uint t18b20Read_temper(void)
{    
    uchar  TL,TH;         
    uint  temp = 0;
    //1.初始化DS设备
    t18b20Init();
    //2.转换温度       
    t18b20Write_byte(0xcc);        //跳过ROM操作命令
    t18b20Write_byte(0x44);        //发送启动温度转换命令
    //3.等待转换完毕
    sleep(20);
    //4.初始化DS设备
    t18b20Init();
    //5.发送读取命令       
    t18b20Write_byte(0xcc);        //跳过ROM操作命令
    t18b20Write_byte(0xbe);        //发送读温度寄存器命令
    //6.读取数据
    TL = t18b20Read_byte();           //先读低八位
    TH = t18b20Read_byte();           //再读高八位

    // printf("tl = ");
    // printf("%u\r\n",TL);
    // printf("TH = ");
    // printf("%u\r\n",TH);
   //温度计算
    temp = ((uint)TH<<8) + TL;//将温度组合成16变量

    return temp;
    // temp=(float)temp*0.625;//转换

    // if(temp){
    //     return temp; //返回温度值
    // }
    // else{
    //     return -temp; 
    // } 
     
}




