/**************************************************************************//**
 * @file     ARMv81MML_DSP_DP_MVE_FP.h
 * @brief    CMSIS Core Peripheral Access Layer Header File for
 *           Armv8.1-M Mainline Device Series (configured for Armv8.1-M Mainline with double precision FPU, with DSP extension, with TrustZone)
 * @version  V1.1.0
 * @date     27. March 2020
 ******************************************************************************/
/*
 * Copyright (c) 2009-2020 Arm Limited. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the License); you may
 * not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an AS IS BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef ARMv81MML_DSP_DP_MVE_FP_H
#define ARMv81MML_DSP_DP_MVE_FP_H

#ifdef __cplusplus
extern "C" {
#endif


/* -------------------------  Interrupt Number Definition  ------------------------ */

typedef enum IRQn
{
/* --------------------  Armv8.1-M Mainline Processor Exceptions Numbers  --------- */
  NonMaskableInt_IRQn           = -14,      /*  2 Non Maskable Interrupt */
  HardFault_IRQn                = -13,      /*  3 HardFault Interrupt */
  MemoryManagement_IRQn         = -12,      /*  4 Memory Management Interrupt */
  BusFault_IRQn                 = -11,      /*  5 Bus Fault Interrupt */
  UsageFault_IRQn               = -10,      /*  6 Usage Fault Interrupt */
  SecureFault_IRQn              =  -9,      /*  7 Secure Fault Interrupt */
  SVCall_IRQn                   =  -5,      /* 11 SV Call Interrupt */
  DebugMonitor_IRQn             =  -4,      /* 12 Debug Monitor Interrupt */
  PendSV_IRQn                   =  -2,      /* 14 Pend SV Interrupt */
  SysTick_IRQn                  =  -1,      /* 15 System Tick Interrupt */

/* -------------------  Processor Interrupt Numbers  ------------------------------ */
  Interrupt0_IRQn               =   0,
  Interrupt1_IRQn               =   1,
  Interrupt2_IRQn               =   2,
  Interrupt3_IRQn               =   3,
  Interrupt4_IRQn               =   4,
  Interrupt5_IRQn               =   5,
  Interrupt6_IRQn               =   6,
  Interrupt7_IRQn               =   7,
  Interrupt8_IRQn               =   8,
  Interrupt9_IRQn               =   9
  /* Interrupts 10 .. 480 are left out */
} IRQn_Type;


/* ================================================================================ */
/* ================      Processor and Core Peripheral Section     ================ */
/* ================================================================================ */

/* -------  Start of section using anonymous unions and disabling warnings  ------- */
#if   defined (__CC_ARM)
  #pragma push
  #pragma anon_unions
#elif defined (__ICCARM__)
  #pragma language=extended
#elif defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wc11-extensions"
  #pragma clang diagnostic ignored "-Wreserved-id-macro"
#elif defined (__GNUC__)
  /* anonymous unions are enabled by default */
#elif defined (__TMS470__)
  /* anonymous unions are enabled by default */
#elif defined (__TASKING__)
  #pragma warning 586
#elif defined (__CSMC__)
  /* anonymous unions are enabled by default */
#else
  #warning Not supported compiler type
#endif

/* ---  Configuration of the Armv8.1-M Mainline Processor and Core Peripherals  --- */
#define __ARMv81MML_REV           0x0001U   /* Core revision r0p1 */
#define __SAUREGION_PRESENT       1U        /* SAU regions present */
#define __MPU_PRESENT             1U        /* MPU present */
#define __PMU_PRESENT             1U        /* PMU present */
#define __PMU_NUM_EVENTCNT        31U       /* Number of PMU event counters */  
#define __VTOR_PRESENT            1U        /* VTOR present */
#define __NVIC_PRIO_BITS          3U        /* Number of Bits used for Priority Levels */
#define __Vendor_SysTickConfig    0U        /* Set to 1 if different SysTick Config is used */
#define __FPU_PRESENT             1U        /* FPU present */
#define __FPU_DP                  1U        /* double precision FPU */
#define __DSP_PRESENT             1U        /* DSP extension present */
#define __ICACHE_PRESENT          1U        /* Instruction Cache present */
#define __DCACHE_PRESENT          1U        /* Data Cache present */

#include "core_armv81mml.h"                 /* Processor and core peripherals */
#include "system_ARMv81MML.h"               /* System Header */


/* --------  End of section using anonymous unions and disabling warnings  -------- */
#if   defined (__CC_ARM)
  #pragma pop
#elif defined (__ICCARM__)
  /* leave anonymous unions enabled */
#elif (defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050))
  #pragma clang diagnostic pop
#elif defined (__GNUC__)
  /* anonymous unions are enabled by default */
#elif defined (__TMS470__)
  /* anonymous unions are enabled by default */
#elif defined (__TASKING__)
  #pragma warning restore
#elif defined (__CSMC__)
  /* anonymous unions are enabled by default */
#else
  #warning Not supported compiler type
#endif


#ifdef __cplusplus
}
#endif

#endif  /* ARMv81MML_DSP_DP_MVE_FP_H */
