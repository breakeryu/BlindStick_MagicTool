/*****************************************************************************/
/** 
 * \file       uart_receive.c
 * \author     Xiaoyu Ren
 * \date       
 * \brief      a example which shows how to receive a string via UART
 * \note       
 * \version    v0.1
 * \ingroup    example
 * \remarks    UART1 use TIM2 as baudrate generator, Enable Rx interrupt
 *             
******************************************************************************/


/*****************************************************************************
 *                             header file                                   *
 *****************************************************************************/
#include "hml.h"



/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
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

    uc.uart              = PERIPH_UART1;
    uc.portPin           = UART1_PortPin_P30_P31;
    uc.baudrate          = 9600;
    uc.baudGenerator     = PERIPH_TIM_2;
    uc.interruptState    = ENABLE;
    uc.interruptPriority = UTIL_interruptPriority_0;
    uc.mode              = UART1_mode_1;
    uc.multiBaudrate     = DISABLE;
    uc.receiveState      = ENABLE;

    UART_config(&uc);
    enableAllInterrupts();
}


/*****************************************************************************/
/** 
 * \author     Xiaoyu Ren
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
        Delay(500);
        
    }
}

INTERRUPT(UART1_Routine,EXTI_VectUART1)
{
    uint8_t c;
    if (UART_isReceived(PERIPH_UART1))
    {
        UART_clearReceiveFlag(PERIPH_UART1);
        c = UART_getByte(PERIPH_UART1);
        UART_sendByte(PERIPH_UART1,c);
    }
    
}

