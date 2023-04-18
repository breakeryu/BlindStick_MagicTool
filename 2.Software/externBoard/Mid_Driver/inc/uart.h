/*****************************************************************************/
/** 
 * \file        uart.h
 * \author      Xiaoyu Ren
 * \brief       operations for UART module
 * \note        
 * \version     v0.1
 * \ingroup     UART
******************************************************************************/

#ifndef ___UART_H___
#define ___UART_H___
#include "hml.h"



/**
 * @brief define UART_PortPin
 * 
 */

#define UART1_PortPin_P30_P31   0x00
#define UART1_PortPin_P36_P37   0x01
#define UART1_PortPin_P16_P17   0x10
#define UART1_PortPin_P43_P44   0x11

#define UART2_PortPin_P10_P11   0x00
#define UART2_PortPin_P46_P47   0x01

#define UART3_PortPin_P00_P01   0x00
#define UART3_PortPin_P50_P51   0x01

#define UART4_PortPin_P02_P03   0x00
#define UART4_PortPin_P52_P53   0x01


typedef enum
{
    PERIPH_UART1      = 0x0,
    PERIPH_UART2      = 0x1,
    PERIPH_UART3      = 0x2,
    PERIPH_UART4      = 0x3,
} UART_Port_t;




#endif


