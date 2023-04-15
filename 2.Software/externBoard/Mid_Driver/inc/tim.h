/*****************************************************************************/
/** 
 * \file        tim.h
 * \author      Xiaoyu Ren
 * \brief       operations for TIM 0 and TIM 1 module
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
#include "rcc.h"
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
    PERIPH_TIM_2 = 0x2,
    PERIPH_TIM_3 = 0x3,
    PERIPH_TIM_4 = 0x4
} PERIPH_TIM;

/**
 * \brief mark timer work mode
 */
typedef enum
{
    TIM_mode_0 = 0x0,        /* 16-bit timer/counter auto reload from [TH0,TL0](Timer0), [TH1,TL1](Timer1) */
    TIM_mode_1 = 0x1,        /* 16-bit timer/counter no-auto-reload */
    TIM_mode_2 = 0x2,        /* 8-bit auto reload from TH0(Timer0), TH1(Timer1) */
    TIM_mode_3 = 0x3         /* Uninterruptable 16-bit timer/counter auto-reload, Timer0 only */
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
 * \if Frequency_1T_State = ENABLE  , Min time Period = 1/__SYSCLOCK s, Max time Period = 65535/__SYSCLOCK s
 * \if Frequency_1T_State = DISABLE , Min time Period = 1*12/__SYSCLOCK s, Max time Period = 65535*12/__SYSCLOCK s
 */
typedef struct
{
    Action                  Frequency_1T_State;// Enable clk = clk / 12; Disable clk = clk
    TIM_function            function;
    Action                  interruptState;
    UTIL_interruptPriority  interruptPriority;
    TIM_mode                mode;
    uint16_t                value;
} TIM_configTypeDef;

/*****************************************************************************
 *                          function declare                                 *
 *****************************************************************************/

uint16_t TIM_calculateValue(TIM_configTypeDef *tc, uint16_t time);
void TIM_config(PERIPH_TIM tim, TIM_configTypeDef *tc);
void TIM_cmd(PERIPH_TIM tim, Action a);
void TIM_set_1T_Frequency(PERIPH_TIM tim, Action f);
void TIM_setFunction(PERIPH_TIM tim, TIM_function f);
void TIM_setMode(PERIPH_TIM tim, TIM_mode mode);
void TIM_setValue(PERIPH_TIM tim, uint16_t val);
void TIM_INT_cmd(PERIPH_TIM tim, Action a);
void TIM_INT_setPriority(PERIPH_TIM tim, UTIL_interruptPriority p);
uint16_t TIM_getValue(PERIPH_TIM tim);
bool TIM_isOverflow(PERIPH_TIM tim);

#endif

