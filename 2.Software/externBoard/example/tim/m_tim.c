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
    //enable XFR register
    SFRX_ON();
    
    RCC_configSysClock(); //IRC value = 30MHz

    GPIO_configMode(PERIPH_GPIO_4, PERIPH_GPIO_PIN_5, PERIPH_GPIO_PIN_MODE_GENERAL_IN_OUT);
    
    TIM_configTypeDef tc;

    tc.Frequency_1T_State = DISABLE;
    tc.function = TIM_function_tim;
    tc.interruptState = ENABLE;
    tc.interruptPriority = UTIL_interruptPriority_0;
    tc.mode = TIM_mode_1;
    tc.value = TIM_calculateValue(&tc,5000); //5ms的定时周期

    TIM_config(PERIPH_TIM_0,&tc);
    TIM_cmd(PERIPH_TIM_0,ENABLE);

    enableAllInterrupts();

    
    //disable XFR register
    SFRX_OFF();
}


void main(void)
{

    sys_init();

    while (1)
    {
        
    }
    

}

/*****************************************************************************/
/** 
 * \author      Jiabin Hsu
 * \author      Xiaoyu Ren
 * \date        
 * \brief       interrupt service function for TIM0
 * \param[in]   
 * \return      none
 * \ingroup     example
 * \remarks     
******************************************************************************/
INTERRUPT(Timer0_Routine,EXTI_VectTimer0)
{
    static uint8_t i = 0;

    /* per 500ms */
    i++;
    if (i == 10)
    {
        GPIO_toggleBitValue(PERIPH_GPIO_4, PERIPH_GPIO_PIN_5);
        i = 0;
    }
}

