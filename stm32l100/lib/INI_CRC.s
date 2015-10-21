;********************************************************************************
; FILE   : INI_CRC.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Control registers and bit masks for CRC (checksum generator)
;
;                       CRC calculation unit (CRC)
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

; CRC module

CRC_DR           EQU  (_CRC + 0x00) ; CRC Data register,
CRC_IDR          EQU  (_CRC + 0x04) ; CRC Independent data register,
CRC_CR           EQU  (_CRC + 0x08) ; CRC Control register,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for CRC_DR register  ********************

CRC_DR_DR                        EQU  0xFFFFFFFF        ; Data register bits

;******************  Bit definition for CRC_IDR register  *******************

CRC_IDR_IDR                      EQU  0xFF               ; General-purpose 8-bit data register bits

;*******************  Bit definition for CRC_CR register  *******************

CRC_CR_RESET                     EQU  0x00000001        ; RESET bit

	END
