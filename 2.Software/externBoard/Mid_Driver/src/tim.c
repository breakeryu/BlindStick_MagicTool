/*****************************************************************************/
/** 
 * \file        tim.c
 * \author      Xiaoyu Ren
 * \brief       operations for TIM module
 * \note        
 * \version     v0.1
 * \ingroup     TIM
******************************************************************************/

//#if COMPILE_TIM

#include "tim.h"

/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure function(timer or counter) of target timer
 * \param[in]   tim: target timer module (the value must be PERIPH_TIM_0 or PERIPH_TIM_1)
 * \param[in]   f: expected function (the value must be DISABLE or ENABLE)
 *                  f = DISABLE, timerSpeed =  FOSC
 *                  f = ENABLE , timerSpeed =  FOSC/12
 * \return      none
 * \ingroup     TIM
 * \remarks     just for timer0 and timer1
******************************************************************************/
void TIM_setFrequencyDivider(PERIPH_TIM tim, Action f)
{
    switch (tim)
    {
        case PERIPH_TIM_0: CONFB(AUXR, BIT_NUM_T0X12, !f); break;
        case PERIPH_TIM_1: CONFB(AUXR, BIT_NUM_T1X12, !f); break;
        default: break;
    }
}


/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure function(timer or counter) of target timer
 * \param[in]   tim: target timer module (the value must be PERIPH_TIM_0 or PERIPH_TIM_1)
 * \param[in]   f: expected function (the value must be TIM_function_cnt or TIM_function_tim)
 * \return      none
 * \ingroup     TIM
 * \remarks     just for timer0 and timer1
******************************************************************************/
void TIM_setFunction(PERIPH_TIM tim, TIM_function f)
{
    switch (tim)
    {
        case PERIPH_TIM_0: CONFB(TMOD, BIT_NUM_T0_CT, f); break;
        case PERIPH_TIM_1: CONFB(TMOD, BIT_NUM_T1_CT, f); break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure work mode of target timer
 * \param[in]   tim : target timer module (the value must be PERIPH_TIM_0 or PERIPH_TIM_1)
 * \param[in]   mode: expected work mode
 * \return      none
 * \ingroup     TIM
 * \remarks     just for timer0 and timer1
******************************************************************************/
void TIM_setMode(PERIPH_TIM tim, TIM_mode mode)
{
    switch (tim)
    {
        case PERIPH_TIM_0: TMOD = (TMOD & 0xFC) | mode; break;
        case PERIPH_TIM_1: TMOD = (TMOD & 0xCF) | (mode << 0x4); break;
        default: break;
    }
}






//#endif
