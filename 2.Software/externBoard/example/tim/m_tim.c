/*****************************************************************************/
/** 
 * \file        m_tim.c
 * \author      Xiaoyu Ren
 * \brief       example for tim 
 * \note        
 * \version     v0.1
 * \ingroup     example
******************************************************************************/

#include "hml.h"


void sys_init(void)
{
    TIM_configTypeDef tc;
    tc.Dividerfunction = DISABLE;
    tc.function = TIM_function_tim;
    tc.interruptState = ENABLE;
    tc.interruptPriority = UTIL_interruptPriority_0;
    tc.mode = TIM_mode_1;
    tc.value = TIM_calculateValue(&tc,50000,TIM_mode_1);

    TIM_config(PERIPH_TIM_0,&tc);
    TIM_cmd(PERIPH_TIM_0,ENABLE);

    enableAllInterrupts();
    
}


void main(void)
{


    while (1)
    {
        
    }
    

}