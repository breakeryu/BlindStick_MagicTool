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
            CONFB(IE2, BIT_NUM_IE2_ES2, a);
            break;
        case PERIPH_UART3:
            CONFB(IE2, BIT_NUM_IE2_ES3, a);
            break;
        case PERIPH_UART4:
            CONFB(IE2, BIT_NUM_IE2_ES4, a);
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
 * \param[in]   uart: expected uart
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
 * \author      Xiaoyu Ren
 * \date        
 * \brief       enable or disable receive function
 * \param[in]   uart: expected uart
 * \param[in]   a: expected state
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_cmd_receive(UART_Port_t uart, Action a)
{
    switch (uart)
    {
        case PERIPH_UART1:
            REN = a;
            break;
        case PERIPH_UART2:
            CONFB(S2CON, BIT_NUM_S2CON_S2REN, a);
            break;
        case PERIPH_UART3:
            CONFB(S3CON, BIT_NUM_S3CON_S3REN, a);
            break;
        case PERIPH_UART4:
            CONFB(S4CON, BIT_NUM_S4CON_S4REN, a);
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
 * \brief       enable or disable multi-baudrate mode
 * \param[in]   uart: expected uart
 * \param[in]   a: expected state
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_cmd_multiBaudrate(UART_Port_t uart, Action a)
{
    switch (uart)
    {
        case PERIPH_UART1:
            CONFB(PCON, BIT_NUM_SMOD, a);
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
 * \brief       configure UART module
 * \param[in]   uc: the pointer of configuration struct
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_config(UART_configTypeDef *uc)
{
    TIM_configTypeDef  tc;
    TIM2_configTypeDef tc2;

    UART_INT_cmd(uc->uart, uc->interruptState);
    UART_INT_setPriority(uc->uart, uc->interruptPriority);
    UART_cmd_multiBaudrate(uc->uart, uc->multiBaudrate);
    UART_setMode(uc->uart, uc->mode);
    UART_cmd_receive(uc->uart, uc->receiveState);
    UART_switchTim(uc->uart, uc->baudGenerator);
    UART_switchPort(uc->uart, uc->portPin);

    switch (uc->baudGenerator)
    {
        case PERIPH_TIM_1:
        {
            tc.function             = TIM_function_tim;     // timer 
            tc.interruptState       = DISABLE;                  
            tc.interruptPriority    = DISABLE;
            tc.mode                 = TIM_mode_0;           // use mode 0 
            tc.Frequency_1T_State   = ENABLE;               // 1T
            tc.value                = UART_getBaudGeneratorInitValue(uc->baudrate, PERIPH_TIM_1);
            TIM_config(PERIPH_TIM_1, &tc);
            TIM_cmd(PERIPH_TIM_1, ENABLE); 
        } break; 
        case PERIPH_TIM_2:
        case PERIPH_TIM_3:
        case PERIPH_TIM_4:
        {
            tc2.function            = TIM_function_tim;
            tc2.interruptState      = DISABLE;
            tc2.Frequency_1T_State  = ENABLE;
            tc2.PS_value = 0x00;
            tc2.value               = UART_getBaudGeneratorInitValue(uc->baudrate, uc->baudGenerator);
            TIM2_config(uc->baudGenerator, &tc2);
            TIM2_cmd(uc->baudGenerator,ENABLE);
        } break;  
        default: break;
    }
}


/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       calculate initial value of counter inside timer
 * \param[in]   baud: expected baud rate
 * \param[in]   tim : expected baudrate generator
 * \return      initial value of baudrate generator's counter register(if the 
 *              function returns 0x0000, it means overflow)
 * \ingroup     UART
 * \remarks     
******************************************************************************/
uint16_t UART_getBaudGeneratorInitValue(uint32_t baud, PERIPH_TIM tim)
{
    
    switch (tim)
    {
        case PERIPH_TIM_1:
        {

            if (baud > __SYSCLOCK/4)
            {
                return 0x0000;
            }
            else
            {
                return (65536 - __SYSCLOCK/4/baud);
            }
          
        } break;
        case PERIPH_TIM_2:
        case PERIPH_TIM_3:
        case PERIPH_TIM_4:
        {
            return ((65536 - (__SYSCLOCK/4/baud)));
        } break;
        default: return 0; break;
    }

}



/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/22
 * \brief       get result of UART receiver
 * \param[in]   uart: expected uart
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
byte UART_getByte(UART_Port_t uart)
{
    switch (uart)
    {
        case PERIPH_UART1:
            return SBUF;
            break;
        case PERIPH_UART2:
            return S2BUF;
            break;
        case PERIPH_UART3:
            return S3BUF;
            break;
        case PERIPH_UART4:
            return S4BUF;
            break;
        default:
            return 0;
            break;
    }
    
}


/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/22
 * \brief       check if UART module has received one byte of data or not
 * \param[in]   uart: expected uart
 * \return      value of bit TI
 * \ingroup     UART
 * \remarks     
******************************************************************************/
FunctionalState UART_isReceived(UART_Port_t uart)
{
    switch (uart)
    {
        case PERIPH_UART1:
            return (FunctionalState)RI;
            break;
        case PERIPH_UART2:
            return (FunctionalState)GET_BIT(S2CON,BIT_NUM_S2CON_S2RI);
            break;
        case PERIPH_UART3:
            return (FunctionalState)GET_BIT(S3CON,BIT_NUM_S3CON_S3RI);
            break;
        case PERIPH_UART4:
            return (FunctionalState)GET_BIT(S4CON,BIT_NUM_S4CON_S4RI);
            break;
        default:
            return 0;
            break;
    }
    
}

/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        2023/04/24
 * \brief       Clear Receive Flag after Interrupt
 * \param[in]   uart: expected uart
 * \return      
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_clearReceiveFlag(UART_Port_t uart)
{
    switch (uart)
    {
        case PERIPH_UART1:
            RI = RESET;
            break;
        case PERIPH_UART2:
            CLR_BIT_MASK(S2CON,BIT_NUM_S2CON_S2RI);
            break;
        case PERIPH_UART3:
            CLR_BIT_MASK(S3CON,BIT_NUM_S3CON_S3RI);
            break;
        case PERIPH_UART4:
            CLR_BIT_MASK(S4CON,BIT_NUM_S4CON_S4RI);
            break;
        default:
            break;
    }
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/22
 * \brief       check if UART module has transmitted one byte of data or not
 * \param[in]   uart: expected uart
 * \return      value of bit RI
 * \ingroup     UART
 * \remarks     
******************************************************************************/
FunctionalState UART_isTransmitted(UART_Port_t uart)
{
    switch (uart)
    {
        case PERIPH_UART1:
            return (FunctionalState)TI;
            break;
        case PERIPH_UART2:
            return (FunctionalState)GET_BIT(S2CON,BIT_NUM_S2CON_S2TI);
            break;
        case PERIPH_UART3:
            return (FunctionalState)GET_BIT(S3CON,BIT_NUM_S3CON_S3TI);
            break;
        case PERIPH_UART4:
            return (FunctionalState)GET_BIT(S4CON,BIT_NUM_S4CON_S4TI);
            break;
        default:
            return 0;
            break;
    }
    
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/22
 * \brief       send one byte of data via UART
 * \param[in]   uart: expected uart
 * \param[in]   dat: expected byte data
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_sendByte(UART_Port_t uart, byte dat)
{
    switch (uart)
    {
        case PERIPH_UART1:
            SBUF = dat;
            while (!TI);
            TI = RESET;
            break;
        case PERIPH_UART2:
            S2BUF = dat;
            while (!GET_BIT(S2CON,BIT_NUM_S2CON_S2TI));
            CLR_BIT_MASK(S2CON,BIT_NUM_S2CON_S2TI);
            break;
        case PERIPH_UART3:
            S3BUF = dat;
            while (!GET_BIT(S3CON,BIT_NUM_S3CON_S3TI));
            CLR_BIT_MASK(S3CON,BIT_NUM_S3CON_S3TI);
            break;
        case PERIPH_UART4:
            S4BUF = dat;
            while (!GET_BIT(S4CON,BIT_NUM_S4CON_S4TI));
            CLR_BIT_MASK(S4CON,BIT_NUM_S4CON_S4TI);
            break;
        default:
            break;
    }
   
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/22
 * \brief       output a hex number with character format via UART
 * \param[in]   uart: expected uart
 * \param[in]   hex: expected hex number(range: 0x0 ~ 0xF)
 * \return      none
 * \ingroup     UART
 * \remarks     
******************************************************************************/
void UART_sendHex(UART_Port_t uart, uint8_t hex)
{
    UART_sendByte(uart, hexTable[hex >> 0x4]);
    UART_sendByte(uart, hexTable[hex & 0xF]);
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/22
 * \brief       send string via UART
 * \param[in]   uart: expected uart
 * \param[in]   str: pointer to target string
 * \return      none
 * \ingroup     UART
 * \remarks     the string must be end with '\0'
******************************************************************************/
void UART_sendString(UART_Port_t uart, char *str)
{
    switch (uart)
    {
        case PERIPH_UART1:
            while (*str != '\0')
            {
                SBUF = *str;
                while (!TI);
                TI = RESET;          /* reset flag */
                str++;
            }
            break;
        case PERIPH_UART2:
            while (*str != '\0')
            {
                S2BUF = *str;
                while (!GET_BIT(S2CON,BIT_NUM_S2CON_S2TI));
                CLR_BIT_MASK(S2CON,BIT_NUM_S2CON_S2TI);
                str++;
            }
            break;
        case PERIPH_UART3:
            while (*str != '\0')
            {
                S3BUF = *str;
                while (!GET_BIT(S3CON,BIT_NUM_S3CON_S3TI));
                CLR_BIT_MASK(S3CON,BIT_NUM_S3CON_S3TI);
                str++;
            }
            break;
        case PERIPH_UART4:
            while (*str != '\0')
            {
                S4BUF = *str;
                while (!GET_BIT(S4CON,BIT_NUM_S4CON_S4TI));
                CLR_BIT_MASK(S4CON,BIT_NUM_S4CON_S4TI);
                str++;
            }
            break;
        default:
            break;
    }
    
}

//#endif

