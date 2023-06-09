/*****************************************************************************/
/** 
 * \file        hml.h
 * \author      Xiaoyu Ren | 
 * \brief       include all needed HML header files
 * \note        
 * \version     v0.1
 * \ingroup     generic
******************************************************************************/

#ifndef ___CONF_H___
#define ___CONF_H___

/**
 * \brief select HML module which take part in compilation
 */
#define COMPILE_EXTI  1
#define COMPILE_GPIO  1
#define COMPILE_ISP   1
#define COMPILE_MEM   1
#define COMPILE_RST   1
#define COMPILE_TIM   1
#define COMPILE_UART  1
#define COMPILE_UTIL  1
#define COMPILE_WDT   1
#define COMPILE_RCC   1


/**
 * \brief select SYS clock
 */
#ifndef __CONF_FOSC
    #define __CONF_FOSC 30000000UL
#endif

#ifndef __CONF_CLKDIV
    #define __CONF_CLKDIV 0x00
#endif









#endif

