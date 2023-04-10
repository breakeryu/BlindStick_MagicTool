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
 * \author      Jiabin Hsu
 * \author      Xiaoyu Ren
 * \date        
 * \brief       calculate initial value for THx/TLx register
 * \param[in]   time: expected timing cycle(unit: us)
 * \param[in]   mode: work mode of timer
 * \return      initial value of timer counter register(if return 0x0000, it 
 *              means that the time has over the limit)
 * \ingroup     TIM
 * \remarks     
******************************************************************************/
uint16_t TIM_calculateValue(TIM_configTypeDef *tc, uint16_t time, TIM_mode mode)
{
    /* machine cycle: MCU_FRE_CLK / MCU_PRESCALER */
    uint32_t value = __SYSCLOCK;
    uint32_t maxTick = 0x0000;
    
    switch (mode)
    {
        case TIM_mode_0: maxTick = 0xFFFF; break;
        case TIM_mode_1: maxTick = 0xFFFF; break;
        case TIM_mode_2: maxTick = 0x00FF; break;
        case TIM_mode_3: maxTick = 0xFFFF; break;
        default: break;
    }

    if(!tc->Dividerfunction)
    {
        value = value / 12;
    }
    value = time*(value/1000000);
    //这里使用timer2里面的计算方式来做定时计算中间的过程
    if ( value >= maxTick)
    {
        return 0;
    }
    else
    {
        return (maxTick + 1 - value);
    }
    
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure target timer
 * \param[in]   tim: target timer(the value must be PERIPH_TIM_0 or PERIPH_TIM_1)
 * \param[in]   tc : configuration struct includes all parameters
 * \return      none
 * \ingroup     TIM
 * \remarks     not for timer2
******************************************************************************/
void TIM_config(PERIPH_TIM tim, TIM_configTypeDef *tc)
{
    TIM_setFrequencyDivider(tim, tc->Dividerfunction);
    TIM_setFunction(tim, tc->function);
    TIM_setMode(tim, tc->mode);
    TIM_setValue(tim, tc->value);
    TIM_INT_cmd(tim, tc->interruptState);
    TIM_INT_setPriority(tim, tc->interruptPriority);
}



/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       enable or disable target timer
 * \param[in]   tim: target timer(the value must be PERIPH_TIM_0 or PERIPH_TIM_1)
 * \param[in]   a  : expected state
 * \return      none
 * \ingroup     TIM
 * \remarks     not for timer2
******************************************************************************/
void TIM_cmd(PERIPH_TIM tim, Action a)
{
    switch (tim)
    {
        case PERIPH_TIM_0: TR0 = a; break;
        case PERIPH_TIM_1: TR1 = a; break;
        default: break;
    }
}


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

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       enable or disable interrupt function of target timer
 * \param[in]   tim: target timer module
 * \param[in]   a  : expected state
 * \return      none
 * \ingroup     TIM
 * \remarks     not for timer2
******************************************************************************/
void TIM_INT_cmd(PERIPH_TIM tim, Action a)
{
    switch (tim)
    {
        case PERIPH_TIM_0: ET0 = a; break;
        case PERIPH_TIM_1: ET1 = a; break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure interrupt priority class of target timer
 * \param[in]   tim: target timer module
 * \param[in]   p  : interrupt priority class
 * \return      none
 * \ingroup     TIM
 * \remarks     not for timer2
******************************************************************************/
void TIM_INT_setPriority(PERIPH_TIM tim, UTIL_interruptPriority p)
{
    switch (tim)
    {
        case PERIPH_TIM_0:
        {
            PT0 = TESTB(p, 0);
            CONFB(IPH, BIT_NUM_PT0H, TESTB(p, 1));
        } break;
        case PERIPH_TIM_1:
        {
            PT1 = TESTB(p, 0);
            CONFB(IPH, BIT_NUM_PT1H, TESTB(p, 1));
        } break;
        default: break;
    }
}


//#endif
