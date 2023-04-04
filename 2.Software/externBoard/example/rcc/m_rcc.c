/*****************************************************************************/
/** 
 * \file        m_gpio.c
 * \author      Xiaoyu Ren
 * \brief       example for gpio 
 * \note        
 * \version     v0.1
 * \ingroup     example
******************************************************************************/

#include "hml.h"


void main(void)
{
    //enable XFR register
    SFRX_ON();

    RCC_configSysClock();   //IRC value = 30MHz

    //disable XFR register
    SFRX_OFF();

    while (1)
    {
        
    }
    
}


