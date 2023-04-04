/*****************************************************************************/
/** 
 * \file        util.c
 * \author      Xiaoyu Ren
 * \brief       public operations
 * \note        
 * \version     v0.1
 * \ingroup     util
******************************************************************************/

#include "util.h"

#ifdef COMPILE_UTIL

uint16_t ticks_ms    = (__CONF_FOSC / ((__CONF_CLKDIV == 0)? 1 : __CONF_CLKDIV) / __CLK_REF);
uint8_t  ticks_us    = (__CONF_FOSC / ((__CONF_CLKDIV == 0)? 1 : __CONF_CLKDIV) / __CLK_REF / 1000);


/*****************************************************************************/
/**
 * \author      IOsetting
 * \author      Xiaoyu Ren
 * \date        2023/04/04
 * \brief       software delay according to MCU clock frequency
 * \param[in]   t: how many one ms you want to delay
 * \return      none
 * \ingroup     UTIL
 * \remarks
******************************************************************************/
void Delay(uint16_t t)
{
    uint16_t i;
    do
    {
        i = ticks_ms;
        while (--i);
    } while (--t);
}


/*****************************************************************************/
/**
 * \author      IOsetting
 * \author      Xiaoyu Ren
 * \date        2023/04/04
 * \brief       software delay according to MCU clock frequency
 * \param[in]   t: how many one us you want to delay
 * \return      none
 * \ingroup     UTIL
 * \remarks
******************************************************************************/
void Delay_us(uint16_t t)
{
    uint8_t i;
    do
    {
        i = ticks_us;
        while (--i);
    } while (--t);
}


#endif
