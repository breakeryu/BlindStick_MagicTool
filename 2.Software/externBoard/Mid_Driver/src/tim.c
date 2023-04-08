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

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       set value of THx/TLx register
 * \param[in]   tim: target timer module
 * \param[in]   val: expected value(range: 0x0000~0xFFFF)
 * \return      none
 * \ingroup     TIM
 * \remarks     not for timer2
******************************************************************************/
void TIM_setValue(PERIPH_TIM tim, uint16_t val)
{
    switch (tim)
    {
        case PERIPH_TIM_0:
        {
            TH0 = (uint8_t)((val >> 0x8) & 0x00FF);
            TL0 = (uint8_t)(val & 0x00FF);
        } break;
        case PERIPH_TIM_1:
        {
            TH1 = (uint8_t)((val >> 0x8) & 0x00FF);
            TL1 = (uint8_t)(val & 0x00FF);
        } break;
        default:break;
    }
}




//#endif
