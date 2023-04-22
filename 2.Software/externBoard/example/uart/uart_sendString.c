/*****************************************************************************/
/** 
 * \file       uart_sendString.c
 * \author     Weilun Fong | wlf@zhishan-iot.tk
 * \author     Xiaoyu Ren
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
#include "hml.h"



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

    uc.uart              = PERIPH_UART1;
    uc.portPin           = UART1_PortPin_P30_P31;
    uc.baudrate          = 9600;
    uc.baudGenerator     = PERIPH_TIM_2;
    uc.interruptState    = DISABLE;
    uc.interruptPriority = UTIL_interruptPriority_0;
    uc.mode              = UART1_mode_1;
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
        Delay(500);
        UART_sendString("H\r\n");
    }
}

