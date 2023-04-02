/*****************************************************************************/
/** 
 * \file       uart_sendString.c
 * \author     Weilun Fong | wlf@zhishan-iot.tk
 * \date       
 * \brief      a example which shows how to send a string via UART
 * \note       
 * \version    v1.3
 * \ingroup    example
 * \remarks    test-board: TS51-V2.0; test-MCU: STC89C52RC; use TIM2 as baudrate
 *             generator
******************************************************************************/

/*****************************************************************************
 *                             header file                                   *
 *****************************************************************************/
#include "hml/hml.h"

/*****************************************************************************/
/** 
 * \author      Weilun Fong
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

    uc.baudrate          = 14400;
    uc.baudGenerator     = PERIPH_TIM_2;
    uc.interruptState    = ENABLE;
    uc.interruptPriority = UTIL_interruptPriority_0;
    uc.mode              = UART_mode_1;
    uc.multiBaudrate     = DISABLE;
    uc.receiveState      = ENABLE;

    UART_config(&uc);
    enableAllInterrupts();
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
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
    while (true)
    {
        /* send per 500ms */
        sleep(500);

        //UART_sendHex(0xaa);
        //'\t'是tab
        //'\r\n'是回车

        UART_sendString("1234567890asdfgghjj!\r\n");
        //使用xcom监视好使！
        //串口发送函数没有问题！

    }
}


//TODO 初步测试接收中断好使！
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


/*
1.串口发送没问题
2.串口的波特率不能够太高！ 14400稳定，是最高的能够运行的上限，不能再高了，普通选择的波特率位9600就可以。

*/