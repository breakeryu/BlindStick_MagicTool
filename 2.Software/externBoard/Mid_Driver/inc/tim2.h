/*****************************************************************************/
/** 
 * \file        tim2.c
 * \author      Xiaoyu Ren
 * \brief       operations for TIM 2, TIM 3 and TIM 4 module
 * \note        
 * \version     v0.1
 * \ingroup     TIM2
******************************************************************************/

#ifndef ___TIM2_H___
#define ___TIM2_H___


#include "conf.h"
#include "stc8h.h"
#include "types.h"
#include "util.h"
#include "mstc8h.h"
#include "rcc.h"
#include "tim.h"
/*****************************************************************************
 *                           enumeration type                                *
 *****************************************************************************/



/*****************************************************************************
 *                           structure define                                *
 *****************************************************************************/

/**
 * \brief struct for timer configuration
 * \if Frequency_1T_State = ENABLE  , Min time Period = 1/__SYSCLOCK s, Max time Period = 65535/__SYSCLOCK s
 * \if Frequency_1T_State = DISABLE , Min time Period = 1*12/__SYSCLOCK s, Max time Period = 65535*12/__SYSCLOCK s
 */
typedef struct
{
    Action                  Frequency_1T_State;// Enable clk = clk / 12; Disable clk = clk
    TIM_function            function;
    uint8_t                 PS_value;
    Action                  interruptState;
    uint16_t                value;
} TIM2_configTypeDef;


/*****************************************************************************
 *                          function declare                                 *
 *****************************************************************************/



uint16_t TIM2_calculateValue(TIM2_configTypeDef *tc, uint16_t time);
void TIM2_config(PERIPH_TIM tim, TIM2_configTypeDef *tc);
void TIM2_setFunction(PERIPH_TIM tim, TIM_function mode);
void TIM2_set_1T_Frequency(PERIPH_TIM tim, Action f);
void TIM2_set_PS_Value(PERIPH_TIM tim, uint8_t val);
void TIM2_setValue(PERIPH_TIM tim, uint16_t val);
void TIM2_INT_cmd(PERIPH_TIM tim, Action a);
void TIM2_cmd(PERIPH_TIM tim, Action a);

#endif


