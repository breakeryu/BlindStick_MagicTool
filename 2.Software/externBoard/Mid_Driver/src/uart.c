/*****************************************************************************/
/** 
 * \file        uart.c
 * \author      Xiaoyu Ren
 * \brief       operations for UART module
 * \note        
 * \version     v0.1
 * \ingroup     UART
******************************************************************************/

//#if COMPILE_UART

#include "uart.h"



/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       enable or disable multi-baudrate mode
 * \param[in]   a: expected state
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_switchPort(UART_Port_t, uint8_t UART_PortPin)
{
    
}



/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \date        
 * \brief       enable or disable multi-baudrate mode
 * \param[in]   a: expected state
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_cmd_multiBaudrate(Action a)
{
    CONFB(PCON, BIT_NUM_SMOD, a);
}





//#endif

