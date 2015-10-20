;********************************************************************************
; SOUBOR : INI_BITS_DAC.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro DAC (digitalne-analogovy prevodnik)
;
;                    Digital to Analog Converter (DAC)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

; D/A converter

DAC_CR         EQU  (_DAC + 0x00) ; DAC control register,
DAC_SWTRIGR    EQU  (_DAC + 0x04) ; DAC software trigger register,
DAC_DHR12R1    EQU  (_DAC + 0x08) ; DAC channel1 12-bit right-aligned data holding register,
DAC_DHR12L1    EQU  (_DAC + 0x0C) ; DAC channel1 12-bit left aligned data holding register,
DAC_DHR8R1     EQU  (_DAC + 0x10) ; DAC channel1 8-bit right aligned data holding register,
DAC_DHR12R2    EQU  (_DAC + 0x14) ; DAC channel2 12-bit right aligned data holding register,
DAC_DHR12L2    EQU  (_DAC + 0x18) ; DAC channel2 12-bit left aligned data holding register,
DAC_DHR8R2     EQU  (_DAC + 0x1C) ; DAC channel2 8-bit right-aligned data holding register,
DAC_DHR12RD    EQU  (_DAC + 0x20) ; Dual DAC 12-bit right-aligned data holding register,
DAC_DHR12LD    EQU  (_DAC + 0x24) ; DUAL DAC 12-bit left aligned data holding register,
DAC_DHR8RD     EQU  (_DAC + 0x28) ; DUAL DAC 8-bit right aligned data holding register,
DAC_DOR1       EQU  (_DAC + 0x2C) ; DAC channel1 data output register,
DAC_DOR2       EQU  (_DAC + 0x30) ; DAC channel2 data output register,
DAC_SR         EQU  (_DAC + 0x34) ; DAC status register,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;*******************  Bit definition for DAC_CR register  *******************

DAC_CR_EN1                       EQU  0x00000001        ; DAC channel1 enable
DAC_CR_BOFF1                     EQU  0x00000002        ; DAC channel1 output buffer disable
DAC_CR_TEN1                      EQU  0x00000004        ; DAC channel1 Trigger enable

DAC_CR_TSEL1                     EQU  0x00000038        ; TSEL1[2:0] (DAC channel1 Trigger selection)
DAC_CR_TSEL1_0                   EQU  0x00000008        ; Bit 0
DAC_CR_TSEL1_1                   EQU  0x00000010        ; Bit 1
DAC_CR_TSEL1_2                   EQU  0x00000020        ; Bit 2

DAC_CR_WAVE1                     EQU  0x000000C0        ; WAVE1[1:0] (DAC channel1 noise/triangle wave generation enable)
DAC_CR_WAVE1_0                   EQU  0x00000040        ; Bit 0
DAC_CR_WAVE1_1                   EQU  0x00000080        ; Bit 1

DAC_CR_MAMP1                     EQU  0x00000F00        ; MAMP1[3:0] (DAC channel1 Mask/Amplitude selector)
DAC_CR_MAMP1_0                   EQU  0x00000100        ; Bit 0
DAC_CR_MAMP1_1                   EQU  0x00000200        ; Bit 1
DAC_CR_MAMP1_2                   EQU  0x00000400        ; Bit 2
DAC_CR_MAMP1_3                   EQU  0x00000800        ; Bit 3

DAC_CR_DMAEN1                    EQU  0x00001000        ; DAC channel1 DMA enable
DAC_CR_DMAUDRIE1                 EQU  0x00002000        ; DAC channel1 DMA underrun interrupt enable
DAC_CR_EN2                       EQU  0x00010000        ; DAC channel2 enable
DAC_CR_BOFF2                     EQU  0x00020000        ; DAC channel2 output buffer disable
DAC_CR_TEN2                      EQU  0x00040000        ; DAC channel2 Trigger enable

DAC_CR_TSEL2                     EQU  0x00380000        ; TSEL2[2:0] (DAC channel2 Trigger selection)
DAC_CR_TSEL2_0                   EQU  0x00080000        ; Bit 0
DAC_CR_TSEL2_1                   EQU  0x00100000        ; Bit 1
DAC_CR_TSEL2_2                   EQU  0x00200000        ; Bit 2

DAC_CR_WAVE2                     EQU  0x00C00000        ; WAVE2[1:0] (DAC channel2 noise/triangle wave generation enable)
DAC_CR_WAVE2_0                   EQU  0x00400000        ; Bit 0
DAC_CR_WAVE2_1                   EQU  0x00800000        ; Bit 1

DAC_CR_MAMP2                     EQU  0x0F000000        ; MAMP2[3:0] (DAC channel2 Mask/Amplitude selector)
DAC_CR_MAMP2_0                   EQU  0x01000000        ; Bit 0
DAC_CR_MAMP2_1                   EQU  0x02000000        ; Bit 1
DAC_CR_MAMP2_2                   EQU  0x04000000        ; Bit 2
DAC_CR_MAMP2_3                   EQU  0x08000000        ; Bit 3

DAC_CR_DMAEN2                    EQU  0x10000000        ; DAC channel2 DMA enabled
DAC_CR_DMAUDRIE2                 EQU  0x20000000        ; DAC channel2 DMA underrun interrupt enable

;****************  Bit definition for DAC_SWTRIGR register  *****************

DAC_SWTRIGR_SWTRIG1              EQU  0x01               ; DAC channel1 software trigger
DAC_SWTRIGR_SWTRIG2              EQU  0x02               ; DAC channel2 software trigger

;****************  Bit definition for DAC_DHR12R1 register  *****************

DAC_DHR12R1_DACC1DHR             EQU  0x0FFF            ; DAC channel1 12-bit Right aligned data

;****************  Bit definition for DAC_DHR12L1 register  *****************

DAC_DHR12L1_DACC1DHR             EQU  0xFFF0            ; DAC channel1 12-bit Left aligned data

;*****************  Bit definition for DAC_DHR8R1 register  *****************

DAC_DHR8R1_DACC1DHR              EQU  0xFF               ; DAC channel1 8-bit Right aligned data

;****************  Bit definition for DAC_DHR12R2 register  *****************

DAC_DHR12R2_DACC2DHR             EQU  0x0FFF            ; DAC channel2 12-bit Right aligned data

;****************  Bit definition for DAC_DHR12L2 register  *****************

DAC_DHR12L2_DACC2DHR             EQU  0xFFF0            ; DAC channel2 12-bit Left aligned data

;*****************  Bit definition for DAC_DHR8R2 register  *****************

DAC_DHR8R2_DACC2DHR              EQU  0xFF               ; DAC channel2 8-bit Right aligned data

;****************  Bit definition for DAC_DHR12RD register  *****************

DAC_DHR12RD_DACC1DHR             EQU  0x00000FFF        ; DAC channel1 12-bit Right aligned data
DAC_DHR12RD_DACC2DHR             EQU  0x0FFF0000        ; DAC channel2 12-bit Right aligned data

;****************  Bit definition for DAC_DHR12LD register  *****************

DAC_DHR12LD_DACC1DHR             EQU  0x0000FFF0        ; DAC channel1 12-bit Left aligned data
DAC_DHR12LD_DACC2DHR             EQU  0xFFF00000        ; DAC channel2 12-bit Left aligned data

;*****************  Bit definition for DAC_DHR8RD register  *****************

DAC_DHR8RD_DACC1DHR              EQU  0x00FF            ; DAC channel1 8-bit Right aligned data
DAC_DHR8RD_DACC2DHR              EQU  0xFF00            ; DAC channel2 8-bit Right aligned data

;******************  Bit definition for DAC_DOR1 register  ******************

DAC_DOR1_DACC1DOR                EQU  0x0FFF            ; DAC channel1 data output

;******************  Bit definition for DAC_DOR2 register  ******************

DAC_DOR2_DACC2DOR                EQU  0x0FFF            ; DAC channel2 data output

;*******************  Bit definition for DAC_SR register  *******************

DAC_SR_DMAUDR1                   EQU  0x00002000        ; DAC channel1 DMA underrun flag
DAC_SR_DMAUDR2                   EQU  0x20000000        ; DAC channel2 DMA underrun flag

	END
