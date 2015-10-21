;********************************************************************************
; FILE   : INI_AES.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Bitove masky ridicich registru pro AES (crypto);
;          ! Modul je pouze v STM32L162 !
;
;                       Advanced Encryption Standard (AES)
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


; AES crypto module

AES_CR             EQU  (_AES + 0x00) ; AES control register,
AES_SR             EQU  (_AES + 0x04) ; AES status register,
AES_DINR_REG       EQU  (_AES + 0x08) ; AES data input register,
AES_DOUTR_REG      EQU  (_AES + 0x0C) ; AES data output register,
AES_KEYR0_REG      EQU  (_AES + 0x10) ; AES key register 0,
AES_KEYR1_REG      EQU  (_AES + 0x14) ; AES key register 1,
AES_KEYR2_REG      EQU  (_AES + 0x18) ; AES key register 2,
AES_KEYR3_REG      EQU  (_AES + 0x1C) ; AES key register 3,
AES_IVR0_REG       EQU  (_AES + 0x20) ; AES initialization vector register 0,
AES_IVR1_REG       EQU  (_AES + 0x24) ; AES initialization vector register 1,
AES_IVR2_REG       EQU  (_AES + 0x28) ; AES initialization vector register 2,
AES_IVR3_REG       EQU  (_AES + 0x2C) ; AES initialization vector register 3,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for AES_CR register  ********************
AES_CR_EN                        EQU  0x00000001        ; AES Enable
AES_CR_DATATYPE                  EQU  0x00000006        ; Data type selection
AES_CR_DATATYPE_0                EQU  0x00000002        ; Bit 0
AES_CR_DATATYPE_1                EQU  0x00000004        ; Bit 1

AES_CR_MODE                      EQU  0x00000018        ; AES Mode Of Operation
AES_CR_MODE_0                    EQU  0x00000008        ; Bit 0
AES_CR_MODE_1                    EQU  0x00000010        ; Bit 1

AES_CR_CHMOD                     EQU  0x00000060        ; AES Chaining Mode
AES_CR_CHMOD_0                   EQU  0x00000020        ; Bit 0
AES_CR_CHMOD_1                   EQU  0x00000040        ; Bit 1

AES_CR_CCFC                      EQU  0x00000080        ; Computation Complete Flag Clear
AES_CR_ERRC                      EQU  0x00000100        ; Error Clear
AES_CR_CCIE                      EQU  0x00000200        ; Computation Complete Interrupt Enable
AES_CR_ERRIE                     EQU  0x00000400        ; Error Interrupt Enable
AES_CR_DMAINEN                   EQU  0x00000800        ; DMA ENable managing the data input phase
AES_CR_DMAOUTEN                  EQU  0x00001000        ; DMA Enable managing the data output phase

;******************  Bit definition for AES_SR register  ********************
AES_SR_CCF                       EQU  0x00000001        ; Computation Complete Flag
AES_SR_RDERR                     EQU  0x00000002        ; Read Error Flag
AES_SR_WRERR                     EQU  0x00000004        ; Write Error Flag

;******************  Bit definition for AES_DINR register  ******************
AES_DINR                         EQU  0x0000FFFF        ; AES Data Input Register

;******************  Bit definition for AES_DOUTR register  *****************
AES_DOUTR                        EQU  0x0000FFFF        ; AES Data Output Register

;******************  Bit definition for AES_KEYR0 register  *****************
AES_KEYR0                        EQU  0x0000FFFF        ; AES Key Register 0

;******************  Bit definition for AES_KEYR1 register  *****************
AES_KEYR1                        EQU  0x0000FFFF        ; AES Key Register 1

;******************  Bit definition for AES_KEYR2 register  *****************
AES_KEYR2                        EQU  0x0000FFFF        ; AES Key Register 2

;******************  Bit definition for AES_KEYR3 register  *****************
AES_KEYR3                        EQU  0x0000FFFF        ; AES Key Register 3

;******************  Bit definition for AES_IVR0 register  ******************
AES_IVR0                         EQU  0x0000FFFF        ; AES Initialization Vector Register 0

;******************  Bit definition for AES_IVR1 register  ******************
AES_IVR1                         EQU  0x0000FFFF        ; AES Initialization Vector Register 1

;******************  Bit definition for AES_IVR2 register  ******************
AES_IVR2                         EQU  0x0000FFFF        ; AES Initialization Vector Register 2

;******************  Bit definition for AES_IVR3 register  ******************
AES_IVR3                         EQU  0x0000FFFF        ; AES Initialization Vector Register 3

	END
