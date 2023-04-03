/*****************************************************************************/
/** 
 * \file        gpio.c
 * \author      Jiabin Hsu  | zsiothsu(at)zhishan-iot.tk
 * \author      Weilun Fong | wlf@zhishan-iot.tk
 * \author      Xiaoyu Ren
 * \brief       operations for GPIO module
 * \note        
 * \version     v1.3
 * \ingroup     GPIO
******************************************************************************/

#include "gpio.h"


#ifdef COMPILE_GPIO

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure state of target GPIO Mode 
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \param[in]   mode   : expected mode
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_configMode(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, PERIPH_GPIO_PIN_MODE mode)
{
    

    switch (gpio)
    {
        case PERIPH_GPIO_0: 
            switch (mode)
            {
                case PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT:
                    CLR_BIT_MASK(P0M0, pin); CLR_BIT_MASK(P0M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_PUSH_PULL_OUTPUT:
                    SET_BIT_MASK(P0M0, pin); CLR_BIT_MASK(P0M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_HIGH_Z_INPUT:
                    CLR_BIT_MASK(P0M0, pin); SET_BIT_MASK(P0M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_OPEN_DRAIN_OUTPUT:
                    SET_BIT_MASK(P0M0, pin); SET_BIT_MASK(P0M1, pin);
                    break;
                default:
                    break;
            }
            break;
        case PERIPH_GPIO_1: 
            switch (mode)
            {
                case PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT:
                    CLR_BIT_MASK(P1M0, pin); CLR_BIT_MASK(P1M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_PUSH_PULL_OUTPUT:
                    SET_BIT_MASK(P1M0, pin); CLR_BIT_MASK(P1M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_HIGH_Z_INPUT:
                    CLR_BIT_MASK(P1M0, pin); SET_BIT_MASK(P1M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_OPEN_DRAIN_OUTPUT:
                    SET_BIT_MASK(P1M0, pin); SET_BIT_MASK(P1M1, pin);
                    break;
                default:
                    break;
            }
            break;
        case PERIPH_GPIO_2: 
            switch (mode)
            {
                case PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT:
                    CLR_BIT_MASK(P2M0, pin); CLR_BIT_MASK(P2M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_PUSH_PULL_OUTPUT:
                    SET_BIT_MASK(P2M0, pin); CLR_BIT_MASK(P2M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_HIGH_Z_INPUT:
                    CLR_BIT_MASK(P2M0, pin); SET_BIT_MASK(P2M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_OPEN_DRAIN_OUTPUT:
                    SET_BIT_MASK(P2M0, pin); SET_BIT_MASK(P2M1, pin);
                    break;
                default:
                    break;
            }
            break;
        case PERIPH_GPIO_3: 
            switch (mode)
            {
                case PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT:
                    CLR_BIT_MASK(P3M0, pin); CLR_BIT_MASK(P3M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_PUSH_PULL_OUTPUT:
                    SET_BIT_MASK(P3M0, pin); CLR_BIT_MASK(P3M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_HIGH_Z_INPUT:
                    CLR_BIT_MASK(P3M0, pin); SET_BIT_MASK(P3M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_OPEN_DRAIN_OUTPUT:
                    SET_BIT_MASK(P3M0, pin); SET_BIT_MASK(P3M1, pin);
                    break;
                default:
                    break;
            }
            break;
        case PERIPH_GPIO_4: 
            switch (mode)
            {
                case PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT:
                    CLR_BIT_MASK(P4M1, pin); CLR_BIT_MASK(P4M0, pin); 
                    break;
                case PERIPH_GPIO_PIN_MODE_PUSH_PULL_OUTPUT:
                    SET_BIT_MASK(P4M0, pin); CLR_BIT_MASK(P4M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_HIGH_Z_INPUT:
                    CLR_BIT_MASK(P4M0, pin); SET_BIT_MASK(P4M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_OPEN_DRAIN_OUTPUT:
                    SET_BIT_MASK(P4M0, pin); SET_BIT_MASK(P4M1, pin);
                    break;
                default:
                    break;
            }
            break;
        case PERIPH_GPIO_5: 
            switch (mode)
            {
                case PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT:
                    CLR_BIT_MASK(P5M0, pin); CLR_BIT_MASK(P5M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_PUSH_PULL_OUTPUT:
                    SET_BIT_MASK(P5M0, pin); CLR_BIT_MASK(P5M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_HIGH_Z_INPUT:
                    CLR_BIT_MASK(P5M0, pin); SET_BIT_MASK(P5M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_OPEN_DRAIN_OUTPUT:
                    SET_BIT_MASK(P5M0, pin); SET_BIT_MASK(P5M1, pin);
                    break;
                default:
                    break;
            }
            break;
        case PERIPH_GPIO_6: 
            switch (mode)
            {
                case PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT:
                    CLR_BIT_MASK(P6M0, pin); CLR_BIT_MASK(P6M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_PUSH_PULL_OUTPUT:
                    SET_BIT_MASK(P6M0, pin); CLR_BIT_MASK(P6M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_HIGH_Z_INPUT:
                    CLR_BIT_MASK(P6M0, pin); SET_BIT_MASK(P6M1, pin);
                    break;
                case PERIPH_GPIO_PIN_MODE_OPEN_DRAIN_OUTPUT:
                    SET_BIT_MASK(P6M0, pin); SET_BIT_MASK(P6M1, pin);
                    break;
                default:
                    break;
            }
            break;
        case PERIPH_GPIO_7: 
            switch (mode)
                {
                    case PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT:
                        CLR_BIT_MASK(P7M0, pin); CLR_BIT_MASK(P7M1, pin);
                        break;
                    case PERIPH_GPIO_PIN_MODE_PUSH_PULL_OUTPUT:
                        SET_BIT_MASK(P7M0, pin); CLR_BIT_MASK(P7M1, pin);
                        break;
                    case PERIPH_GPIO_PIN_MODE_HIGH_Z_INPUT:
                        CLR_BIT_MASK(P7M0, pin); SET_BIT_MASK(P7M1, pin);
                        break;
                    case PERIPH_GPIO_PIN_MODE_OPEN_DRAIN_OUTPUT:
                        SET_BIT_MASK(P7M0, pin); SET_BIT_MASK(P7M1, pin);
                        break;
                    default:
                        break;
                }
            break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure state of target GPIO High Current as SET or RESET
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \param[in]   f   : expected state
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_configHighCurrent(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, FunctionalState f)
{
    SFRX_ON();
    if (f == RESET)
    {
        GPIO_setGeneralCurrent(gpio, pin);
    }
    else
    {
        GPIO_setHighCurrent(gpio, pin);
    }
    SFRX_OFF();
}


/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       set target GPIO Pin General Current
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_setGeneralCurrent(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: SET_BIT_MASK(P0DR, pin); break;
        case PERIPH_GPIO_1: SET_BIT_MASK(P1DR, pin); break;
        case PERIPH_GPIO_2: SET_BIT_MASK(P2DR, pin); break;
        case PERIPH_GPIO_3: SET_BIT_MASK(P3DR, pin); break;
        case PERIPH_GPIO_4: SET_BIT_MASK(P4DR, pin); break;
        case PERIPH_GPIO_5: SET_BIT_MASK(P5DR, pin); break;
        case PERIPH_GPIO_6: SET_BIT_MASK(P6DR, pin); break;
        case PERIPH_GPIO_7: SET_BIT_MASK(P7DR, pin); break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       set target GPIO Pin High Current
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_setHighCurrent(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: CLR_BIT_MASK(P0DR, pin); break;
        case PERIPH_GPIO_1: CLR_BIT_MASK(P1DR, pin); break;
        case PERIPH_GPIO_2: CLR_BIT_MASK(P2DR, pin); break;
        case PERIPH_GPIO_3: CLR_BIT_MASK(P3DR, pin); break;
        case PERIPH_GPIO_4: CLR_BIT_MASK(P4DR, pin); break;
        case PERIPH_GPIO_5: CLR_BIT_MASK(P5DR, pin); break;
        case PERIPH_GPIO_6: CLR_BIT_MASK(P6DR, pin); break;
        case PERIPH_GPIO_7: CLR_BIT_MASK(P7DR, pin); break;
        default: break;
    }
}



/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure state of target GPIO High Speed as SET or RESET
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \param[in]   f   : expected state
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_configHighSpeed(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, FunctionalState f)
{
    SFRX_ON();
    if (f == RESET)
    {
        GPIO_setGeneralSpeed(gpio, pin);
    }
    else
    {
        GPIO_setHighSpeed(gpio, pin);
    }
    SFRX_OFF();
}


/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       set target GPIO Pin General Speed
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_setGeneralSpeed(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: SET_BIT_MASK(P0SR, pin); break;
        case PERIPH_GPIO_1: SET_BIT_MASK(P1SR, pin); break;
        case PERIPH_GPIO_2: SET_BIT_MASK(P2SR, pin); break;
        case PERIPH_GPIO_3: SET_BIT_MASK(P3SR, pin); break;
        case PERIPH_GPIO_4: SET_BIT_MASK(P4SR, pin); break;
        case PERIPH_GPIO_5: SET_BIT_MASK(P5SR, pin); break;
        case PERIPH_GPIO_6: SET_BIT_MASK(P6SR, pin); break;
        case PERIPH_GPIO_7: SET_BIT_MASK(P7SR, pin); break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       set target GPIO Pin High Speed
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_setHighSpeed(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: CLR_BIT_MASK(P0SR, pin); break;
        case PERIPH_GPIO_1: CLR_BIT_MASK(P1SR, pin); break;
        case PERIPH_GPIO_2: CLR_BIT_MASK(P2SR, pin); break;
        case PERIPH_GPIO_3: CLR_BIT_MASK(P3SR, pin); break;
        case PERIPH_GPIO_4: CLR_BIT_MASK(P4SR, pin); break;
        case PERIPH_GPIO_5: CLR_BIT_MASK(P5SR, pin); break;
        case PERIPH_GPIO_6: CLR_BIT_MASK(P6SR, pin); break;
        case PERIPH_GPIO_7: CLR_BIT_MASK(P7SR, pin); break;
        default: break;
    }
}



/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure state of target GPIO Pull Up as SET or RESET
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \param[in]   f   : expected state
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_configPullUP(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, FunctionalState f)
{
    SFRX_ON();
    if (f == RESET)
    {
        GPIO_resetPullUp(gpio, pin);
    }
    else
    {
        GPIO_setPullUp(gpio, pin);
    }
    SFRX_OFF();
}



/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       reset target GPIO Pin Pull Up 
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_resetPullUp(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: CLR_BIT_MASK(P0PU, pin); break;
        case PERIPH_GPIO_1: CLR_BIT_MASK(P1PU, pin); break;
        case PERIPH_GPIO_2: CLR_BIT_MASK(P2PU, pin); break;
        case PERIPH_GPIO_3: CLR_BIT_MASK(P3PU, pin); break;
        case PERIPH_GPIO_4: CLR_BIT_MASK(P4PU, pin); break;
        case PERIPH_GPIO_5: CLR_BIT_MASK(P5PU, pin); break;
        case PERIPH_GPIO_6: CLR_BIT_MASK(P6PU, pin); break;
        case PERIPH_GPIO_7: CLR_BIT_MASK(P7PU, pin); break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       set target GPIO Pin Pull Up 
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_setPullUp(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: SET_BIT_MASK(P0PU, pin); break;
        case PERIPH_GPIO_1: SET_BIT_MASK(P1PU, pin); break;
        case PERIPH_GPIO_2: SET_BIT_MASK(P2PU, pin); break;
        case PERIPH_GPIO_3: SET_BIT_MASK(P3PU, pin); break;
        case PERIPH_GPIO_4: SET_BIT_MASK(P4PU, pin); break;
        case PERIPH_GPIO_5: SET_BIT_MASK(P5PU, pin); break;
        case PERIPH_GPIO_6: SET_BIT_MASK(P6PU, pin); break;
        case PERIPH_GPIO_7: SET_BIT_MASK(P7PU, pin); break;
        default: break;
    }
}



/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/02
 * \brief       configure state of target GPIO bit as SET or RESET
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \param[in]   f   : expected state
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_configBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, FunctionalState f)
{
    if (f == RESET)
    {
        GPIO_resetBitValue(gpio, pin);
    }
    else
    {
        GPIO_setBitValue(gpio, pin);
    }
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/02
 * \brief       reset target GPIO pin
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_resetBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: CLR_BIT_MASK(P0, pin); break;
        case PERIPH_GPIO_1: CLR_BIT_MASK(P1, pin); break;
        case PERIPH_GPIO_2: CLR_BIT_MASK(P2, pin); break;
        case PERIPH_GPIO_3: CLR_BIT_MASK(P3, pin); break;
        case PERIPH_GPIO_4: CLR_BIT_MASK(P4, pin); break;
        case PERIPH_GPIO_5: CLR_BIT_MASK(P5, pin); break;
        case PERIPH_GPIO_6: CLR_BIT_MASK(P6, pin); break;
        case PERIPH_GPIO_7: CLR_BIT_MASK(P7, pin); break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/02
 * \brief       set target GPIO pin
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_setBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: SET_BIT_MASK(P0, pin); break;
        case PERIPH_GPIO_1: SET_BIT_MASK(P1, pin); break;
        case PERIPH_GPIO_2: SET_BIT_MASK(P2, pin); break;
        case PERIPH_GPIO_3: SET_BIT_MASK(P3, pin); break;
        case PERIPH_GPIO_4: SET_BIT_MASK(P4, pin); break;
        case PERIPH_GPIO_5: SET_BIT_MASK(P5, pin); break;
        case PERIPH_GPIO_6: SET_BIT_MASK(P6, pin); break;
        case PERIPH_GPIO_7: SET_BIT_MASK(P7, pin); break;
        default: break;
    }
}


/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/02
 * \brief       toggle state of target GPIO pin
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_toggleBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: NOT_BIT_MASK(P0, pin); break;
        case PERIPH_GPIO_1: NOT_BIT_MASK(P1, pin); break;
        case PERIPH_GPIO_2: NOT_BIT_MASK(P2, pin); break;
        case PERIPH_GPIO_3: NOT_BIT_MASK(P3, pin); break;
        case PERIPH_GPIO_4: NOT_BIT_MASK(P4, pin); break;
        case PERIPH_GPIO_5: NOT_BIT_MASK(P5, pin); break;
        case PERIPH_GPIO_6: NOT_BIT_MASK(P6, pin); break;
        case PERIPH_GPIO_7: NOT_BIT_MASK(P7, pin); break;       
        default: break;
    }
}


/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/02
 * \brief       get state of target GPIO pin
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \return      SET or RESET
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
FunctionalState GPIO_getBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: return GET_BIT(P0, pin);
        case PERIPH_GPIO_1: return GET_BIT(P1, pin);
        case PERIPH_GPIO_2: return GET_BIT(P2, pin);
        case PERIPH_GPIO_3: return GET_BIT(P3, pin);
        case PERIPH_GPIO_4: return GET_BIT(P4, pin);
        case PERIPH_GPIO_5: return GET_BIT(P5, pin);
        case PERIPH_GPIO_6: return GET_BIT(P6, pin);
        case PERIPH_GPIO_7: return GET_BIT(P7, pin);
        default: return RESET;
    }
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        2023/04/02
 * \brief       get value of target GPIO port
 * \param[in]   gpio: target GPIO port
 * \return      current value of target GPIO port
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
byte GPIO_getPortValue(PERIPH_GPIO gpio)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0: return P0;
        case PERIPH_GPIO_1: return P1;
        case PERIPH_GPIO_2: return P2;
        case PERIPH_GPIO_3: return P3;
        case PERIPH_GPIO_4: return P4;
        case PERIPH_GPIO_5: return P5;
        case PERIPH_GPIO_6: return P6;
        case PERIPH_GPIO_7: return P7;
        default: return 0x00;
    }
}


#endif


