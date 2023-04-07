/*****************************************************************************/
/** 
 * \file        mstc8h.h
 * \author      Xiaoyu Ren
 * \brief       public operations
 * \note        
 * \version     v0.1
 * \ingroup     help header
******************************************************************************/

#ifndef ___MSTC8H_H___
#define ___MSTC8H_H___



/* BIT number for bits that are not directly accessible */
/* AUXR bits */
#define BIT_NUM_S1ST2     0
#define BIT_NUM_EXTRAM    1
#define BIT_NUM_T2X12     2
#define BIT_NUM_T2CT      3
#define BIT_NUM_T2R       4
#define BIT_NUM_UARTM0X6  5
#define BIT_NUM_T1X12     6
#define BIT_NUM_T0X12     7
/* AUXR1 bits */
#define BIT_NUM_DPS       0
#define BIT_NUM_GF2       3

/* IPH bits */
#define BIT_NUM_PX0H      0
#define BIT_NUM_PT0H      1
#define BIT_NUM_PX1H      2
#define BIT_NUM_PT1H      3
#define BIT_NUM_PSH       4
#define BIT_NUM_PT2H      5
#define BIT_NUM_PX2H      6
#define BIT_NUM_PX3H      7

/* ISP_CMD bits */
#define BIT_NUM_MS0       0
#define BIT_NUM_MS1       1
#define BIT_NUM_MS2       2

/* ISP_CONTR bits */
#define BIT_NUM_WT0       0
#define BIT_NUM_WT1       1
#define BIT_NUM_WT2       2
#define BIT_NUM_SWRST     5
#define BIT_NUM_SWBS      6
#define BIT_NUM_ISPEN     7

/* PCON bits */
#define BIT_NUM_IDL       0
#define BIT_NUM_PD        1
#define BIT_NUM_GF0       2
#define BIT_NUM_GF1       3
#define BIT_NUM_POF       4
#define BIT_NUM_SMOD0     6
#define BIT_NUM_SMOD      7

/* T2MOD bits */
#define BIT_NUM_DCEN      0
#define BIT_NUM_T2OE      1

/* TMOD bits */
#define BIT_NUM_T0_M0     0
#define BIT_NUM_T0_M1     1
#define BIT_NUM_T0_CT     2
#define BIT_NUM_T0_GATE   3
#define BIT_NUM_T1_M0     4
#define BIT_NUM_T1_M1     5
#define BIT_NUM_T1_CT     6
#define BIT_NUM_T1_GATE   7




#endif

