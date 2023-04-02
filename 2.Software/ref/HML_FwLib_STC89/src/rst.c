/*****************************************************************************/
/** 
 * \file        rst.c
 * \author      Jiabin Hsu | zsiothsu@zhishan-iot.tk
 * \brief       operations for reset module
 * \note        
 * \version     v1.3
 * \ingroup     RST
******************************************************************************/

#include "hml/rst.h"

#ifdef COMPILE_RST

/*****************************************************************************/
/** 
 * \author      Jiabin Hsu
 * \date        
 * \brief       software reset
 * \param[in]   area: the are you want to boot from
 * \return      none
 * \ingroup     RST
 * \remarks     
******************************************************************************/
void RST_reset(RST_bootarea area)
{
    SET_BIT_MASK(ISP_CONTR, ISPEN);//将ISPEN位置1
    CONFB(ISP_CONTR, BIT_NUM_SWBS, area);//选择相应的SWBS位，配合SWRST位进行软件复位操作
    SET_BIT_MASK(ISP_CONTR, SWRST);//将SWRST位置1，进行软件复位操作
}

#else
    #warning Nothing to be done... User should remove .c file which is disabled by compile control macro from current directory.
#endif
