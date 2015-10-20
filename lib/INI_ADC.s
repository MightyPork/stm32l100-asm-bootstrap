;********************************************************************************
; SOUBOR : INI_ADC.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro ADC
;
;                      Analog to Digital Converter (ADC)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************


; ADC common config

ADC_CSR      EQU  (_ADCC + 0x000) ; ADC common status register,
ADC_CCR      EQU  (_ADCC + 0x004) ; ADC common control register,

; ADC1

ADC_SR       EQU  (_ADC1 + 0x00) ; ADC status register,
ADC_CR1      EQU  (_ADC1 + 0x04) ; ADC control register 1,
ADC_CR2      EQU  (_ADC1 + 0x08) ; ADC control register 2,
ADC_SMPR1    EQU  (_ADC1 + 0x0C) ; ADC sample time register 1,
ADC_SMPR2    EQU  (_ADC1 + 0x10) ; ADC sample time register 2,
ADC_SMPR3    EQU  (_ADC1 + 0x14) ; ADC sample time register 3,
ADC_JOFR1    EQU  (_ADC1 + 0x18) ; ADC injected channel data offset register 1,
ADC_JOFR2    EQU  (_ADC1 + 0x1C) ; ADC injected channel data offset register 2,
ADC_JOFR3    EQU  (_ADC1 + 0x20) ; ADC injected channel data offset register 3,
ADC_JOFR4    EQU  (_ADC1 + 0x24) ; ADC injected channel data offset register 4,
ADC_HTR      EQU  (_ADC1 + 0x28) ; ADC watchdog higher threshold register,
ADC_LTR      EQU  (_ADC1 + 0x2C) ; ADC watchdog lower threshold register,
ADC_SQR1     EQU  (_ADC1 + 0x30) ; ADC regular sequence register 1,
ADC_SQR2     EQU  (_ADC1 + 0x34) ; ADC regular sequence register 2,
ADC_SQR3     EQU  (_ADC1 + 0x38) ; ADC regular sequence register 3,
ADC_SQR4     EQU  (_ADC1 + 0x3C) ; ADC regular sequence register 4,
ADC_SQR5     EQU  (_ADC1 + 0x40) ; ADC regular sequence register 5,
ADC_JSQR     EQU  (_ADC1 + 0x44) ; ADC injected sequence register,
ADC_JDR1     EQU  (_ADC1 + 0x48) ; ADC injected data register 1,
ADC_JDR2     EQU  (_ADC1 + 0x4C) ; ADC injected data register 2,
ADC_JDR3     EQU  (_ADC1 + 0x50) ; ADC injected data register 3,
ADC_JDR4     EQU  (_ADC1 + 0x54) ; ADC injected data register 4,
ADC_DR       EQU  (_ADC1 + 0x58) ; ADC regular data register,
ADC_SMPR0    EQU  (_ADC1 + 0x5C) ; ADC sample time register 0,



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;*******************  Bit definition for ADC_SR register  *******************
ADC_SR_AWD                       EQU  0x00000001        ; Analog watchdog flag
ADC_SR_EOC                       EQU  0x00000002        ; End of conversion
ADC_SR_JEOC                      EQU  0x00000004        ; Injected channel end of conversion
ADC_SR_JSTRT                     EQU  0x00000008        ; Injected channel Start flag
ADC_SR_STRT                      EQU  0x00000010        ; Regular channel Start flag
ADC_SR_OVR                       EQU  0x00000020        ; Overrun flag
ADC_SR_ADONS                     EQU  0x00000040        ; ADC ON status
ADC_SR_RCNR                      EQU  0x00000100        ; Regular channel not ready flag
ADC_SR_JCNR                      EQU  0x00000200        ; Injected channel not ready flag

;******************  Bit definition for ADC_CR1 register  *******************
ADC_CR1_AWDCH                    EQU  0x0000001F        ; AWDCH[4:0] bits (Analog watchdog channel select bits)
ADC_CR1_AWDCH_0                  EQU  0x00000001        ; Bit 0
ADC_CR1_AWDCH_1                  EQU  0x00000002        ; Bit 1
ADC_CR1_AWDCH_2                  EQU  0x00000004        ; Bit 2
ADC_CR1_AWDCH_3                  EQU  0x00000008        ; Bit 3
ADC_CR1_AWDCH_4                  EQU  0x00000010        ; Bit 4

ADC_CR1_EOCIE                    EQU  0x00000020        ; Interrupt enable for EOC
ADC_CR1_AWDIE                    EQU  0x00000040        ; Analog Watchdog interrupt enable
ADC_CR1_JEOCIE                   EQU  0x00000080        ; Interrupt enable for injected channels
ADC_CR1_SCAN                     EQU  0x00000100        ; Scan mode
ADC_CR1_AWDSGL                   EQU  0x00000200        ; Enable the watchdog on a single channel in scan mode
ADC_CR1_JAUTO                    EQU  0x00000400        ; Automatic injected group conversion
ADC_CR1_DISCEN                   EQU  0x00000800        ; Discontinuous mode on regular channels
ADC_CR1_JDISCEN                  EQU  0x00001000        ; Discontinuous mode on injected channels

ADC_CR1_DISCNUM                  EQU  0x0000E000        ; DISCNUM[2:0] bits (Discontinuous mode channel count)
ADC_CR1_DISCNUM_0                EQU  0x00002000        ; Bit 0
ADC_CR1_DISCNUM_1                EQU  0x00004000        ; Bit 1
ADC_CR1_DISCNUM_2                EQU  0x00008000        ; Bit 2

ADC_CR1_PDD                      EQU  0x00010000        ; Power Down during Delay phase
ADC_CR1_PDI                      EQU  0x00020000        ; Power Down during Idle phase

ADC_CR1_JAWDEN                   EQU  0x00400000        ; Analog watchdog enable on injected channels
ADC_CR1_AWDEN                    EQU  0x00800000        ; Analog watchdog enable on regular channels

ADC_CR1_RES                      EQU  0x03000000        ; RES[1:0] bits (Resolution)
ADC_CR1_RES_0                    EQU  0x01000000        ; Bit 0
ADC_CR1_RES_1                    EQU  0x02000000        ; Bit 1

ADC_CR1_OVRIE                    EQU  0x04000000        ; Overrun interrupt enable

;******************  Bit definition for ADC_CR2 register  *******************
ADC_CR2_ADON                     EQU  0x00000001        ; A/D Converter ON / OFF
ADC_CR2_CONT                     EQU  0x00000002        ; Continuous Conversion
ADC_CR2_CFG                      EQU  0x00000004        ; ADC Configuration

ADC_CR2_DELS                     EQU  0x00000070        ; DELS[2:0] bits (Delay selection)
ADC_CR2_DELS_0                   EQU  0x00000010        ; Bit 0
ADC_CR2_DELS_1                   EQU  0x00000020        ; Bit 1
ADC_CR2_DELS_2                   EQU  0x00000040        ; Bit 2

ADC_CR2_DMA                      EQU  0x00000100        ; Direct Memory access mode
ADC_CR2_DDS                      EQU  0x00000200        ; DMA disable selection (Single ADC)
ADC_CR2_EOCS                     EQU  0x00000400        ; End of conversion selection
ADC_CR2_ALIGN                    EQU  0x00000800        ; Data Alignment

ADC_CR2_JEXTSEL                  EQU  0x000F0000        ; JEXTSEL[3:0] bits (External event select for injected group)
ADC_CR2_JEXTSEL_0                EQU  0x00010000        ; Bit 0
ADC_CR2_JEXTSEL_1                EQU  0x00020000        ; Bit 1
ADC_CR2_JEXTSEL_2                EQU  0x00040000        ; Bit 2
ADC_CR2_JEXTSEL_3                EQU  0x00080000        ; Bit 3

ADC_CR2_JEXTEN                   EQU  0x00300000        ; JEXTEN[1:0] bits (External Trigger Conversion mode for injected channels)
ADC_CR2_JEXTEN_0                 EQU  0x00100000        ; Bit 0
ADC_CR2_JEXTEN_1                 EQU  0x00200000        ; Bit 1

ADC_CR2_JSWSTART                 EQU  0x00400000        ; Start Conversion of injected channels

ADC_CR2_EXTSEL                   EQU  0x0F000000        ; EXTSEL[3:0] bits (External Event Select for regular group)
ADC_CR2_EXTSEL_0                 EQU  0x01000000        ; Bit 0
ADC_CR2_EXTSEL_1                 EQU  0x02000000        ; Bit 1
ADC_CR2_EXTSEL_2                 EQU  0x04000000        ; Bit 2
ADC_CR2_EXTSEL_3                 EQU  0x08000000        ; Bit 3

ADC_CR2_EXTEN                    EQU  0x30000000        ; EXTEN[1:0] bits (External Trigger Conversion mode for regular channels)
ADC_CR2_EXTEN_0                  EQU  0x10000000        ; Bit 0
ADC_CR2_EXTEN_1                  EQU  0x20000000        ; Bit 1

ADC_CR2_SWSTART                  EQU  0x40000000        ; Start Conversion of regular channels

;*****************  Bit definition for ADC_SMPR1 register  ******************
ADC_SMPR1_SMP20                  EQU  0x00000007        ; SMP20[2:0] bits (Channel 20 Sample time selection)
ADC_SMPR1_SMP20_0                EQU  0x00000001        ; Bit 0
ADC_SMPR1_SMP20_1                EQU  0x00000002        ; Bit 1
ADC_SMPR1_SMP20_2                EQU  0x00000004        ; Bit 2

ADC_SMPR1_SMP21                  EQU  0x00000038        ; SMP21[2:0] bits (Channel 21 Sample time selection)
ADC_SMPR1_SMP21_0                EQU  0x00000008        ; Bit 0
ADC_SMPR1_SMP21_1                EQU  0x00000010        ; Bit 1
ADC_SMPR1_SMP21_2                EQU  0x00000020        ; Bit 2

ADC_SMPR1_SMP22                  EQU  0x000001C0        ; SMP22[2:0] bits (Channel 22 Sample time selection)
ADC_SMPR1_SMP22_0                EQU  0x00000040        ; Bit 0
ADC_SMPR1_SMP22_1                EQU  0x00000080        ; Bit 1
ADC_SMPR1_SMP22_2                EQU  0x00000100        ; Bit 2

ADC_SMPR1_SMP23                  EQU  0x00000E00        ; SMP23[2:0] bits (Channel 23 Sample time selection)
ADC_SMPR1_SMP23_0                EQU  0x00000200        ; Bit 0
ADC_SMPR1_SMP23_1                EQU  0x00000400        ; Bit 1
ADC_SMPR1_SMP23_2                EQU  0x00000800        ; Bit 2

ADC_SMPR1_SMP24                  EQU  0x00007000        ; SMP24[2:0] bits (Channel 24 Sample time selection)
ADC_SMPR1_SMP24_0                EQU  0x00001000        ; Bit 0
ADC_SMPR1_SMP24_1                EQU  0x00002000        ; Bit 1
ADC_SMPR1_SMP24_2                EQU  0x00004000        ; Bit 2

ADC_SMPR1_SMP25                  EQU  0x00038000        ; SMP25[2:0] bits (Channel 25 Sample time selection)
ADC_SMPR1_SMP25_0                EQU  0x00008000        ; Bit 0
ADC_SMPR1_SMP25_1                EQU  0x00010000        ; Bit 1
ADC_SMPR1_SMP25_2                EQU  0x00020000        ; Bit 2

ADC_SMPR1_SMP26                  EQU  0x001C0000        ; SMP26[2:0] bits (Channel 26 Sample time selection)
ADC_SMPR1_SMP26_0                EQU  0x00040000        ; Bit 0
ADC_SMPR1_SMP26_1                EQU  0x00080000        ; Bit 1
ADC_SMPR1_SMP26_2                EQU  0x00100000        ; Bit 2

ADC_SMPR1_SMP27                  EQU  0x00E00000        ; SMP27[2:0] bits (Channel 27 Sample time selection)
ADC_SMPR1_SMP27_0                EQU  0x00200000        ; Bit 0
ADC_SMPR1_SMP27_1                EQU  0x00400000        ; Bit 1
ADC_SMPR1_SMP27_2                EQU  0x00800000        ; Bit 2

ADC_SMPR1_SMP28                  EQU  0x07000000        ; SMP28[2:0] bits (Channel 28 Sample time selection)
ADC_SMPR1_SMP28_0                EQU  0x01000000        ; Bit 0
ADC_SMPR1_SMP28_1                EQU  0x02000000        ; Bit 1
ADC_SMPR1_SMP28_2                EQU  0x04000000        ; Bit 2

ADC_SMPR1_SMP29                  EQU  0x38000000        ; SMP29[2:0] bits (Channel 29 Sample time selection)
ADC_SMPR1_SMP29_0                EQU  0x08000000        ; Bit 0
ADC_SMPR1_SMP29_1                EQU  0x10000000        ; Bit 1
ADC_SMPR1_SMP29_2                EQU  0x20000000        ; Bit 2

;*****************  Bit definition for ADC_SMPR2 register  ******************
ADC_SMPR2_SMP10                  EQU  0x00000007        ; SMP10[2:0] bits (Channel 10 Sample time selection)
ADC_SMPR2_SMP10_0                EQU  0x00000001        ; Bit 0
ADC_SMPR2_SMP10_1                EQU  0x00000002        ; Bit 1
ADC_SMPR2_SMP10_2                EQU  0x00000004        ; Bit 2

ADC_SMPR2_SMP11                  EQU  0x00000038        ; SMP11[2:0] bits (Channel 11 Sample time selection)
ADC_SMPR2_SMP11_0                EQU  0x00000008        ; Bit 0
ADC_SMPR2_SMP11_1                EQU  0x00000010        ; Bit 1
ADC_SMPR2_SMP11_2                EQU  0x00000020        ; Bit 2

ADC_SMPR2_SMP12                  EQU  0x000001C0        ; SMP12[2:0] bits (Channel 12 Sample time selection)
ADC_SMPR2_SMP12_0                EQU  0x00000040        ; Bit 0
ADC_SMPR2_SMP12_1                EQU  0x00000080        ; Bit 1
ADC_SMPR2_SMP12_2                EQU  0x00000100        ; Bit 2

ADC_SMPR2_SMP13                  EQU  0x00000E00        ; SMP13[2:0] bits (Channel 13 Sample time selection)
ADC_SMPR2_SMP13_0                EQU  0x00000200        ; Bit 0
ADC_SMPR2_SMP13_1                EQU  0x00000400        ; Bit 1
ADC_SMPR2_SMP13_2                EQU  0x00000800        ; Bit 2

ADC_SMPR2_SMP14                  EQU  0x00007000        ; SMP14[2:0] bits (Channel 14 Sample time selection)
ADC_SMPR2_SMP14_0                EQU  0x00001000        ; Bit 0
ADC_SMPR2_SMP14_1                EQU  0x00002000        ; Bit 1
ADC_SMPR2_SMP14_2                EQU  0x00004000        ; Bit 2

ADC_SMPR2_SMP15                  EQU  0x00038000        ; SMP15[2:0] bits (Channel 5 Sample time selection)
ADC_SMPR2_SMP15_0                EQU  0x00008000        ; Bit 0
ADC_SMPR2_SMP15_1                EQU  0x00010000        ; Bit 1
ADC_SMPR2_SMP15_2                EQU  0x00020000        ; Bit 2

ADC_SMPR2_SMP16                  EQU  0x001C0000        ; SMP16[2:0] bits (Channel 16 Sample time selection)
ADC_SMPR2_SMP16_0                EQU  0x00040000        ; Bit 0
ADC_SMPR2_SMP16_1                EQU  0x00080000        ; Bit 1
ADC_SMPR2_SMP16_2                EQU  0x00100000        ; Bit 2

ADC_SMPR2_SMP17                  EQU  0x00E00000        ; SMP17[2:0] bits (Channel 17 Sample time selection)
ADC_SMPR2_SMP17_0                EQU  0x00200000        ; Bit 0
ADC_SMPR2_SMP17_1                EQU  0x00400000        ; Bit 1
ADC_SMPR2_SMP17_2                EQU  0x00800000        ; Bit 2

ADC_SMPR2_SMP18                  EQU  0x07000000        ; SMP18[2:0] bits (Channel 18 Sample time selection)
ADC_SMPR2_SMP18_0                EQU  0x01000000        ; Bit 0
ADC_SMPR2_SMP18_1                EQU  0x02000000        ; Bit 1
ADC_SMPR2_SMP18_2                EQU  0x04000000        ; Bit 2

ADC_SMPR2_SMP19                  EQU  0x38000000        ; SMP19[2:0] bits (Channel 19 Sample time selection)
ADC_SMPR2_SMP19_0                EQU  0x08000000        ; Bit 0
ADC_SMPR2_SMP19_1                EQU  0x10000000        ; Bit 1
ADC_SMPR2_SMP19_2                EQU  0x20000000        ; Bit 2

;*****************  Bit definition for ADC_SMPR3 register  ******************
ADC_SMPR3_SMP0                   EQU  0x00000007        ; SMP0[2:0] bits (Channel 0 Sample time selection)
ADC_SMPR3_SMP0_0                 EQU  0x00000001        ; Bit 0
ADC_SMPR3_SMP0_1                 EQU  0x00000002        ; Bit 1
ADC_SMPR3_SMP0_2                 EQU  0x00000004        ; Bit 2

ADC_SMPR3_SMP1                   EQU  0x00000038        ; SMP1[2:0] bits (Channel 1 Sample time selection)
ADC_SMPR3_SMP1_0                 EQU  0x00000008        ; Bit 0
ADC_SMPR3_SMP1_1                 EQU  0x00000010        ; Bit 1
ADC_SMPR3_SMP1_2                 EQU  0x00000020        ; Bit 2

ADC_SMPR3_SMP2                   EQU  0x000001C0        ; SMP2[2:0] bits (Channel 2 Sample time selection)
ADC_SMPR3_SMP2_0                 EQU  0x00000040        ; Bit 0
ADC_SMPR3_SMP2_1                 EQU  0x00000080        ; Bit 1
ADC_SMPR3_SMP2_2                 EQU  0x00000100        ; Bit 2

ADC_SMPR3_SMP3                   EQU  0x00000E00        ; SMP3[2:0] bits (Channel 3 Sample time selection)
ADC_SMPR3_SMP3_0                 EQU  0x00000200        ; Bit 0
ADC_SMPR3_SMP3_1                 EQU  0x00000400        ; Bit 1
ADC_SMPR3_SMP3_2                 EQU  0x00000800        ; Bit 2

ADC_SMPR3_SMP4                   EQU  0x00007000        ; SMP4[2:0] bits (Channel 4 Sample time selection)
ADC_SMPR3_SMP4_0                 EQU  0x00001000        ; Bit 0
ADC_SMPR3_SMP4_1                 EQU  0x00002000        ; Bit 1
ADC_SMPR3_SMP4_2                 EQU  0x00004000        ; Bit 2

ADC_SMPR3_SMP5                   EQU  0x00038000        ; SMP5[2:0] bits (Channel 5 Sample time selection)
ADC_SMPR3_SMP5_0                 EQU  0x00008000        ; Bit 0
ADC_SMPR3_SMP5_1                 EQU  0x00010000        ; Bit 1
ADC_SMPR3_SMP5_2                 EQU  0x00020000        ; Bit 2

ADC_SMPR3_SMP6                   EQU  0x001C0000        ; SMP6[2:0] bits (Channel 6 Sample time selection)
ADC_SMPR3_SMP6_0                 EQU  0x00040000        ; Bit 0
ADC_SMPR3_SMP6_1                 EQU  0x00080000        ; Bit 1
ADC_SMPR3_SMP6_2                 EQU  0x00100000        ; Bit 2

ADC_SMPR3_SMP7                   EQU  0x00E00000        ; SMP7[2:0] bits (Channel 7 Sample time selection)
ADC_SMPR3_SMP7_0                 EQU  0x00200000        ; Bit 0
ADC_SMPR3_SMP7_1                 EQU  0x00400000        ; Bit 1
ADC_SMPR3_SMP7_2                 EQU  0x00800000        ; Bit 2

ADC_SMPR3_SMP8                   EQU  0x07000000        ; SMP8[2:0] bits (Channel 8 Sample time selection)
ADC_SMPR3_SMP8_0                 EQU  0x01000000        ; Bit 0
ADC_SMPR3_SMP8_1                 EQU  0x02000000        ; Bit 1
ADC_SMPR3_SMP8_2                 EQU  0x04000000        ; Bit 2

ADC_SMPR3_SMP9                   EQU  0x38000000        ; SMP9[2:0] bits (Channel 9 Sample time selection)
ADC_SMPR3_SMP9_0                 EQU  0x08000000        ; Bit 0
ADC_SMPR3_SMP9_1                 EQU  0x10000000        ; Bit 1
ADC_SMPR3_SMP9_2                 EQU  0x20000000        ; Bit 2

;*****************  Bit definition for ADC_JOFR1 register  ******************
ADC_JOFR1_JOFFSET1               EQU  0x00000FFF        ; Data offset for injected channel 1

;*****************  Bit definition for ADC_JOFR2 register  ******************
ADC_JOFR2_JOFFSET2               EQU  0x00000FFF        ; Data offset for injected channel 2

;*****************  Bit definition for ADC_JOFR3 register  ******************
ADC_JOFR3_JOFFSET3               EQU  0x00000FFF        ; Data offset for injected channel 3

;*****************  Bit definition for ADC_JOFR4 register  ******************
ADC_JOFR4_JOFFSET4               EQU  0x00000FFF        ; Data offset for injected channel 4

;******************  Bit definition for ADC_HTR register  *******************
ADC_HTR_HT                       EQU  0x00000FFF        ; Analog watchdog high threshold

;******************  Bit definition for ADC_LTR register  *******************
ADC_LTR_LT                       EQU  0x00000FFF        ; Analog watchdog low threshold

;******************  Bit definition for ADC_SQR1 register  ******************
ADC_SQR1_L                       EQU  0x00F00000        ; L[3:0] bits (Regular channel sequence length)
ADC_SQR1_L_0                     EQU  0x00100000        ; Bit 0
ADC_SQR1_L_1                     EQU  0x00200000        ; Bit 1
ADC_SQR1_L_2                     EQU  0x00400000        ; Bit 2
ADC_SQR1_L_3                     EQU  0x00800000        ; Bit 3

ADC_SQR1_SQ28                    EQU  0x000F8000        ; SQ28[4:0] bits (25th conversion in regular sequence)
ADC_SQR1_SQ28_0                  EQU  0x00008000        ; Bit 0
ADC_SQR1_SQ28_1                  EQU  0x00010000        ; Bit 1
ADC_SQR1_SQ28_2                  EQU  0x00020000        ; Bit 2
ADC_SQR1_SQ28_3                  EQU  0x00040000        ; Bit 3
ADC_SQR1_SQ28_4                  EQU  0x00080000        ; Bit 4

ADC_SQR1_SQ27                    EQU  0x00007C00        ; SQ27[4:0] bits (27th conversion in regular sequence)
ADC_SQR1_SQ27_0                  EQU  0x00000400        ; Bit 0
ADC_SQR1_SQ27_1                  EQU  0x00000800        ; Bit 1
ADC_SQR1_SQ27_2                  EQU  0x00001000        ; Bit 2
ADC_SQR1_SQ27_3                  EQU  0x00002000        ; Bit 3
ADC_SQR1_SQ27_4                  EQU  0x00004000        ; Bit 4

ADC_SQR1_SQ26                    EQU  0x000003E0        ; SQ26[4:0] bits (26th conversion in regular sequence)
ADC_SQR1_SQ26_0                  EQU  0x00000020        ; Bit 0
ADC_SQR1_SQ26_1                  EQU  0x00000040        ; Bit 1
ADC_SQR1_SQ26_2                  EQU  0x00000080        ; Bit 2
ADC_SQR1_SQ26_3                  EQU  0x00000100        ; Bit 3
ADC_SQR1_SQ26_4                  EQU  0x00000200        ; Bit 4

ADC_SQR1_SQ25                    EQU  0x0000001F        ; SQ25[4:0] bits (25th conversion in regular sequence)
ADC_SQR1_SQ25_0                  EQU  0x00000001        ; Bit 0
ADC_SQR1_SQ25_1                  EQU  0x00000002        ; Bit 1
ADC_SQR1_SQ25_2                  EQU  0x00000004        ; Bit 2
ADC_SQR1_SQ25_3                  EQU  0x00000008        ; Bit 3
ADC_SQR1_SQ25_4                  EQU  0x00000010        ; Bit 4

;******************  Bit definition for ADC_SQR2 register  ******************
ADC_SQR2_SQ19                    EQU  0x0000001F        ; SQ19[4:0] bits (19th conversion in regular sequence)
ADC_SQR2_SQ19_0                  EQU  0x00000001        ; Bit 0
ADC_SQR2_SQ19_1                  EQU  0x00000002        ; Bit 1
ADC_SQR2_SQ19_2                  EQU  0x00000004        ; Bit 2
ADC_SQR2_SQ19_3                  EQU  0x00000008        ; Bit 3
ADC_SQR2_SQ19_4                  EQU  0x00000010        ; Bit 4

ADC_SQR2_SQ20                    EQU  0x000003E0        ; SQ20[4:0] bits (20th conversion in regular sequence)
ADC_SQR2_SQ20_0                  EQU  0x00000020        ; Bit 0
ADC_SQR2_SQ20_1                  EQU  0x00000040        ; Bit 1
ADC_SQR2_SQ20_2                  EQU  0x00000080        ; Bit 2
ADC_SQR2_SQ20_3                  EQU  0x00000100        ; Bit 3
ADC_SQR2_SQ20_4                  EQU  0x00000200        ; Bit 4

ADC_SQR2_SQ21                    EQU  0x00007C00        ; SQ21[4:0] bits (21th conversion in regular sequence)
ADC_SQR2_SQ21_0                  EQU  0x00000400        ; Bit 0
ADC_SQR2_SQ21_1                  EQU  0x00000800        ; Bit 1
ADC_SQR2_SQ21_2                  EQU  0x00001000        ; Bit 2
ADC_SQR2_SQ21_3                  EQU  0x00002000        ; Bit 3
ADC_SQR2_SQ21_4                  EQU  0x00004000        ; Bit 4

ADC_SQR2_SQ22                    EQU  0x000F8000        ; SQ22[4:0] bits (22th conversion in regular sequence)
ADC_SQR2_SQ22_0                  EQU  0x00008000        ; Bit 0
ADC_SQR2_SQ22_1                  EQU  0x00010000        ; Bit 1
ADC_SQR2_SQ22_2                  EQU  0x00020000        ; Bit 2
ADC_SQR2_SQ22_3                  EQU  0x00040000        ; Bit 3
ADC_SQR2_SQ22_4                  EQU  0x00080000        ; Bit 4

ADC_SQR2_SQ23                    EQU  0x01F00000        ; SQ23[4:0] bits (23th conversion in regular sequence)
ADC_SQR2_SQ23_0                  EQU  0x00100000        ; Bit 0
ADC_SQR2_SQ23_1                  EQU  0x00200000        ; Bit 1
ADC_SQR2_SQ23_2                  EQU  0x00400000        ; Bit 2
ADC_SQR2_SQ23_3                  EQU  0x00800000        ; Bit 3
ADC_SQR2_SQ23_4                  EQU  0x01000000        ; Bit 4

ADC_SQR2_SQ24                    EQU  0x3E000000        ; SQ24[4:0] bits (24th conversion in regular sequence)
ADC_SQR2_SQ24_0                  EQU  0x02000000        ; Bit 0
ADC_SQR2_SQ24_1                  EQU  0x04000000        ; Bit 1
ADC_SQR2_SQ24_2                  EQU  0x08000000        ; Bit 2
ADC_SQR2_SQ24_3                  EQU  0x10000000        ; Bit 3
ADC_SQR2_SQ24_4                  EQU  0x20000000        ; Bit 4

;******************  Bit definition for ADC_SQR3 register  ******************
ADC_SQR3_SQ13                    EQU  0x0000001F        ; SQ13[4:0] bits (13th conversion in regular sequence)
ADC_SQR3_SQ13_0                  EQU  0x00000001        ; Bit 0
ADC_SQR3_SQ13_1                  EQU  0x00000002        ; Bit 1
ADC_SQR3_SQ13_2                  EQU  0x00000004        ; Bit 2
ADC_SQR3_SQ13_3                  EQU  0x00000008        ; Bit 3
ADC_SQR3_SQ13_4                  EQU  0x00000010        ; Bit 4

ADC_SQR3_SQ14                    EQU  0x000003E0        ; SQ14[4:0] bits (14th conversion in regular sequence)
ADC_SQR3_SQ14_0                  EQU  0x00000020        ; Bit 0
ADC_SQR3_SQ14_1                  EQU  0x00000040        ; Bit 1
ADC_SQR3_SQ14_2                  EQU  0x00000080        ; Bit 2
ADC_SQR3_SQ14_3                  EQU  0x00000100        ; Bit 3
ADC_SQR3_SQ14_4                  EQU  0x00000200        ; Bit 4

ADC_SQR3_SQ15                    EQU  0x00007C00        ; SQ15[4:0] bits (15th conversion in regular sequence)
ADC_SQR3_SQ15_0                  EQU  0x00000400        ; Bit 0
ADC_SQR3_SQ15_1                  EQU  0x00000800        ; Bit 1
ADC_SQR3_SQ15_2                  EQU  0x00001000        ; Bit 2
ADC_SQR3_SQ15_3                  EQU  0x00002000        ; Bit 3
ADC_SQR3_SQ15_4                  EQU  0x00004000        ; Bit 4

ADC_SQR3_SQ16                    EQU  0x000F8000        ; SQ16[4:0] bits (16th conversion in regular sequence)
ADC_SQR3_SQ16_0                  EQU  0x00008000        ; Bit 0
ADC_SQR3_SQ16_1                  EQU  0x00010000        ; Bit 1
ADC_SQR3_SQ16_2                  EQU  0x00020000        ; Bit 2
ADC_SQR3_SQ16_3                  EQU  0x00040000        ; Bit 3
ADC_SQR3_SQ16_4                  EQU  0x00080000        ; Bit 4

ADC_SQR3_SQ17                    EQU  0x01F00000        ; SQ17[4:0] bits (17th conversion in regular sequence)
ADC_SQR3_SQ17_0                  EQU  0x00100000        ; Bit 0
ADC_SQR3_SQ17_1                  EQU  0x00200000        ; Bit 1
ADC_SQR3_SQ17_2                  EQU  0x00400000        ; Bit 2
ADC_SQR3_SQ17_3                  EQU  0x00800000        ; Bit 3
ADC_SQR3_SQ17_4                  EQU  0x01000000        ; Bit 4

ADC_SQR3_SQ18                    EQU  0x3E000000        ; SQ18[4:0] bits (18th conversion in regular sequence)
ADC_SQR3_SQ18_0                  EQU  0x02000000        ; Bit 0
ADC_SQR3_SQ18_1                  EQU  0x04000000        ; Bit 1
ADC_SQR3_SQ18_2                  EQU  0x08000000        ; Bit 2
ADC_SQR3_SQ18_3                  EQU  0x10000000        ; Bit 3
ADC_SQR3_SQ18_4                  EQU  0x20000000        ; Bit 4

;******************  Bit definition for ADC_SQR4 register  ******************
ADC_SQR4_SQ7                     EQU  0x0000001F        ; SQ7[4:0] bits (7th conversion in regular sequence)
ADC_SQR4_SQ7_0                   EQU  0x00000001        ; Bit 0
ADC_SQR4_SQ7_1                   EQU  0x00000002        ; Bit 1
ADC_SQR4_SQ7_2                   EQU  0x00000004        ; Bit 2
ADC_SQR4_SQ7_3                   EQU  0x00000008        ; Bit 3
ADC_SQR4_SQ7_4                   EQU  0x00000010        ; Bit 4

ADC_SQR4_SQ8                     EQU  0x000003E0        ; SQ8[4:0] bits (8th conversion in regular sequence)
ADC_SQR4_SQ8_0                   EQU  0x00000020        ; Bit 0
ADC_SQR4_SQ8_1                   EQU  0x00000040        ; Bit 1
ADC_SQR4_SQ8_2                   EQU  0x00000080        ; Bit 2
ADC_SQR4_SQ8_3                   EQU  0x00000100        ; Bit 3
ADC_SQR4_SQ8_4                   EQU  0x00000200        ; Bit 4

ADC_SQR4_SQ9                     EQU  0x00007C00        ; SQ9[4:0] bits (9th conversion in regular sequence)
ADC_SQR4_SQ9_0                   EQU  0x00000400        ; Bit 0
ADC_SQR4_SQ9_1                   EQU  0x00000800        ; Bit 1
ADC_SQR4_SQ9_2                   EQU  0x00001000        ; Bit 2
ADC_SQR4_SQ9_3                   EQU  0x00002000        ; Bit 3
ADC_SQR4_SQ9_4                   EQU  0x00004000        ; Bit 4

ADC_SQR4_SQ10                     EQU  0x000F8000        ; SQ10[4:0] bits (10th conversion in regular sequence)
ADC_SQR4_SQ10_0                   EQU  0x00008000        ; Bit 0
ADC_SQR4_SQ10_1                   EQU  0x00010000        ; Bit 1
ADC_SQR4_SQ10_2                   EQU  0x00020000        ; Bit 2
ADC_SQR4_SQ10_3                   EQU  0x00040000        ; Bit 3
ADC_SQR4_SQ10_4                   EQU  0x00080000        ; Bit 4

ADC_SQR4_SQ11                     EQU  0x01F00000        ; SQ11[4:0] bits (11th conversion in regular sequence)
ADC_SQR4_SQ11_0                   EQU  0x00100000        ; Bit 0
ADC_SQR4_SQ11_1                   EQU  0x00200000        ; Bit 1
ADC_SQR4_SQ11_2                   EQU  0x00400000        ; Bit 2
ADC_SQR4_SQ11_3                   EQU  0x00800000        ; Bit 3
ADC_SQR4_SQ11_4                   EQU  0x01000000        ; Bit 4

ADC_SQR4_SQ12                     EQU  0x3E000000        ; SQ12[4:0] bits (12th conversion in regular sequence)
ADC_SQR4_SQ12_0                   EQU  0x02000000        ; Bit 0
ADC_SQR4_SQ12_1                   EQU  0x04000000        ; Bit 1
ADC_SQR4_SQ12_2                   EQU  0x08000000        ; Bit 2
ADC_SQR4_SQ12_3                   EQU  0x10000000        ; Bit 3
ADC_SQR4_SQ12_4                   EQU  0x20000000        ; Bit 4

;******************  Bit definition for ADC_SQR5 register  ******************
ADC_SQR5_SQ1                     EQU  0x0000001F        ; SQ1[4:0] bits (1st conversion in regular sequence)
ADC_SQR5_SQ1_0                   EQU  0x00000001        ; Bit 0
ADC_SQR5_SQ1_1                   EQU  0x00000002        ; Bit 1
ADC_SQR5_SQ1_2                   EQU  0x00000004        ; Bit 2
ADC_SQR5_SQ1_3                   EQU  0x00000008        ; Bit 3
ADC_SQR5_SQ1_4                   EQU  0x00000010        ; Bit 4

ADC_SQR5_SQ2                     EQU  0x000003E0        ; SQ2[4:0] bits (2nd conversion in regular sequence)
ADC_SQR5_SQ2_0                   EQU  0x00000020        ; Bit 0
ADC_SQR5_SQ2_1                   EQU  0x00000040        ; Bit 1
ADC_SQR5_SQ2_2                   EQU  0x00000080        ; Bit 2
ADC_SQR5_SQ2_3                   EQU  0x00000100        ; Bit 3
ADC_SQR5_SQ2_4                   EQU  0x00000200        ; Bit 4

ADC_SQR5_SQ3                     EQU  0x00007C00        ; SQ3[4:0] bits (3rd conversion in regular sequence)
ADC_SQR5_SQ3_0                   EQU  0x00000400        ; Bit 0
ADC_SQR5_SQ3_1                   EQU  0x00000800        ; Bit 1
ADC_SQR5_SQ3_2                   EQU  0x00001000        ; Bit 2
ADC_SQR5_SQ3_3                   EQU  0x00002000        ; Bit 3
ADC_SQR5_SQ3_4                   EQU  0x00004000        ; Bit 4

ADC_SQR5_SQ4                     EQU  0x000F8000        ; SQ4[4:0] bits (4th conversion in regular sequence)
ADC_SQR5_SQ4_0                   EQU  0x00008000        ; Bit 0
ADC_SQR5_SQ4_1                   EQU  0x00010000        ; Bit 1
ADC_SQR5_SQ4_2                   EQU  0x00020000        ; Bit 2
ADC_SQR5_SQ4_3                   EQU  0x00040000        ; Bit 3
ADC_SQR5_SQ4_4                   EQU  0x00080000        ; Bit 4

ADC_SQR5_SQ5                     EQU  0x01F00000        ; SQ5[4:0] bits (5th conversion in regular sequence)
ADC_SQR5_SQ5_0                   EQU  0x00100000        ; Bit 0
ADC_SQR5_SQ5_1                   EQU  0x00200000        ; Bit 1
ADC_SQR5_SQ5_2                   EQU  0x00400000        ; Bit 2
ADC_SQR5_SQ5_3                   EQU  0x00800000        ; Bit 3
ADC_SQR5_SQ5_4                   EQU  0x01000000        ; Bit 4

ADC_SQR5_SQ6                     EQU  0x3E000000        ; SQ6[4:0] bits (6th conversion in regular sequence)
ADC_SQR5_SQ6_0                   EQU  0x02000000        ; Bit 0
ADC_SQR5_SQ6_1                   EQU  0x04000000        ; Bit 1
ADC_SQR5_SQ6_2                   EQU  0x08000000        ; Bit 2
ADC_SQR5_SQ6_3                   EQU  0x10000000        ; Bit 3
ADC_SQR5_SQ6_4                   EQU  0x20000000        ; Bit 4


;******************  Bit definition for ADC_JSQR register  ******************
ADC_JSQR_JSQ1                    EQU  0x0000001F        ; JSQ1[4:0] bits (1st conversion in injected sequence)
ADC_JSQR_JSQ1_0                  EQU  0x00000001        ; Bit 0
ADC_JSQR_JSQ1_1                  EQU  0x00000002        ; Bit 1
ADC_JSQR_JSQ1_2                  EQU  0x00000004        ; Bit 2
ADC_JSQR_JSQ1_3                  EQU  0x00000008        ; Bit 3
ADC_JSQR_JSQ1_4                  EQU  0x00000010        ; Bit 4

ADC_JSQR_JSQ2                    EQU  0x000003E0        ; JSQ2[4:0] bits (2nd conversion in injected sequence)
ADC_JSQR_JSQ2_0                  EQU  0x00000020        ; Bit 0
ADC_JSQR_JSQ2_1                  EQU  0x00000040        ; Bit 1
ADC_JSQR_JSQ2_2                  EQU  0x00000080        ; Bit 2
ADC_JSQR_JSQ2_3                  EQU  0x00000100        ; Bit 3
ADC_JSQR_JSQ2_4                  EQU  0x00000200        ; Bit 4

ADC_JSQR_JSQ3                    EQU  0x00007C00        ; JSQ3[4:0] bits (3rd conversion in injected sequence)
ADC_JSQR_JSQ3_0                  EQU  0x00000400        ; Bit 0
ADC_JSQR_JSQ3_1                  EQU  0x00000800        ; Bit 1
ADC_JSQR_JSQ3_2                  EQU  0x00001000        ; Bit 2
ADC_JSQR_JSQ3_3                  EQU  0x00002000        ; Bit 3
ADC_JSQR_JSQ3_4                  EQU  0x00004000        ; Bit 4

ADC_JSQR_JSQ4                    EQU  0x000F8000        ; JSQ4[4:0] bits (4th conversion in injected sequence)
ADC_JSQR_JSQ4_0                  EQU  0x00008000        ; Bit 0
ADC_JSQR_JSQ4_1                  EQU  0x00010000        ; Bit 1
ADC_JSQR_JSQ4_2                  EQU  0x00020000        ; Bit 2
ADC_JSQR_JSQ4_3                  EQU  0x00040000        ; Bit 3
ADC_JSQR_JSQ4_4                  EQU  0x00080000        ; Bit 4

ADC_JSQR_JL                      EQU  0x00300000        ; JL[1:0] bits (Injected Sequence length)
ADC_JSQR_JL_0                    EQU  0x00100000        ; Bit 0
ADC_JSQR_JL_1                    EQU  0x00200000        ; Bit 1

;******************  Bit definition for ADC_JDR1 register  ******************
ADC_JDR1_JDATA                   EQU  0x0000FFFF        ; Injected data

;******************  Bit definition for ADC_JDR2 register  ******************
ADC_JDR2_JDATA                   EQU  0x0000FFFF        ; Injected data

;******************  Bit definition for ADC_JDR3 register  ******************
ADC_JDR3_JDATA                   EQU  0x0000FFFF        ; Injected data

;******************  Bit definition for ADC_JDR4 register  ******************
ADC_JDR4_JDATA                   EQU  0x0000FFFF        ; Injected data

;*******************  Bit definition for ADC_DR register  *******************
ADC_DR_DATA                      EQU  0x0000FFFF        ; Regular data

;*****************  Bit definition for ADC_SMPR0 register  ******************
ADC_SMPR3_SMP30                  EQU  0x00000007        ; SMP30[2:0] bits (Channel 30 Sample time selection)
ADC_SMPR3_SMP30_0                EQU  0x00000001        ; Bit 0
ADC_SMPR3_SMP30_1                EQU  0x00000002        ; Bit 1
ADC_SMPR3_SMP30_2                EQU  0x00000004        ; Bit 2

ADC_SMPR3_SMP31                  EQU  0x00000038        ; SMP31[2:0] bits (Channel 31 Sample time selection)
ADC_SMPR3_SMP31_0                EQU  0x00000008        ; Bit 0
ADC_SMPR3_SMP31_1                EQU  0x00000010        ; Bit 1
ADC_SMPR3_SMP31_2                EQU  0x00000020        ; Bit 2

;******************  Bit definition for ADC_CSR register  *******************
ADC_CSR_AWD1                     EQU  0x00000001        ; ADC1 Analog watchdog flag
ADC_CSR_EOC1                     EQU  0x00000002        ; ADC1 End of conversion
ADC_CSR_JEOC1                    EQU  0x00000004        ; ADC1 Injected channel end of conversion
ADC_CSR_JSTRT1                   EQU  0x00000008        ; ADC1 Injected channel Start flag
ADC_CSR_STRT1                    EQU  0x00000010        ; ADC1 Regular channel Start flag
ADC_CSR_OVR1                     EQU  0x00000020        ; ADC1 overrun  flag
ADC_CSR_ADONS1                   EQU  0x00000040        ; ADON status of ADC1

;******************  Bit definition for ADC_CCR register  *******************
ADC_CCR_ADCPRE                   EQU  0x00030000        ; ADC prescaler
ADC_CCR_ADCPRE_0                 EQU  0x00010000        ; Bit 0
ADC_CCR_ADCPRE_1                 EQU  0x00020000        ; Bit 1
ADC_CCR_TSVREFE                  EQU  0x00800000        ; Temperature Sensor and VREFINT Enable

	END
