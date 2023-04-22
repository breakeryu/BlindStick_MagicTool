/*****************************************************************************/
/** 
 * \file        tim2.c
 * \author      Xiaoyu Ren
 * \brief       operations for TIM 2, TIM 3 and TIM 4 module
 * \note        
 * \version     v0.1
 * \ingroup     TIM2
******************************************************************************/


#include "tim2.h"



/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       calculate initial value for TxH/TxL register, x = 2, 3, 4
 * \param[in]   tc: configuration struct includes all parameters
 * \param[in]   time: expected timing cycle(unit: us)
 * \return      initial value of timer counter register(if return 0x0000, it 
 *              means that the time has over the limit)
 * \ingroup     TIM2
 * \remarks     just for timer2, timer3 and timer4
******************************************************************************/
uint16_t TIM2_calculateValue(TIM2_configTypeDef *tc, uint16_t time)
{
    /* machine cycle: MCU_FRE_CLK / MCU_PRESCALER */
    uint32_t value = __SYSCLOCK;
    uint32_t maxTick = 0xFFFF;

    if(!tc->Frequency_1T_State)
    {
        value = value / 12;
    }

    value = time*(value/1000000)/(tc->PS_value + 1);
    
    if ( value >= maxTick || value <= 0)
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
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure target timer
 * \param[in]   tim: target timer(the value must be PERIPH_TIM_2 , PERIPH_TIM_3 or PERIPH_TIM_4)
 * \param[in]   tc : configuration struct includes all parameters
 * \return      none
 * \ingroup     TIM2
 * \remarks     just for timer2, timer3 and timer4
******************************************************************************/
void TIM2_config(PERIPH_TIM tim, TIM2_configTypeDef *tc)
{
    TIM2_set_1T_Frequency(tim, tc->Frequency_1T_State);
    TIM2_setFunction(tim, tc->function);
    TIM2_set_PS_Value(tim, tc->PS_value);
    TIM2_INT_cmd(tim,tc->interruptState);
    TIM2_setValue(tim, tc->value);
}


/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure work mode of target timer
 * \param[in]   tim : target timer module (the value must be PERIPH_TIM_2, PERIPH_TIM_3 or PERIPH_TIM_4)
 * \param[in]   mode: expected work mode
 * \return      none
 * \ingroup     TIM2
 * \remarks     just for timer2, timer3 and timer4
******************************************************************************/
void TIM2_setFunction(PERIPH_TIM tim, TIM_function mode)
{
    switch (tim)
    {
        case PERIPH_TIM_2: CONFB(AUXR, BIT_NUM_T2CT, mode); break;
        case PERIPH_TIM_3: CONFB(T4T3M, BIT_NUM_T4T3M_T3CT, mode); break;
        case PERIPH_TIM_4: CONFB(T4T3M, BIT_NUM_T4T3M_T4CT, mode); break;
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
 *                   f = DISABLE, timerSpeed =  FOSC/12
 *                   f = ENABLE , timerSpeed =  FOSC
 *                   Default is Disable.
 * \return      none
 * \ingroup     TIM2
 * \remarks     just for timer2, timer3 and timer4
******************************************************************************/
void TIM2_set_1T_Frequency(PERIPH_TIM tim, Action f)
{
    switch (tim)
    {
        case PERIPH_TIM_2: CONFB(AUXR, BIT_NUM_T2X12, f); break;
        case PERIPH_TIM_3: CONFB(T4T3M, BIT_NUM_T4T3M_T3X12, f); break;
        case PERIPH_TIM_4: CONFB(T4T3M, BIT_NUM_T4T3M_T4X12, f); break;
        default: break;
    }
}

/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       set value of TMXPS register
 * \param[in]   tim: target timer module
 * \param[in]   val: expected value(range: 0x00~0xFF)
 * \return      none
 * \ingroup     TIM2
 * \remarks     just for timer2, timer3 and timer4
******************************************************************************/
void TIM2_set_PS_Value(PERIPH_TIM tim, uint8_t val)
{
    switch (tim)
    {
        case PERIPH_TIM_2:
        {
            TM2PS = val;
        } break;
        case PERIPH_TIM_3:
        {
            TM3PS = val;
        } break;
        case PERIPH_TIM_4:
        {
            TM4PS = val;
        } break;
        default:break;
    }
}


/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       set value of TxH/TxL register
 * \param[in]   tim: target timer module
 * \param[in]   val: expected value(range: 0x0000~0xFFFF)
 * \return      none
 * \ingroup     TIM2
 * \remarks     just for timer2, timer3 and timer4
******************************************************************************/
void TIM2_setValue(PERIPH_TIM tim, uint16_t val)
{
    switch (tim)
    {
        case PERIPH_TIM_2:
        {
            T2H = (uint8_t)((val >> 0x8) & 0x00FF);
            T2L = (uint8_t)(val & 0x00FF);
        } break;
        case PERIPH_TIM_3:
        {
            T3H = (uint8_t)((val >> 0x8) & 0x00FF);
            T3L = (uint8_t)(val & 0x00FF);
        } break;
        case PERIPH_TIM_4:
        {
            T4H = (uint8_t)((val >> 0x8) & 0x00FF);
            T4L = (uint8_t)(val & 0x00FF);
        } break;
        default:break;
    }
}

/*****************************************************************************/
/** 
 * \author      Xiaoyu Ren
 * \date        
 * \brief       enable or disable interrupt function of target timer
 * \param[in]   tim: target timer module
 * \param[in]   a  : expected state
 * \return      none
 * \ingroup     TIM2
 * \remarks     just for timer2, timer3 and timer4
******************************************************************************/
void TIM2_INT_cmd(PERIPH_TIM tim, Action a)
{
    switch (tim)
    {
        case PERIPH_TIM_2: CONFB(IE2, BIT_NUM_IE2_ET2, a); break;
        case PERIPH_TIM_3: CONFB(IE2, BIT_NUM_IE2_ET3, a); break;
        case PERIPH_TIM_4: CONFB(IE2, BIT_NUM_IE2_ET4, a); break;
        default: break;
    }
}


/*****************************************************************************/
/** 
 * \author      Jiabin Hsu
 * \author      Xiaoyu Ren
 * \date        
 * \brief       enable or disable timer-2
 * \param[in]   tim: target timer module
 * \param[in]   a: expected state
 * \return      none
 * \ingroup     TIM2
 * \remarks     
******************************************************************************/
void TIM2_cmd(PERIPH_TIM tim, Action a)
{
    switch (tim)
    {
        case PERIPH_TIM_2: T2R = a; break;
        case PERIPH_TIM_3: CONFB(T4T3M, BIT_NUM_T4T3M_T3R, a); break;
        case PERIPH_TIM_4: CONFB(T4T3M, BIT_NUM_T4T3M_T4R, a); break;
        default: break;
    }
    
}


