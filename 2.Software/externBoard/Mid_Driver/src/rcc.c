/*****************************************************************************/
/** 
 * \file        rcc.c
 * \author      Xiaoyu Ren
 * \brief       operations for RCC module
 * \note        just use internal IRC , plesese use isp download tool
 * \version     v0.1
 * \ingroup     RCC
******************************************************************************/

#include "rcc.h"

#ifdef COMPILE_RCC


/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure system clock 
 * \param[in]   void
 * \return      none
 * \ingroup     RCC
 * \remarks     
******************************************************************************/
void RCC_configSysClock(void)
{
    CLKDIV = __CONF_CLKDIV;
}


#endif

