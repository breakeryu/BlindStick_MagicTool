/*****************************************************************************/
/** 
 * \file        hml.h
 * \author      Xiaoyu Ren | 
 * \brief       include all needed HML header files
 * \note        
 * \version     v0.1
 * \ingroup     generic
******************************************************************************/


#ifndef ___GPIO_H___
#define ___GPIO_H___

/*****************************************************************************
 *                             header file                                   *
 *****************************************************************************/
#include "hml.h"


/*****************************************************************************
 *                           enumeration type                                *
 *****************************************************************************/

/**
 * \brief define port
 */
typedef enum
{
    PERIPH_GPIO_0 = 0x0,
    PERIPH_GPIO_1 = 0x1,
    PERIPH_GPIO_2 = 0x2,
    PERIPH_GPIO_3 = 0x3,
    PERIPH_GPIO_4 = 0x4,
    PERIPH_GPIO_5 = 0x5,
    PERIPH_GPIO_6 = 0x6,
    PERIPH_GPIO_7 = 0x7
} PERIPH_GPIO;

/**
 * \brief define pin
 */
typedef enum
{
    PERIPH_GPIO_PIN_0 = 0x01,
    PERIPH_GPIO_PIN_1 = 0x02,
    PERIPH_GPIO_PIN_2 = 0x04,
    PERIPH_GPIO_PIN_3 = 0x08,
    PERIPH_GPIO_PIN_4 = 0x10,
    PERIPH_GPIO_PIN_5 = 0x20,
    PERIPH_GPIO_PIN_6 = 0x40,
    PERIPH_GPIO_PIN_7 = 0x80
} PERIPH_GPIO_PIN;

/**
 * \brief define pinMode
 */
typedef enum
{
    PERIPH_GPIO_PIN_MODE_GENERAL    = 0x00,
    PERIPH_GPIO_PIN_MODE_PUSH_PULL  = 0x01,
    PERIPH_GPIO_PIN_MODE_HIGH_Z     = 0x02,
    PERIPH_GPIO_PIN_MODE_OPEN_DRAIN = 0x03
} PERIPH_GPIO_PIN_MODE;

#endif
