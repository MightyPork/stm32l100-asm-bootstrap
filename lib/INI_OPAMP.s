;********************************************************************************
; SOUBOR : INI_BITS_OPAMP.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro OPAMP
;
;                         Operational Amplifier (OPAMP)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

; Op Amplifier module

OPAMP_CSR      EQU  (_OPAMP + 0x00) ; OPAMP control/status register,
OPAMP_OTR      EQU  (_OPAMP + 0x04) ; OPAMP offset trimming register for normal mode,
OPAMP_LPOTR    EQU  (_OPAMP + 0x08) ; OPAMP offset trimming register for low power mode,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for OPAMP_CSR register  *****************
OPAMP_CSR_OPA1PD                  EQU  0x00000001        ; OPAMP1 disable
OPAMP_CSR_S3SEL1                  EQU  0x00000002        ; Switch 3 for OPAMP1 Enable
OPAMP_CSR_S4SEL1                  EQU  0x00000004        ; Switch 4 for OPAMP1 Enable
OPAMP_CSR_S5SEL1                  EQU  0x00000008        ; Switch 5 for OPAMP1 Enable
OPAMP_CSR_S6SEL1                  EQU  0x00000010        ; Switch 6 for OPAMP1 Enable
OPAMP_CSR_OPA1CAL_L               EQU  0x00000020        ; OPAMP1 Offset calibration for P differential pair
OPAMP_CSR_OPA1CAL_H               EQU  0x00000040        ; OPAMP1 Offset calibration for N differential pair
OPAMP_CSR_OPA1LPM                 EQU  0x00000080        ; OPAMP1 Low power enable
OPAMP_CSR_OPA2PD                  EQU  0x00000100        ; OPAMP2 disable
OPAMP_CSR_S3SEL2                  EQU  0x00000200        ; Switch 3 for OPAMP2 Enable
OPAMP_CSR_S4SEL2                  EQU  0x00000400        ; Switch 4 for OPAMP2 Enable
OPAMP_CSR_S5SEL2                  EQU  0x00000800        ; Switch 5 for OPAMP2 Enable
OPAMP_CSR_S6SEL2                  EQU  0x00001000        ; Switch 6 for OPAMP2 Enable
OPAMP_CSR_OPA2CAL_L               EQU  0x00002000        ; OPAMP2 Offset calibration for P differential pair
OPAMP_CSR_OPA2CAL_H               EQU  0x00004000        ; OPAMP2 Offset calibration for N differential pair
OPAMP_CSR_OPA2LPM                 EQU  0x00008000        ; OPAMP2 Low power enable
OPAMP_CSR_OPA3PD                  EQU  0x00010000        ; OPAMP3 disable
OPAMP_CSR_S3SEL3                  EQU  0x00020000        ; Switch 3 for OPAMP3 Enable
OPAMP_CSR_S4SEL3                  EQU  0x00040000        ; Switch 4 for OPAMP3 Enable
OPAMP_CSR_S5SEL3                  EQU  0x00080000        ; Switch 5 for OPAMP3 Enable
OPAMP_CSR_S6SEL3                  EQU  0x00100000        ; Switch 6 for OPAMP3 Enable
OPAMP_CSR_OPA3CAL_L               EQU  0x00200000        ; OPAMP3 Offset calibration for P differential pair
OPAMP_CSR_OPA3CAL_H               EQU  0x00400000        ; OPAMP3 Offset calibration for N differential pair
OPAMP_CSR_OPA3LPM                 EQU  0x00800000        ; OPAMP3 Low power enable
OPAMP_CSR_ANAWSEL1                EQU  0x01000000        ; Switch ANA Enable for OPAMP1
OPAMP_CSR_ANAWSEL2                EQU  0x02000000        ; Switch ANA Enable for OPAMP2
OPAMP_CSR_ANAWSEL3                EQU  0x04000000        ; Switch ANA Enable for OPAMP3
OPAMP_CSR_S7SEL2                  EQU  0x08000000        ; Switch 7 for OPAMP2 Enable
OPAMP_CSR_AOP_RANGE               EQU  0x10000000        ; Power range selection
OPAMP_CSR_OPA1CALOUT              EQU  0x20000000        ; OPAMP1 calibration output
OPAMP_CSR_OPA2CALOUT              EQU  0x40000000        ; OPAMP2 calibration output
OPAMP_CSR_OPA3CALOUT              EQU  0x80000000        ; OPAMP3 calibration output

;******************  Bit definition for OPAMP_OTR register  *****************
OPAMP_OTR_AO1_OPT_OFFSET_TRIM     EQU  0x000003FF        ; Offset trim for OPAMP1
OPAMP_OTR_AO2_OPT_OFFSET_TRIM     EQU  0x000FFC00        ; Offset trim for OPAMP2
OPAMP_OTR_AO3_OPT_OFFSET_TRIM     EQU  0x3FF00000        ; Offset trim for OPAMP2
OPAMP_OTR_OT_USER                 EQU  0x80000000        ; Switch to OPAMP offset user trimmed values

;******************  Bit definition for OPAMP_LPOTR register  ***************
OPAMP_LP_OTR_AO1_OPT_OFFSET_TRIM_LP EQU  0x000003FF        ; Offset trim in low power for OPAMP1
OPAMP_LP_OTR_AO2_OPT_OFFSET_TRIM_LP EQU  0x000FFC00        ; Offset trim in low power for OPAMP2
OPAMP_LP_OTR_AO3_OPT_OFFSET_TRIM_LP EQU  0x3FF00000        ; Offset trim in low power for OPAMP3

	END
