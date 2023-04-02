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
    PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT     = 0x00,
    PERIPH_GPIO_PIN_MODE_PUSH_PULL_OUTPUT   = 0x01,
    PERIPH_GPIO_PIN_MODE_HIGH_Z_INPUT       = 0x02,
    PERIPH_GPIO_PIN_MODE_OPEN_DRAIN_OUTPUT  = 0x03
} PERIPH_GPIO_PIN_MODE;


/**
 * \brief config pinMode
 */

void GPIO_configMode(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, PERIPH_GPIO_PIN_MODE mode);


/**
 * \brief config HighCurrent
 */

void GPIO_configHighCurrent(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, FunctionalState f);
void GPIO_setGeneralCurrent(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);
void GPIO_setHighCurrent(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);


/**
 * \brief config HighSpeed
 */

void GPIO_configHighSpeed(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, FunctionalState f);
void GPIO_setGeneralSpeed(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);
void GPIO_setHighSpeed(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);

/**
 * \brief config PullUP
 */

void GPIO_configPullUP(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, FunctionalState f);
void GPIO_resetPullUp(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);
void GPIO_setPullUp(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);


/**
 * \brief GPIO write
 */

void GPIO_configBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, FunctionalState f);
void GPIO_resetBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);
void GPIO_setBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);
void GPIO_toggleBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);

/**
 * \brief GPIO read
 */

FunctionalState GPIO_getBitValue(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin);
byte GPIO_getPortValue(PERIPH_GPIO gpio);



#endif
