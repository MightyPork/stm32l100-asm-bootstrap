;********************************************************************************
; FILE   : INI_LCD.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Bitove masky ridicich registru pro LCD
;
;                          LCD Controller (LCD)
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


; LCD config

LCD_CR        EQU  (_LCD + 0x00) ; LCD control register,
LCD_FCR       EQU  (_LCD + 0x04) ; LCD frame control register,
LCD_SR        EQU  (_LCD + 0x08) ; LCD status register,
LCD_CLR       EQU  (_LCD + 0x0C) ; LCD clear register,
LCD_RAM       EQU  (_LCD + 0x14) ; LCD display memory,



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for LCD_CR register  ********************
LCD_CR_LCDEN            EQU  0x00000001     ; LCD Enable Bit
LCD_CR_VSEL             EQU  0x00000002     ; Voltage source selector Bit

LCD_CR_DUTY             EQU  0x0000001C     ; DUTY[2:0] bits (Duty selector)
LCD_CR_DUTY_0           EQU  0x00000004     ; Duty selector Bit 0
LCD_CR_DUTY_1           EQU  0x00000008     ; Duty selector Bit 1
LCD_CR_DUTY_2           EQU  0x00000010     ; Duty selector Bit 2

LCD_CR_BIAS             EQU  0x00000060     ; BIAS[1:0] bits (Bias selector)
LCD_CR_BIAS_0           EQU  0x00000020     ; Bias selector Bit 0
LCD_CR_BIAS_1           EQU  0x00000040     ; Bias selector Bit 1

LCD_CR_MUX_SEG          EQU  0x00000080     ; Mux Segment Enable Bit

;******************  Bit definition for LCD_FCR register  *******************
LCD_FCR_HD              EQU  0x00000001     ; High Drive Enable Bit
LCD_FCR_SOFIE           EQU  0x00000002     ; Start of Frame Interrupt Enable Bit
LCD_FCR_UDDIE           EQU  0x00000008     ; Update Display Done Interrupt Enable Bit

LCD_FCR_PON             EQU  0x00000070     ; PON[2:0] bits (Puls ON Duration)
LCD_FCR_PON_0           EQU  0x00000010     ; Bit 0
LCD_FCR_PON_1           EQU  0x00000020     ; Bit 1
LCD_FCR_PON_2           EQU  0x00000040     ; Bit 2

LCD_FCR_DEAD            EQU  0x00000380     ; DEAD[2:0] bits (DEAD Time)
LCD_FCR_DEAD_0          EQU  0x00000080     ; Bit 0
LCD_FCR_DEAD_1          EQU  0x00000100     ; Bit 1
LCD_FCR_DEAD_2          EQU  0x00000200     ; Bit 2

LCD_FCR_CC              EQU  0x00001C00     ; CC[2:0] bits (Contrast Control)
LCD_FCR_CC_0            EQU  0x00000400     ; Bit 0
LCD_FCR_CC_1            EQU  0x00000800     ; Bit 1
LCD_FCR_CC_2            EQU  0x00001000     ; Bit 2

LCD_FCR_BLINKF          EQU  0x0000E000     ; BLINKF[2:0] bits (Blink Frequency)
LCD_FCR_BLINKF_0        EQU  0x00002000     ; Bit 0
LCD_FCR_BLINKF_1        EQU  0x00004000     ; Bit 1
LCD_FCR_BLINKF_2        EQU  0x00008000     ; Bit 2

LCD_FCR_BLINK           EQU  0x00030000     ; BLINK[1:0] bits (Blink Enable)
LCD_FCR_BLINK_0         EQU  0x00010000     ; Bit 0
LCD_FCR_BLINK_1         EQU  0x00020000     ; Bit 1

LCD_FCR_DIV             EQU  0x003C0000     ; DIV[3:0] bits (Divider)
LCD_FCR_PS              EQU  0x03C00000     ; PS[3:0] bits (Prescaler)

;******************  Bit definition for LCD_SR register  ********************
LCD_SR_ENS              EQU  0x00000001     ; LCD Enabled Bit
LCD_SR_SOF              EQU  0x00000002     ; Start Of Frame Flag Bit
LCD_SR_UDR              EQU  0x00000004     ; Update Display Request Bit
LCD_SR_UDD              EQU  0x00000008     ; Update Display Done Flag Bit
LCD_SR_RDY              EQU  0x00000010     ; Ready Flag Bit
LCD_SR_FCRSR            EQU  0x00000020     ; LCD FCR Register Synchronization Flag Bit

;******************  Bit definition for LCD_CLR register  *******************
LCD_CLR_SOFC            EQU  0x00000002     ; Start Of Frame Flag Clear Bit
LCD_CLR_UDDC            EQU  0x00000008     ; Update Display Done Flag Clear Bit

;******************  Bit definition for LCD_RAM register  *******************
LCD_RAM_SEGMENT_DATA    EQU  0xFFFFFFFF     ; Segment Data Bits

	END
