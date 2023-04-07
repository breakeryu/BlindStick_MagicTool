/*****************************************************************************/
/** 
 * \file        util.h
 * \author      Xiaoyu Ren
 * \brief       public operations
 * \note        
 * \version     v0.1
 * \ingroup     util
******************************************************************************/
#ifndef ____UTIL_H_
#define ____UTIL_H_

#include "conf.h"
#include "types.h"


#define __CLK_REF 10000

/*****************************************************************************
 *                           enumeration type                                *
 *****************************************************************************/
/**
 * \brief mark interrupt priority, lager number means higher priority
 */
typedef enum
{
    UTIL_interruptPriority_0 = 0x00,
    UTIL_interruptPriority_1 = 0x01,
    UTIL_interruptPriority_2 = 0x02,
    UTIL_interruptPriority_3 = 0x03,
} UTIL_interruptPriority;


void Delay(uint16_t t);
void Delay_us(uint16_t t);



#endif


