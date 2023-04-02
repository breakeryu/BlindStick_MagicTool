/*****************************************************************************/
/** 
 * \file       tim_toggleIo.c
 * \author     Jiabin Hsu | zhongliguo@zhishan-iot.tk
 * \date       
 * \brief      a example which shows how to toggle state of specified pin periodic
 *             via timers' interrupt
 * \note       
 * \version    v1.3
 * \ingroup    example
 * \remarks    test-board: TS51-V2.0; test-MCU: STC89C52RC
******************************************************************************/

/*****************************************************************************
 *                             header file                                   *
 *****************************************************************************/
#include "hml/hml.h"
#include "stdio.h"

bool irq_signal = true;
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
    UART_configTypeDef uc;
    uc.baudrate          = 9600;
    uc.baudGenerator     = PERIPH_TIM_2;
    uc.interruptState    = DISABLE;
    uc.interruptPriority = UTIL_interruptPriority_0;
    uc.mode              = UART_mode_1;
    uc.multiBaudrate     = DISABLE;
    uc.receiveState      = ENABLE;

    UART_config(&uc);

    //TODO 这里是有问题的地方，为什么这里的计算会溢出呢？
    //测试串口打印
    // uint16_t tstec_con = TIM_calculateValue(5000, TIM_mode_1);
    // printf("SET VALUE = ");
    // printf("%u\r\n",tstec_con);

    TIM_configTypeDef tc;

    tc.function          = TIM_function_tim;
    tc.interruptState    = ENABLE;
    tc.interruptPriority = UTIL_interruptPriority_0;
    tc.mode              = TIM_mode_1;
    tc.value             = TIM_calculateValue(50000, TIM_mode_1);//todo该定时器计算value是会溢出，是有大问题的
    TIM_config(PERIPH_TIM_0,&tc);
    TIM_cmd(PERIPH_TIM_0, ENABLE);

    
    enableAllInterrupts();

    // printf_small("%d\r\n", -12345);
    // printf_small("%d\r\n", 1);
    // printf_small("%d\r\n", 45);
    // printf_small("%u\r\n", 112345);
    // uint16_t value = 0 ,temp = 0 ;
    // temp = 12/(12000000/1000000);
    // printf_small("VALUE = ");
    // printf_small("%u\r\n",temp);
    // value = 50000/temp;
    // printf_small("VALUE = ");
    // printf_small("%u\r\n",value);//我现在感觉这个PRINTf是有问题的
    // printf_small("*******************************\r\n");



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
    
    while(true){

        if (irq_signal == 0)
        {
            irq_signal = true;
            UART_sendString("1\r\n");
            GPIO_toggleBitValue(PERIPH_GPIO_2, PERIPH_GPIO_PIN_2);
        }
        sleep(20);
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
    TIM_setValue(PERIPH_TIM_0,TIM_calculateValue(5000, TIM_mode_1));
    /* per 500ms */
    i++;
    if (i == 100 && irq_signal == 1)
    {
        irq_signal = 0;
        i = 0;
    }
}

//重定义putchar
int putchar(int c){

    UART_sendByte((uint8_t)c);
    return 0;

}