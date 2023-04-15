/*****************************************************************************/
/** 
 * \file        exit.c
 * \author      Xiaoyu Ren
 * \brief       operations for EXIT module
 * \note        
 * \version     v0.1
 * \ingroup     EXIT
******************************************************************************/

#ifndef  ___EXIT_H___
#define  ___EXIT_H___

#include "stc8h.h"
#include "types.h"

/**
 * \brief define interrupt list number
 */
#define EXTI_VectInt0           0
#define EXTI_VectTimer0         1
#define EXTI_VectInt1           2
#define EXTI_VectTimer1         3
#define EXTI_VectUART1          4
#define EXTI_VectADC            5
#define EXTI_VectLowVoltDect    6
#define EXTI_VectPCA            7
#define EXTI_VectUART2          8
#define EXTI_VectSPI            9
#define EXTI_VectInt2           10
#define EXTI_VectInt3           11
#define EXTI_VectTimer2         12
#define EXTI_VectInt4           16
#define EXTI_VectUART3          17
#define EXTI_VectUART4          18
#define EXTI_VectTimer3         19
#define EXTI_VectTimer4         20
#define EXTI_VectCMP            21
#define EXTI_VectI2C            24
#define EXTI_VectUSB            25
#define EXTI_VectPWMA           26
#define EXTI_VectPWMB           27


#endif

