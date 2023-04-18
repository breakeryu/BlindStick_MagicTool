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
 * \brief       switch uart port pins
 * \param[in]   uart: expected uart
 * \param[in]   UART_PortPin: expected PortPins
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_switchPort(UART_Port_t uart, uint8_t UART_PortPin)
{
    switch (uart)
    {
        case PERIPH_UART1:
            CONFB(P_SW1, 6, TESTB(UART_PortPin, 0));
            CONFB(P_SW1, 7, TESTB(UART_PortPin, 1));
            break;
        case PERIPH_UART2:
            CONFB(P_SW2, 0, UART_PortPin);
            break;
        case PERIPH_UART3:
            CONFB(P_SW2, 1, UART_PortPin);
            break;
        case PERIPH_UART4:
            CONFB(P_SW2, 2, UART_PortPin);
            break;
        default:
            break;
    }
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       enable or disable interrupt of UART
 * \param[in]   uart: expected uart
 * \param[in]   a: expected state
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_INT_cmd(UART_Port_t uart, Action a)
{
    switch (uart)
    {
        case PERIPH_UART1:
            ES = a;
            break;
        case PERIPH_UART2:
            CONFB(IE_2, BIT_NUM_IE2_ES2, a);
            break;
        case PERIPH_UART3:
            CONFB(IE_2, BIT_NUM_IE2_ES3, a);
            break;
        case PERIPH_UART4:
            CONFB(IE_2, BIT_NUM_IE2_ES4, a);
            break;
        default:
            break;
    }
    
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure interrupt priority class of UART
 * \param[in]   uart: expected uart
 * \param[in]   p: expected interrupt priority class
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_INT_setPriority(UART_Port_t uart, UTIL_interruptPriority p)
{
    switch (uart)
    {
        case PERIPH_UART1:
            PS = TESTB(p, 0);
            CONFB(IPH, BIT_NUM_PSH, TESTB(p, 1));
            break;
        case PERIPH_UART2:
            CONFB(IP2, BIT_NUM_PS2, TESTB(p, 0));
            CONFB(IP2H, BIT_NUM_PS2H, TESTB(p, 1));
            break;
        case PERIPH_UART3:
            CONFB(IP3, BIT_NUM_PS3, TESTB(p, 0));
            CONFB(IP3H, BIT_NUM_PS3H, TESTB(p, 1));
            break;
        case PERIPH_UART4:
            CONFB(IP3, BIT_NUM_PS4, TESTB(p, 0));
            CONFB(IP3H, BIT_NUM_PS4H, TESTB(p, 1));
            break;
        default:
            break;
    }
    
   
}


/*****************************************************************************/
/** 
 * \author      Jiabin Hsu
 * \author      Xiaoyu Ren
 * \date        
 * \brief       select a timer as baudrate generator
 * \param[in]   uart: expected uart
 * \param[in]   tim: target timer
 * \return      none
 * \ingroup     UART
 * \remarks     when parameter uart = PERIPH_UART1, parameter tim must be PERIPH_TIM_1 or PERIPH_TIM_2
 *              when parameter uart = PERIPH_UART2, parameter tim must be PERIPH_TIM_2
 *              when parameter uart = PERIPH_UART3, parameter tim must be PERIPH_TIM_2 or PERIPH_TIM_3
 *              when parameter uart = PERIPH_UART4, parameter tim must be PERIPH_TIM_2 or PERIPH_TIM_4
******************************************************************************/
void UART_switchTim(UART_Port_t uart, PERIPH_TIM tim)
{
    switch (uart)
    {
        case PERIPH_UART1:
            if (tim == PERIPH_TIM_1)
            {
                CONFB(AUXR, BIT_NUM_S1ST2, 0);
            }
            else if (tim == PERIPH_TIM_2)
            {
                CONFB(AUXR, BIT_NUM_S1ST2, 1);
            }
            break;
        case PERIPH_UART2:
            break;
        case PERIPH_UART3:
            if (tim == PERIPH_TIM_2)
            {
                CONFB(S3CON, BIT_NUM_S3CON_S3ST3, 0);
            }
            else if (tim == PERIPH_TIM_3)
            {
                CONFB(S3CON, BIT_NUM_S3CON_S3ST3, 1);
            }
            break;
        case PERIPH_UART4:
            if (tim == PERIPH_TIM_2)
            {
                CONFB(S4CON, BIT_NUM_S4CON_S4ST4, 0);
            }
            else if (tim == PERIPH_TIM_4)
            {
                CONFB(S4CON, BIT_NUM_S4CON_S4ST4, 1);
            }
            break;
        default:
            break;
    }

}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       set work mode of UART module
 * \param[in]   mode: expected work mode
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_setMode(UART_Port_t uart, uint8_t mode)
{
    switch (uart)
    {
        case PERIPH_UART1:
            SCON = (SCON & 0x3F) | ((uint8_t)mode << 0x6);
            break;
        case PERIPH_UART2:
            CONFB(S2CON, BIT_NUM_S2CON_S2SM0, mode);
            break;
        case PERIPH_UART3:
            CONFB(S3CON, BIT_NUM_S3CON_S3SM0, mode);
            break;
        case PERIPH_UART4:
            CONFB(S4CON, BIT_NUM_S4CON_S4SM0, mode);
            break;
        default:
            break;
    }
    
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \date        
 * \brief       enable or disable receive function
 * \param[in]   a: expected state
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_cmd_receive(Action a)
{
    REN = a;
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

