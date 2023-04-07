/*****************************************************************************/
/** 
 * \file        tim.h
 * \author      Xiaoyu Ren
 * \brief       operations for TIM module
 * \note        
 * \version     v0.1
 * \ingroup     TIM
******************************************************************************/

#ifndef ___TIM_H___
#define ___TIM_H___

#include "conf.h"
#include "stc8h.h"
#include "types.h"
#include "util.h"
#include "mstc8h.h"
/*****************************************************************************
 *                           enumeration type                                *
 *****************************************************************************/

/**
 * \brief mark timer module
 */
typedef enum
{
    PERIPH_TIM_0 = 0x0,
    PERIPH_TIM_1 = 0x1,
    PERIPH_TIM_2 = 0x2
} PERIPH_TIM;

/**
 * \brief mark timer work mode
 */
typedef enum
{
    TIM_mode_0 = 0x0,        /* 16-bit timer/counter auto reload */
    TIM_mode_1 = 0x1,        /* 16-bit timer/counter */
    TIM_mode_2 = 0x2,        /* 8-bit auto reload */
    TIM_mode_3 = 0x3         /* only for timer-0 */
} TIM_mode;

/**
 * \brief mark function of timer
 */
typedef enum
{
    TIM_function_cnt = 0x1,  /* counter mode 计数器*/
    TIM_function_tim = 0x0   /* timer mode 定时器*/
} TIM_function;

/*****************************************************************************
 *                           structure define                                *
 *****************************************************************************/

/**
 * \brief struct for timer configuration
 */
typedef struct
{
    TIM_function            function;
    Action                  interruptState;
    UTIL_interruptPriority  interruptPriority;
    TIM_mode                mode;
    uint16_t                value;
} TIM_configTypeDef;

/*****************************************************************************
 *                          function declare                                 *
 *****************************************************************************/

void TIM_setFrequencyDivider(PERIPH_TIM tim, Action f);
void TIM_setFunction(PERIPH_TIM tim, TIM_function f);
void TIM_setMode(PERIPH_TIM tim, TIM_mode mode);



#endif

