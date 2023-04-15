/*****************************************************************************/
/** 
 * \file        m_tim_HeartBeat.c
 * \author      Xiaoyu Ren
 * \brief       example for tim 
 * \note        
 * \version     v0.1
 * \ingroup     example
******************************************************************************/

#include "hml.h"


void sys_Init(void)
{

    TIM_configTypeDef tc;
    tc.Frequency_1T_State = ENABLE;
    tc.function = TIM_function_tim;
    tc.mode = TIM_mode_3;
    tc.interruptState = ENABLE; 
    tc.interruptPriority = UTIL_interruptPriority_0;
    tc.value = TIM_calculateValue(&tc,1000);   // 1 ms time period

    TIM_config(PERIPH_TIM_0,&tc);
    TIM_cmd(PERIPH_TIM_0,ENABLE);

    enableAllInterrupts();

}

void main(void)
{

    sys_init();

    while (1)
    {
        
    }
    
}


INTERRUPT(Timer0_Routine,EXTI_VectTimer0)
{
    static uint32_t i = 0;
    i++;

}

