;********************************************************************************
; FILE   : INI_EXTI.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Bitove masky ridicich registru pro EXTI (ext. interrupt)
;
;                  External Interrupt/Event Controller (EXTI)
;
; Part of an assembler library for STM32L100, based on the STM32 CMSIS.
; Developed for educational purposes at the Department of Measure of CTU in Prague.
; See the LICENSE file for detailed terms of use.
;********************************************************************************

;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

; External interrupt control registers

EXTI_IMR     EQU  (_EXTI + 0x00) ; EXTI interrupt mask register,
EXTI_EMR     EQU  (_EXTI + 0x04) ; EXTI event mask register,
EXTI_RTSR    EQU  (_EXTI + 0x08) ; EXTI rising edge trigger selection register,
EXTI_FTSR    EQU  (_EXTI + 0x0C) ; EXTI Falling edge trigger selection register,
EXTI_SWIER   EQU  (_EXTI + 0x10) ; EXTI software interrupt event register,
EXTI_PR      EQU  (_EXTI + 0x14) ; EXTI pending register,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************

;******************  Bit definition for EXTI_IMR register  ******************
EXTI_IMR_MR0                     EQU  0x00000001        ; Interrupt Mask on line 0
EXTI_IMR_MR1                     EQU  0x00000002        ; Interrupt Mask on line 1
EXTI_IMR_MR2                     EQU  0x00000004        ; Interrupt Mask on line 2
EXTI_IMR_MR3                     EQU  0x00000008        ; Interrupt Mask on line 3
EXTI_IMR_MR4                     EQU  0x00000010        ; Interrupt Mask on line 4
EXTI_IMR_MR5                     EQU  0x00000020        ; Interrupt Mask on line 5
EXTI_IMR_MR6                     EQU  0x00000040        ; Interrupt Mask on line 6
EXTI_IMR_MR7                     EQU  0x00000080        ; Interrupt Mask on line 7
EXTI_IMR_MR8                     EQU  0x00000100        ; Interrupt Mask on line 8
EXTI_IMR_MR9                     EQU  0x00000200        ; Interrupt Mask on line 9
EXTI_IMR_MR10                    EQU  0x00000400        ; Interrupt Mask on line 10
EXTI_IMR_MR11                    EQU  0x00000800        ; Interrupt Mask on line 11
EXTI_IMR_MR12                    EQU  0x00001000        ; Interrupt Mask on line 12
EXTI_IMR_MR13                    EQU  0x00002000        ; Interrupt Mask on line 13
EXTI_IMR_MR14                    EQU  0x00004000        ; Interrupt Mask on line 14
EXTI_IMR_MR15                    EQU  0x00008000        ; Interrupt Mask on line 15
EXTI_IMR_MR16                    EQU  0x00010000        ; Interrupt Mask on line 16
EXTI_IMR_MR17                    EQU  0x00020000        ; Interrupt Mask on line 17
EXTI_IMR_MR18                    EQU  0x00040000        ; Interrupt Mask on line 18
EXTI_IMR_MR19                    EQU  0x00080000        ; Interrupt Mask on line 19
EXTI_IMR_MR20                    EQU  0x00100000        ; Interrupt Mask on line 20
EXTI_IMR_MR21                    EQU  0x00200000        ; Interrupt Mask on line 21
EXTI_IMR_MR22                    EQU  0x00400000        ; Interrupt Mask on line 22
EXTI_IMR_MR23                    EQU  0x00800000        ; Interrupt Mask on line 23

;******************  Bit definition for EXTI_EMR register  ******************
EXTI_EMR_MR0                     EQU  0x00000001        ; Event Mask on line 0
EXTI_EMR_MR1                     EQU  0x00000002        ; Event Mask on line 1
EXTI_EMR_MR2                     EQU  0x00000004        ; Event Mask on line 2
EXTI_EMR_MR3                     EQU  0x00000008        ; Event Mask on line 3
EXTI_EMR_MR4                     EQU  0x00000010        ; Event Mask on line 4
EXTI_EMR_MR5                     EQU  0x00000020        ; Event Mask on line 5
EXTI_EMR_MR6                     EQU  0x00000040        ; Event Mask on line 6
EXTI_EMR_MR7                     EQU  0x00000080        ; Event Mask on line 7
EXTI_EMR_MR8                     EQU  0x00000100        ; Event Mask on line 8
EXTI_EMR_MR9                     EQU  0x00000200        ; Event Mask on line 9
EXTI_EMR_MR10                    EQU  0x00000400        ; Event Mask on line 10
EXTI_EMR_MR11                    EQU  0x00000800        ; Event Mask on line 11
EXTI_EMR_MR12                    EQU  0x00001000        ; Event Mask on line 12
EXTI_EMR_MR13                    EQU  0x00002000        ; Event Mask on line 13
EXTI_EMR_MR14                    EQU  0x00004000        ; Event Mask on line 14
EXTI_EMR_MR15                    EQU  0x00008000        ; Event Mask on line 15
EXTI_EMR_MR16                    EQU  0x00010000        ; Event Mask on line 16
EXTI_EMR_MR17                    EQU  0x00020000        ; Event Mask on line 17
EXTI_EMR_MR18                    EQU  0x00040000        ; Event Mask on line 18
EXTI_EMR_MR19                    EQU  0x00080000        ; Event Mask on line 19
EXTI_EMR_MR20                    EQU  0x00100000        ; Event Mask on line 20
EXTI_EMR_MR21                    EQU  0x00200000        ; Event Mask on line 21
EXTI_EMR_MR22                    EQU  0x00400000        ; Event Mask on line 22
EXTI_EMR_MR23                    EQU  0x00800000        ; Event Mask on line 23

;*****************  Bit definition for EXTI_RTSR register  ******************
EXTI_RTSR_TR0                    EQU  0x00000001        ; Rising trigger event configuration bit of line 0
EXTI_RTSR_TR1                    EQU  0x00000002        ; Rising trigger event configuration bit of line 1
EXTI_RTSR_TR2                    EQU  0x00000004        ; Rising trigger event configuration bit of line 2
EXTI_RTSR_TR3                    EQU  0x00000008        ; Rising trigger event configuration bit of line 3
EXTI_RTSR_TR4                    EQU  0x00000010        ; Rising trigger event configuration bit of line 4
EXTI_RTSR_TR5                    EQU  0x00000020        ; Rising trigger event configuration bit of line 5
EXTI_RTSR_TR6                    EQU  0x00000040        ; Rising trigger event configuration bit of line 6
EXTI_RTSR_TR7                    EQU  0x00000080        ; Rising trigger event configuration bit of line 7
EXTI_RTSR_TR8                    EQU  0x00000100        ; Rising trigger event configuration bit of line 8
EXTI_RTSR_TR9                    EQU  0x00000200        ; Rising trigger event configuration bit of line 9
EXTI_RTSR_TR10                   EQU  0x00000400        ; Rising trigger event configuration bit of line 10
EXTI_RTSR_TR11                   EQU  0x00000800        ; Rising trigger event configuration bit of line 11
EXTI_RTSR_TR12                   EQU  0x00001000        ; Rising trigger event configuration bit of line 12
EXTI_RTSR_TR13                   EQU  0x00002000        ; Rising trigger event configuration bit of line 13
EXTI_RTSR_TR14                   EQU  0x00004000        ; Rising trigger event configuration bit of line 14
EXTI_RTSR_TR15                   EQU  0x00008000        ; Rising trigger event configuration bit of line 15
EXTI_RTSR_TR16                   EQU  0x00010000        ; Rising trigger event configuration bit of line 16
EXTI_RTSR_TR17                   EQU  0x00020000        ; Rising trigger event configuration bit of line 17
EXTI_RTSR_TR18                   EQU  0x00040000        ; Rising trigger event configuration bit of line 18
EXTI_RTSR_TR19                   EQU  0x00080000        ; Rising trigger event configuration bit of line 19
EXTI_RTSR_TR20                   EQU  0x00100000        ; Rising trigger event configuration bit of line 20
EXTI_RTSR_TR21                   EQU  0x00200000        ; Rising trigger event configuration bit of line 21
EXTI_RTSR_TR22                   EQU  0x00400000        ; Rising trigger event configuration bit of line 22
EXTI_RTSR_TR23                   EQU  0x00800000        ; Rising trigger event configuration bit of line 23

;*****************  Bit definition for EXTI_FTSR register  ******************
EXTI_FTSR_TR0                    EQU  0x00000001        ; Falling trigger event configuration bit of line 0
EXTI_FTSR_TR1                    EQU  0x00000002        ; Falling trigger event configuration bit of line 1
EXTI_FTSR_TR2                    EQU  0x00000004        ; Falling trigger event configuration bit of line 2
EXTI_FTSR_TR3                    EQU  0x00000008        ; Falling trigger event configuration bit of line 3
EXTI_FTSR_TR4                    EQU  0x00000010        ; Falling trigger event configuration bit of line 4
EXTI_FTSR_TR5                    EQU  0x00000020        ; Falling trigger event configuration bit of line 5
EXTI_FTSR_TR6                    EQU  0x00000040        ; Falling trigger event configuration bit of line 6
EXTI_FTSR_TR7                    EQU  0x00000080        ; Falling trigger event configuration bit of line 7
EXTI_FTSR_TR8                    EQU  0x00000100        ; Falling trigger event configuration bit of line 8
EXTI_FTSR_TR9                    EQU  0x00000200        ; Falling trigger event configuration bit of line 9
EXTI_FTSR_TR10                   EQU  0x00000400        ; Falling trigger event configuration bit of line 10
EXTI_FTSR_TR11                   EQU  0x00000800        ; Falling trigger event configuration bit of line 11
EXTI_FTSR_TR12                   EQU  0x00001000        ; Falling trigger event configuration bit of line 12
EXTI_FTSR_TR13                   EQU  0x00002000        ; Falling trigger event configuration bit of line 13
EXTI_FTSR_TR14                   EQU  0x00004000        ; Falling trigger event configuration bit of line 14
EXTI_FTSR_TR15                   EQU  0x00008000        ; Falling trigger event configuration bit of line 15
EXTI_FTSR_TR16                   EQU  0x00010000        ; Falling trigger event configuration bit of line 16
EXTI_FTSR_TR17                   EQU  0x00020000        ; Falling trigger event configuration bit of line 17
EXTI_FTSR_TR18                   EQU  0x00040000        ; Falling trigger event configuration bit of line 18
EXTI_FTSR_TR19                   EQU  0x00080000        ; Falling trigger event configuration bit of line 19
EXTI_FTSR_TR20                   EQU  0x00100000        ; Falling trigger event configuration bit of line 20
EXTI_FTSR_TR21                   EQU  0x00200000        ; Falling trigger event configuration bit of line 21
EXTI_FTSR_TR22                   EQU  0x00400000        ; Falling trigger event configuration bit of line 22
EXTI_FTSR_TR23                   EQU  0x00800000        ; Falling trigger event configuration bit of line 23

;*****************  Bit definition for EXTI_SWIER register  *****************
EXTI_SWIER_SWIER0                EQU  0x00000001        ; Software Interrupt on line 0
EXTI_SWIER_SWIER1                EQU  0x00000002        ; Software Interrupt on line 1
EXTI_SWIER_SWIER2                EQU  0x00000004        ; Software Interrupt on line 2
EXTI_SWIER_SWIER3                EQU  0x00000008        ; Software Interrupt on line 3
EXTI_SWIER_SWIER4                EQU  0x00000010        ; Software Interrupt on line 4
EXTI_SWIER_SWIER5                EQU  0x00000020        ; Software Interrupt on line 5
EXTI_SWIER_SWIER6                EQU  0x00000040        ; Software Interrupt on line 6
EXTI_SWIER_SWIER7                EQU  0x00000080        ; Software Interrupt on line 7
EXTI_SWIER_SWIER8                EQU  0x00000100        ; Software Interrupt on line 8
EXTI_SWIER_SWIER9                EQU  0x00000200        ; Software Interrupt on line 9
EXTI_SWIER_SWIER10               EQU  0x00000400        ; Software Interrupt on line 10
EXTI_SWIER_SWIER11               EQU  0x00000800        ; Software Interrupt on line 11
EXTI_SWIER_SWIER12               EQU  0x00001000        ; Software Interrupt on line 12
EXTI_SWIER_SWIER13               EQU  0x00002000        ; Software Interrupt on line 13
EXTI_SWIER_SWIER14               EQU  0x00004000        ; Software Interrupt on line 14
EXTI_SWIER_SWIER15               EQU  0x00008000        ; Software Interrupt on line 15
EXTI_SWIER_SWIER16               EQU  0x00010000        ; Software Interrupt on line 16
EXTI_SWIER_SWIER17               EQU  0x00020000        ; Software Interrupt on line 17
EXTI_SWIER_SWIER18               EQU  0x00040000        ; Software Interrupt on line 18
EXTI_SWIER_SWIER19               EQU  0x00080000        ; Software Interrupt on line 19
EXTI_SWIER_SWIER20               EQU  0x00100000        ; Software Interrupt on line 20
EXTI_SWIER_SWIER21               EQU  0x00200000        ; Software Interrupt on line 21
EXTI_SWIER_SWIER22               EQU  0x00400000        ; Software Interrupt on line 22
EXTI_SWIER_SWIER23               EQU  0x00800000        ; Software Interrupt on line 23

;******************  Bit definition for EXTI_PR register  *******************
EXTI_PR_PR0                      EQU  0x00000001        ; Pending bit 0
EXTI_PR_PR1                      EQU  0x00000002        ; Pending bit 1
EXTI_PR_PR2                      EQU  0x00000004        ; Pending bit 2
EXTI_PR_PR3                      EQU  0x00000008        ; Pending bit 3
EXTI_PR_PR4                      EQU  0x00000010        ; Pending bit 4
EXTI_PR_PR5                      EQU  0x00000020        ; Pending bit 5
EXTI_PR_PR6                      EQU  0x00000040        ; Pending bit 6
EXTI_PR_PR7                      EQU  0x00000080        ; Pending bit 7
EXTI_PR_PR8                      EQU  0x00000100        ; Pending bit 8
EXTI_PR_PR9                      EQU  0x00000200        ; Pending bit 9
EXTI_PR_PR10                     EQU  0x00000400        ; Pending bit 10
EXTI_PR_PR11                     EQU  0x00000800        ; Pending bit 11
EXTI_PR_PR12                     EQU  0x00001000        ; Pending bit 12
EXTI_PR_PR13                     EQU  0x00002000        ; Pending bit 13
EXTI_PR_PR14                     EQU  0x00004000        ; Pending bit 14
EXTI_PR_PR15                     EQU  0x00008000        ; Pending bit 15
EXTI_PR_PR16                     EQU  0x00010000        ; Pending bit 16
EXTI_PR_PR17                     EQU  0x00020000        ; Pending bit 17
EXTI_PR_PR18                     EQU  0x00040000        ; Pending bit 18
EXTI_PR_PR19                     EQU  0x00080000        ; Pending bit 19
EXTI_PR_PR20                     EQU  0x00100000        ; Pending bit 20
EXTI_PR_PR21                     EQU  0x00200000        ; Pending bit 21
EXTI_PR_PR22                     EQU  0x00400000        ; Pending bit 22
EXTI_PR_PR23                     EQU  0x00800000        ; Pending bit 23

	END
