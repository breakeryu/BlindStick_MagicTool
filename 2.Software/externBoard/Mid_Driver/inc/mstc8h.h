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


#define INTERRUPT(name, vector) void name (void) interrupt vector

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

/* IP2 bits */
#define BIT_NUM_PS2             0
#define BIT_NUM_PSPI            1
#define BIT_NUM_PPWMA           2
#define BIT_NUM_PPWMB           3
#define BIT_NUM_PX4             4
#define BIT_NUM_PCMP            5
#define BIT_NUM_PI2C            6
#define BIT_NUM_PUSB_PTKSU      7

/* IP2H bits */
#define BIT_NUM_PS2H            0
#define BIT_NUM_PSPIH           1
#define BIT_NUM_PPWMAH          2
#define BIT_NUM_PPWMBH          3
#define BIT_NUM_PX4H            4
#define BIT_NUM_PCMPH           5
#define BIT_NUM_PI2CH           6
#define BIT_NUM_PUSBH_PTKSUH    7

/* IP3 bits */
#define BIT_NUM_PS3             0
#define BIT_NUM_PS4             1
#define BIT_NUM_PRTC            2

/* IP3H bits */
#define BIT_NUM_PS3H             0
#define BIT_NUM_PS4H             1
#define BIT_NUM_PRTCH            2

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

/* T4T3M bits */
#define BIT_NUM_T4T3M_T3CLKO    0
#define BIT_NUM_T4T3M_T3X12     1
#define BIT_NUM_T4T3M_T3CT      2
#define BIT_NUM_T4T3M_T3R       3
#define BIT_NUM_T4T3M_T4CLKO    4
#define BIT_NUM_T4T3M_T4X12     5
#define BIT_NUM_T4T3M_T4CT      6
#define BIT_NUM_T4T3M_T4R       7

/* IE2 bits */
#define BIT_NUM_IE2_ES2    0
#define BIT_NUM_IE2_ESPI   1
#define BIT_NUM_IE2_ET2    2
#define BIT_NUM_IE2_ES3    3
#define BIT_NUM_IE2_ES4    4
#define BIT_NUM_IE2_ET3    5
#define BIT_NUM_IE2_ET4    6
#define BIT_NUM_IE2_EUSB   7

/* S2CON bits */
#define BIT_NUM_S2CON_S2RI      0
#define BIT_NUM_S2CON_S2TI      1
#define BIT_NUM_S2CON_S2RB8     2
#define BIT_NUM_S2CON_S2TB8     3
#define BIT_NUM_S2CON_S2REN     4
#define BIT_NUM_S2CON_S2SM2     5
#define BIT_NUM_S2CON_S2SM0     7

/* S3CON bits */
#define BIT_NUM_S3CON_S3RI      0
#define BIT_NUM_S3CON_S3TI      1
#define BIT_NUM_S3CON_S3RB8     2
#define BIT_NUM_S3CON_S3TB8     3
#define BIT_NUM_S3CON_S3REN     4
#define BIT_NUM_S3CON_S3SM2     5
#define BIT_NUM_S3CON_S3ST3     6
#define BIT_NUM_S3CON_S3SM0     7

/* S4CON bits */
#define BIT_NUM_S4CON_S4RI      0
#define BIT_NUM_S4CON_S4TI      1
#define BIT_NUM_S4CON_S4RB8     2
#define BIT_NUM_S4CON_S4TB8     3
#define BIT_NUM_S4CON_S4REN     4
#define BIT_NUM_S4CON_S4SM2     5
#define BIT_NUM_S4CON_S4ST4     6
#define BIT_NUM_S4CON_S4SM0     7


#endif

