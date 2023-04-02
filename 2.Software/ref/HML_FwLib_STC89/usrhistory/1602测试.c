/*****************************************************************************/
/** 
 * \file       lineledtest.c
 * \author     breakzero
 * \date       
 * \brief      简单的测试数码管
 * \note       
 * \version    v1.0
 * \ingroup    example
 * \remarks    test-board: TS51-V2.0; test-MCU: STC89C52RC
******************************************************************************/

/*****************************************************************************
 *                             header file                                   *
 *****************************************************************************/
#include "hml/hml.h"
#include "device/lineledtube.h"
#include "device/t18b20.h"
#include "device/lcd1602.h"



/*****************************************************************************/
/** 
 * \author      Jiabin Hsu
 * \date        
 * \brief       initial MCU
 * \param[in]   
 * \return      none
 * \ingroup     example
 * \remarks     
******************************************************************************/
void sys_init(void)
{
    disableAllInterrupts();

    UART_configTypeDef uc;  

    uc.baudrate          = 14400;
    uc.baudGenerator     = PERIPH_TIM_2;
    uc.interruptState    = ENABLE;
    uc.interruptPriority = UTIL_interruptPriority_3;
    uc.mode              = UART_mode_1;
    uc.multiBaudrate     = DISABLE;
    uc.receiveState      = ENABLE;

    UART_config(&uc);

    TIM_configTypeDef tc;

    tc.function          = TIM_function_tim;
    tc.interruptState    = ENABLE;
    tc.interruptPriority = UTIL_interruptPriority_1;
    tc.mode              = TIM_mode_1;
    tc.value             = TIM_calculateValue(50000, TIM_mode_1);//todo该定时器计算value是会溢出，是有大问题的
    TIM_config(PERIPH_TIM_0,&tc);
    TIM_cmd(PERIPH_TIM_0, ENABLE);

    enableAllInterrupts();
   

}


/*****************************************************************************/
/** 
 * \author      Jiabin Hsu
 * \date        
 * \brief       main function
 * \param[in]   
 * \return      none
 * \ingroup     example
 * \remarks     
******************************************************************************/
void main(void)
{
    sys_init();
    //printf("HELLO!\r\n");

    //unsigned char str[]="hello world!";
    uint8_t str[]="1234567890!";//TODO 不允许回车换行，每行显示自己行的提示符
    lcd_init();	                            //init lcd1602
	lcd_printf(0,0,str);
    lcd_printf(0,1,str);

    while(true){
       
    
        disableAllInterrupts();     
      
        enableAllInterrupts();
        

    }
}

/*****************************************************************************/
/** 
 * \author      Jiabin Hsu
 * \date        
 * \brief       interrupt service function for TIM0
 * \param[in]   
 * \return      none
 * \ingroup     example
 * \remarks     
******************************************************************************/
void tim0_isr(void) __interrupt TF0_VECTOR
{
    static uint8_t i = 0;
    //重装载步骤是不能缺少的
    TIM_setValue(PERIPH_TIM_0,TIM_calculateValue(50000, TIM_mode_1));

    /* per 500ms */

    i++;
    if (i == 10)
    {
        GPIO_toggleBitValue(PERIPH_GPIO_2, PERIPH_GPIO_PIN_2);
        i = 0;
    }

 
}



void siexit_isr(void) __interrupt SI0_VECTOR
{
/* avoid shake */
    //disableAllInterrupts();
    //sleep(20);

    //进入中断之后，判断是发送中断还是接收中断

    if (UART_isReceived())
    {
        
        GPIO_toggleBitValue(PERIPH_GPIO_2, PERIPH_GPIO_PIN_1);
        uint8_t RDATA = UART_getByte();
        RI = 0;
    }
    

    //enableAllInterrupts();   /* recover */
}

//重定义putchar
int putchar(int c){

    UART_sendByte((uint8_t)c);
    return 0;

}