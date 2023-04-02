/*****************************************************************************/
/** 
 * \file        gpio.c
 * \author      Jiabin Hsu  | zsiothsu(at)zhishan-iot.tk
 * \author      Weilun Fong | wlf@zhishan-iot.tk
 * \author      Xiaoyu Ren
 * \brief       operations for GPIO module
 * \note        
 * \version     v1.3
 * \ingroup     GPIO
******************************************************************************/

#include "gpio.h"


#ifdef COMPILE_GPIO

/*****************************************************************************/
/** 
 * \author      Weilun Fong
 * \author      Xiaoyu Ren
 * \date        
 * \brief       configure state of target GPIO bit as SET or RESET
 * \param[in]   gpio: target GPIO port
 * \param[in]   pin : target GPIO pin
 * \param[in]   f   : expected state
 * \return      none
 * \ingroup     GPIO
 * \remarks     
******************************************************************************/
void GPIO_configPort(PERIPH_GPIO gpio, PERIPH_GPIO_PIN pin, PERIPH_GPIO_PIN_MODE mode)
{
    switch (gpio)
    {
        case PERIPH_GPIO_0:
            
            break;
        
        default:
            break;
    }
}


void GPIO_configModeHlper(PERIPH_GPIO_PIN pin)
{
    
}



#endif


