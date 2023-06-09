/*****************************************************************************/
/** 
 * \file        types.h
 * \author      Jiabin Hsu  | zsiothsu@zhishan-iot.tk
 * \author      Weilun Fong | wlf@zhishan-iot.tk
 * \brief       HML standard data type define, include base data type and extended
 *              data type
 * \note        HML only uses data types ruled by this file!
 * \version     
 * \ingroup     generic
******************************************************************************/

#ifndef ___TYPES_H___
#define ___TYPES_H___

/*****************************************************************************
 *                             header file                                   *
 *****************************************************************************/

#include "bit.h"

#define UINT8_MAX              (255)
#define UINT16_MAX             (65535)
#define UINT32_MAX             (4294967295UL)

/**
 *             [ HML BASE DATA TYPE SHEET ]
 * ========================================================
 * |   HML base data type   |         description         |
 * ========================================================
 * |         bool           |         boolean type        |
 * |------------------------|-----------------------------|
 * |         char           |        character type       |
 * |------------------------|-----------------------------|
 * |        uint8_t         |   unsigned 8-bit integer    |
 * |------------------------|-----------------------------|
 * |        int8_t          |    signed 8-bit integer     |
 * |------------------------|-----------------------------|
 * |       uint16_t         |   unsigned 16-bit integer   |
 * |------------------------|-----------------------------|
 * |        int16_t         |    signed 16-bit integer    |
 * |------------------------|-----------------------------|
 * |       uint32_t         |   unsigned 32-bit integer   |
 * |------------------------|-----------------------------|
 * |        int32_t         |    signed 32-bit integer    |
 * |------------------------|-----------------------------|
 * |       uint64_t         |   unsigned 64-bit integer   |
 * |------------------------|-----------------------------|
 * |        int64_t         |    signed 64-bit integer    |
 * ========================================================
 *
 * @note: base data types are all defined in original header files provides by
 *        SDCC official
 */

/*****************************************************************************
 *                                macro                                      *
 *****************************************************************************/
#define BYTE_MAX   UINT8_MAX
#define WORD_MAX   UINT16_MAX

/*****************************************************************************
 *                             type define                                   *
 *****************************************************************************/
#define _Bool bit
#define BOOL bit
#define bool _Bool
#define __bool_true_false_are_defined 1

#define true    (bool)1
#define false   (bool)0
/* Signed.  */
typedef signed char             int8_t;
typedef short int               int16_t;
typedef long int                int32_t;

/* Unsigned.  */
typedef unsigned char           uint8_t;
typedef unsigned short int      uint16_t;
typedef unsigned long int       uint32_t;

typedef uint8_t    byte;
typedef uint16_t   word;
/*****************************************************************************
 *                           enumeration type                                *
 *****************************************************************************/

/**
 * \brief mark user action
 */
typedef enum
{
    DISABLE = 0x0,
    ENABLE  = !DISABLE
} Action;

/**
 * \brief mark bit value/state
 */
typedef enum
{
    RESET = 0x0,
    SET   = !RESET
} FunctionalState;

/**
 * xdata sfr address switch
*/
#define SFRX_ON()             (P_SW2 |= 0x80)
#define SFRX_OFF()            (P_SW2 &= ~0x80)


#endif
