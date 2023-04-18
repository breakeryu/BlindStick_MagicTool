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
 * @brief mark UART PortPin
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

/**
 * \brief mark work mode of UART
 */

#define UART1_mode_0     0x0         /* 8-bit shift register */
#define UART1_mode_1     0x1         /* 8-bit UART,variable baud rate */
#define UART1_mode_2     0x2         /* 9-bit UART,baud rate = fosc/64 or fosc/32 */
#define UART1_mode_3     0x3         /* 9-bit UART,variable baud rate */

#define UART2_3_4_mode_0    0x0     /* 8-bit UART,variable baud rate */
#define UART2_3_4_mode_1    0x1     /* 9-bit UART,variable baud rate */


/*****************************************************************************
 *                             array define                                  *
 *****************************************************************************/
static __code char hexTable[16] = { '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

/*****************************************************************************
 *                           enumeration type                                *
 *****************************************************************************/



/**
 * \brief struct for UART Port
 */
typedef enum
{
    PERIPH_UART1      = 0x0,
    PERIPH_UART2      = 0x1,
    PERIPH_UART3      = 0x2,
    PERIPH_UART4      = 0x3,
} UART_Port_t;

/*****************************************************************************
 *                           structure define                                *
 *****************************************************************************/


/**
 * \brief struct for UART configuration
 */
typedef struct
{
    UART_Port_t            uart;
    uint32_t               baudrate;            //波特率
    PERIPH_TIM             baudGenerator;       //波特率产生源
    Action                 interruptState;      //中断使能
    UTIL_interruptPriority interruptPriority;   //中断优先级
    UART_mode              mode;                //串口模式
    Action                 multiBaudrate;       //波特率加倍
    Action                 receiveState;        //接收状态
} UART_configTypeDef;



/*****************************************************************************
 *                          function declare                                 *
 *****************************************************************************/

void UART_switchPort(UART_Port_t uart, uint8_t UART_PortPin);
void UART_INT_cmd(UART_Port_t uart, Action a);
void UART_INT_setPriority(UART_Port_t uart, UTIL_interruptPriority p);
void UART_switchTim(UART_Port_t uart, PERIPH_TIM tim);



#endif


