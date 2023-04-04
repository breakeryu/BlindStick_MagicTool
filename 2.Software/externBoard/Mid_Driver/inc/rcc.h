/*****************************************************************************/
/** 
 * \file        rcc.h
 * \author      Xiaoyu Ren
 * \brief       operations for RCC module
 * \note        just use internal IRC , plesese use isp download tool
 * \version     v0.1
 * \ingroup     RCC
******************************************************************************/
#ifndef ___RCC_H___
#define ___RCC_H___


#include "conf.h"
#include "stc8h.h"
/**
 * The driver code is based on internal IRC frequence adjustment method.
 * When you use the code, please use isp download tool and make sure to use correct frequence!
 * 
 * eg:
 * The presetting frequence is 30MHz. You need to change the IRC value in isp tool, if the value is not equal 30MHz.
*/


/**
 * Precompute system clock based on __CONF_FOSC and __CONF_CLKDIV
*/
#define __SYSCLOCK          (__CONF_FOSC / ((__CONF_CLKDIV == 0) ? 1 : __CONF_CLKDIV))

void RCC_configSysClock(void);

#endif



