/*****************************************************************************/
/** 
 * \file        uart.h
 * \author      Jiabin Hsu  | zsiothsu@zhishan-iot.tk
 * \author      Weilun Fong | wlf@zhishan-iot.tk
 * \brief       operations for UART module
 * \note        
 * \version     v1.3
 * \ingroup     UART
******************************************************************************/

#ifndef ___HML_UART_H___
#define ___HML_UART_H___

/*****************************************************************************
 *                             header file                                   *
 *****************************************************************************/
#include "hml/util.h"
/*****************************************************************************/
#include "hml/tim.h"
#include "hml/tim2.h"

/*****************************************************************************
 *                             array define                                  *
 *****************************************************************************/
static __code char hexTable[16] = { '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

/*****************************************************************************
 *                           enumeration type                                *
 *****************************************************************************/

/**
 * \brief mark work mode of UART
 */
typedef enum
{
    UART_mode_0 = 0x0,       /* 8-bit shift register */
    UART_mode_1 = 0x1,       /* 8-bit UART,variable baud rate */
    UART_mode_2 = 0x2,       /* 9-bit UART,baud rate = fosc/64 or fosc/32 */
    UART_mode_3 = 0x3        /* 9-bit UART,variable baud rate */
} UART_mode;

/*****************************************************************************
 *                           structure define                                *
 *****************************************************************************/

/**
 * \brief struct for UART configuration
 */
typedef struct
{
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
void UART_cmd_multiBaudrate(Action a);
void UART_cmd_receive(Action a);
void UART_config(UART_configTypeDef *uc);
uint16_t UART_getBaudGeneratorInitValue(uint32_t baud, PERIPH_TIM tim);
byte UART_getByte(void);
FunctionalState UART_isReceived(void);
FunctionalState UART_isTransmitted(void);
void UART_sendByte(byte dat);
void UART_sendHex(uint8_t hex);
void UART_sendString(char *str);
void UART_setMode(UART_mode mode);
void UART_switchTim(PERIPH_TIM tim);
void UART_INT_cmd(Action a);
void UART_INT_setPriority(UTIL_interruptPriority p);

#endif
