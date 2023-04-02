/*****************************************************************************/
/** 
 * \file       lineledtest.c
 * \author     breakzero
 * \date       
 * \brief      简单的测试数码管
 * \note       
 * \version    v1.0
 * \ingroup    example
 * \remarks    test-board: TS51-V2.0; test-MCU: STC89C52RC
******************************************************************************/

/*****************************************************************************
 *                             header file                                   *
 *****************************************************************************/
#include "hml/hml.h"
#include "device/lineledtube.h"


/*****************************************************************************/
/** 
 * \author      Jiabin Hsu
 * \date        
 * \brief       initial MCU
 * \param[in]   
 * \return      none
 * \ingroup     example
 * \remarks     
******************************************************************************/
void sys_init(void)
{
  

}

/*****************************************************************************/
/** 
 * \author      Jiabin Hsu
 * \date        
 * \brief       main function
 * \param[in]   
 * \return      none
 * \ingroup     example
 * \remarks     
******************************************************************************/
void main(void)
{
    sys_init();
    
    while(true){

        DigDisplayNum(0,1);
        DigDisplayNum(1,2);
        DigDisplayNum(2,3);
        DigDisplayNum(3,4);
        DigDisplayNum(4,5);
        DigDisplayNum(5,6);
        DigDisplayNum(6,7);
        DigDisplayNum(7,8);
    }
}
