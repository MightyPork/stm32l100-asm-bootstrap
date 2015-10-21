;********************************************************************************
; FILE   : INI_DBGMCU.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Bitove masky ridicich registru pro DBGMCU (Debug MCU control)
;
;                           Debug MCU (DBGMCU)
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

; DBGMCU

DBGMCU_IDCODE      EQU  (_DBGMCU + 0x00) ; MCU device ID code,
DBGMCU_CR          EQU  (_DBGMCU + 0x04) ; Debug MCU configuration register,
DBGMCU_APB1FZ      EQU  (_DBGMCU + 0x08) ; Debug MCU APB1 freeze register,
DBGMCU_APB2FZ      EQU  (_DBGMCU + 0x0C) ; Debug MCU APB2 freeze register,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;***************  Bit definition for DBGMCU_IDCODE register  ****************
DBGMCU_IDCODE_DEV_ID             EQU  0x00000FFF        ; Device Identifier

DBGMCU_IDCODE_REV_ID             EQU  0xFFFF0000        ; REV_ID[15:0] bits (Revision Identifier)
DBGMCU_IDCODE_REV_ID_0           EQU  0x00010000        ; Bit 0
DBGMCU_IDCODE_REV_ID_1           EQU  0x00020000        ; Bit 1
DBGMCU_IDCODE_REV_ID_2           EQU  0x00040000        ; Bit 2
DBGMCU_IDCODE_REV_ID_3           EQU  0x00080000        ; Bit 3
DBGMCU_IDCODE_REV_ID_4           EQU  0x00100000        ; Bit 4
DBGMCU_IDCODE_REV_ID_5           EQU  0x00200000        ; Bit 5
DBGMCU_IDCODE_REV_ID_6           EQU  0x00400000        ; Bit 6
DBGMCU_IDCODE_REV_ID_7           EQU  0x00800000        ; Bit 7
DBGMCU_IDCODE_REV_ID_8           EQU  0x01000000        ; Bit 8
DBGMCU_IDCODE_REV_ID_9           EQU  0x02000000        ; Bit 9
DBGMCU_IDCODE_REV_ID_10          EQU  0x04000000        ; Bit 10
DBGMCU_IDCODE_REV_ID_11          EQU  0x08000000        ; Bit 11
DBGMCU_IDCODE_REV_ID_12          EQU  0x10000000        ; Bit 12
DBGMCU_IDCODE_REV_ID_13          EQU  0x20000000        ; Bit 13
DBGMCU_IDCODE_REV_ID_14          EQU  0x40000000        ; Bit 14
DBGMCU_IDCODE_REV_ID_15          EQU  0x80000000        ; Bit 15

;*****************  Bit definition for DBGMCU_CR register  ******************
DBGMCU_CR_DBG_SLEEP              EQU  0x00000001        ; Debug Sleep Mode
DBGMCU_CR_DBG_STOP               EQU  0x00000002        ; Debug Stop Mode
DBGMCU_CR_DBG_STANDBY            EQU  0x00000004        ; Debug Standby mode
DBGMCU_CR_TRACE_IOEN             EQU  0x00000020        ; Trace Pin Assignment Control

DBGMCU_CR_TRACE_MODE             EQU  0x000000C0        ; TRACE_MODE[1:0] bits (Trace Pin Assignment Control)
DBGMCU_CR_TRACE_MODE_0           EQU  0x00000040        ; Bit 0
DBGMCU_CR_TRACE_MODE_1           EQU  0x00000080        ; Bit 1

;*****************  Bit definition for DBGMCU_APB1_FZ register  *************

DBGMCU_APB1_FZ_DBG_TIM2_STOP          EQU  0x00000001   ; TIM2 counter stopped when core is halted
DBGMCU_APB1_FZ_DBG_TIM3_STOP          EQU  0x00000002   ; TIM3 counter stopped when core is halted
DBGMCU_APB1_FZ_DBG_TIM4_STOP          EQU  0x00000004   ; TIM4 counter stopped when core is halted
DBGMCU_APB1_FZ_DBG_TIM5_STOP          EQU  0x00000008   ; TIM5 counter stopped when core is halted
DBGMCU_APB1_FZ_DBG_TIM6_STOP          EQU  0x00000010   ; TIM6 counter stopped when core is halted
DBGMCU_APB1_FZ_DBG_TIM7_STOP          EQU  0x00000020   ; TIM7 counter stopped when core is halted
DBGMCU_APB1_FZ_DBG_RTC_STOP           EQU  0x00000400   ; RTC Counter stopped when Core is halted
DBGMCU_APB1_FZ_DBG_WWDG_STOP          EQU  0x00000800   ; Debug Window Watchdog stopped when Core is halted
DBGMCU_APB1_FZ_DBG_IWDG_STOP          EQU  0x00001000   ; Debug Independent Watchdog stopped when Core is halted
DBGMCU_APB1_FZ_DBG_I2C1_SMBUS_TIMEOUT EQU  0x00200000   ; SMBUS timeout mode stopped when Core is halted
DBGMCU_APB1_FZ_DBG_I2C2_SMBUS_TIMEOUT EQU  0x00400000   ; SMBUS timeout mode stopped when Core is halted

;*****************  Bit definition for DBGMCU_APB2_FZ register  *************

DBGMCU_APB2_FZ_DBG_TIM9_STOP          EQU  0x00000004   ; TIM9 counter stopped when core is halted
DBGMCU_APB2_FZ_DBG_TIM10_STOP         EQU  0x00000008   ; TIM10 counter stopped when core is halted
DBGMCU_APB2_FZ_DBG_TIM11_STOP         EQU  0x00000010   ; TIM11 counter stopped when core is halted

	END
