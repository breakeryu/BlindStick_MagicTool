

#include "device/lineledtube.h"




/*******************************************************************************
* 函数名         :DigDisplayNum()
* 函数功能		 :数码管显示数字函数
* 输入           :  
                    uint8_t num     要显示的数码管
                    uint8_t setnum  设置的数字
* 输出         	 : 无
*******************************************************************************/
void DigDisplayNum(uint8_t num,uint8_t setnum)
{
    
     //进行选择显示的数码管
    switch(num)	 //位选，选择点亮的数码管，
    {
        case(0):
            LSA(0);LSB(0);LSC(0); break;//显示第0位
        case(1):
            LSA(1);LSB(0);LSC(0); break;//显示第1位
        case(2):
            LSA(0);LSB(1);LSC(0); break;//显示第2位
        case(3):
            LSA(1);LSB(1);LSC(0); break;//显示第3位
        case(4):
            LSA(0);LSB(0);LSC(1); break;//显示第4位
        case(5):
            LSA(1);LSB(0);LSC(1); break;//显示第5位	
        case(6):
            LSA(0);LSB(1);LSC(1); break;//显示第6位
        case(7):
            LSA(1);LSB(1);LSC(1); break;//显示第7位		
    }

    //1.数据输出方向定义
    LE(1);
    //2.输出数据
    GPIO_configPortValue(PERIPH_GPIO_0,smgduan[setnum]);
    //3.短暂延时
    sleep(2);

}





