;********************************************************************************
; SOUBOR : INI_TIM.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro TIM (casovace)
;
;                               Timers (TIM)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************


; Timer 2

TIM2_CR1      EQU  (_TIM2 + 0x00) ; TIM control register 1,
TIM2_CR2      EQU  (_TIM2 + 0x04) ; TIM control register 2,
TIM2_SMCR     EQU  (_TIM2 + 0x08) ; TIM slave mode control register,
TIM2_DIER     EQU  (_TIM2 + 0x0C) ; TIM DMA/interrupt enable register,
TIM2_SR       EQU  (_TIM2 + 0x10) ; TIM status register,
TIM2_EGR      EQU  (_TIM2 + 0x14) ; TIM event generation register,
TIM2_CCMR1    EQU  (_TIM2 + 0x18) ; TIM capture/compare mode register 1,
TIM2_CCMR2    EQU  (_TIM2 + 0x1C) ; TIM capture/compare mode register 2,
TIM2_CCER     EQU  (_TIM2 + 0x20) ; TIM capture/compare enable register,
TIM2_CNT      EQU  (_TIM2 + 0x24) ; TIM counter register,
TIM2_PSC      EQU  (_TIM2 + 0x28) ; TIM prescaler,
TIM2_ARR      EQU  (_TIM2 + 0x2C) ; TIM auto-reload register,
TIM2_CCR1     EQU  (_TIM2 + 0x34) ; TIM capture/compare register 1,
TIM2_CCR2     EQU  (_TIM2 + 0x38) ; TIM capture/compare register 2,
TIM2_CCR3     EQU  (_TIM2 + 0x3C) ; TIM capture/compare register 3,
TIM2_CCR4     EQU  (_TIM2 + 0x40) ; TIM capture/compare register 4,
TIM2_DCR      EQU  (_TIM2 + 0x48) ; TIM DMA control register,
TIM2_DMAR     EQU  (_TIM2 + 0x4C) ; TIM DMA address for full transfer,
TIM2_OR       EQU  (_TIM2 + 0x50) ; TIM option register,

; Timer 3

TIM3_CR1      EQU  (_TIM3 + 0x00) ; TIM control register 1,
TIM3_CR2      EQU  (_TIM3 + 0x04) ; TIM control register 2,
TIM3_SMCR     EQU  (_TIM3 + 0x08) ; TIM slave mode control register,
TIM3_DIER     EQU  (_TIM3 + 0x0C) ; TIM DMA/interrupt enable register,
TIM3_SR       EQU  (_TIM3 + 0x10) ; TIM status register,
TIM3_EGR      EQU  (_TIM3 + 0x14) ; TIM event generation register,
TIM3_CCMR1    EQU  (_TIM3 + 0x18) ; TIM capture/compare mode register 1,
TIM3_CCMR2    EQU  (_TIM3 + 0x1C) ; TIM capture/compare mode register 2,
TIM3_CCER     EQU  (_TIM3 + 0x20) ; TIM capture/compare enable register,
TIM3_CNT      EQU  (_TIM3 + 0x24) ; TIM counter register,
TIM3_PSC      EQU  (_TIM3 + 0x28) ; TIM prescaler,
TIM3_ARR      EQU  (_TIM3 + 0x2C) ; TIM auto-reload register,
TIM3_CCR1     EQU  (_TIM3 + 0x34) ; TIM capture/compare register 1,
TIM3_CCR2     EQU  (_TIM3 + 0x38) ; TIM capture/compare register 2,
TIM3_CCR3     EQU  (_TIM3 + 0x3C) ; TIM capture/compare register 3,
TIM3_CCR4     EQU  (_TIM3 + 0x40) ; TIM capture/compare register 4,
TIM3_DCR      EQU  (_TIM3 + 0x48) ; TIM DMA control register,
TIM3_DMAR     EQU  (_TIM3 + 0x4C) ; TIM DMA address for full transfer,
TIM3_OR       EQU  (_TIM3 + 0x50) ; TIM option register,

; Timer 4

TIM4_CR1      EQU  (_TIM4 + 0x00) ; TIM control register 1,
TIM4_CR2      EQU  (_TIM4 + 0x04) ; TIM control register 2,
TIM4_SMCR     EQU  (_TIM4 + 0x08) ; TIM slave mode control register,
TIM4_DIER     EQU  (_TIM4 + 0x0C) ; TIM DMA/interrupt enable register,
TIM4_SR       EQU  (_TIM4 + 0x10) ; TIM status register,
TIM4_EGR      EQU  (_TIM4 + 0x14) ; TIM event generation register,
TIM4_CCMR1    EQU  (_TIM4 + 0x18) ; TIM capture/compare mode register 1,
TIM4_CCMR2    EQU  (_TIM4 + 0x1C) ; TIM capture/compare mode register 2,
TIM4_CCER     EQU  (_TIM4 + 0x20) ; TIM capture/compare enable register,
TIM4_CNT      EQU  (_TIM4 + 0x24) ; TIM counter register,
TIM4_PSC      EQU  (_TIM4 + 0x28) ; TIM prescaler,
TIM4_ARR      EQU  (_TIM4 + 0x2C) ; TIM auto-reload register,
TIM4_CCR1     EQU  (_TIM4 + 0x34) ; TIM capture/compare register 1,
TIM4_CCR2     EQU  (_TIM4 + 0x38) ; TIM capture/compare register 2,
TIM4_CCR3     EQU  (_TIM4 + 0x3C) ; TIM capture/compare register 3,
TIM4_CCR4     EQU  (_TIM4 + 0x40) ; TIM capture/compare register 4,
TIM4_DCR      EQU  (_TIM4 + 0x48) ; TIM DMA control register,
TIM4_DMAR     EQU  (_TIM4 + 0x4C) ; TIM DMA address for full transfer,
TIM4_OR       EQU  (_TIM4 + 0x50) ; TIM option register,

; Timer 5

TIM5_CR1      EQU  (_TIM5 + 0x00) ; TIM control register 1,
TIM5_CR2      EQU  (_TIM5 + 0x04) ; TIM control register 2,
TIM5_SMCR     EQU  (_TIM5 + 0x08) ; TIM slave mode control register,
TIM5_DIER     EQU  (_TIM5 + 0x0C) ; TIM DMA/interrupt enable register,
TIM5_SR       EQU  (_TIM5 + 0x10) ; TIM status register,
TIM5_EGR      EQU  (_TIM5 + 0x14) ; TIM event generation register,
TIM5_CCMR1    EQU  (_TIM5 + 0x18) ; TIM capture/compare mode register 1,
TIM5_CCMR2    EQU  (_TIM5 + 0x1C) ; TIM capture/compare mode register 2,
TIM5_CCER     EQU  (_TIM5 + 0x20) ; TIM capture/compare enable register,
TIM5_CNT      EQU  (_TIM5 + 0x24) ; TIM counter register,
TIM5_PSC      EQU  (_TIM5 + 0x28) ; TIM prescaler,
TIM5_ARR      EQU  (_TIM5 + 0x2C) ; TIM auto-reload register,
TIM5_CCR1     EQU  (_TIM5 + 0x34) ; TIM capture/compare register 1,
TIM5_CCR2     EQU  (_TIM5 + 0x38) ; TIM capture/compare register 2,
TIM5_CCR3     EQU  (_TIM5 + 0x3C) ; TIM capture/compare register 3,
TIM5_CCR4     EQU  (_TIM5 + 0x40) ; TIM capture/compare register 4,
TIM5_DCR      EQU  (_TIM5 + 0x48) ; TIM DMA control register,
TIM5_DMAR     EQU  (_TIM5 + 0x4C) ; TIM DMA address for full transfer,
TIM5_OR       EQU  (_TIM5 + 0x50) ; TIM option register,

; Timer 6

TIM6_CR1      EQU  (_TIM6 + 0x00) ; TIM control register 1,
TIM6_CR2      EQU  (_TIM6 + 0x04) ; TIM control register 2,
TIM6_SMCR     EQU  (_TIM6 + 0x08) ; TIM slave mode control register,
TIM6_DIER     EQU  (_TIM6 + 0x0C) ; TIM DMA/interrupt enable register,
TIM6_SR       EQU  (_TIM6 + 0x10) ; TIM status register,
TIM6_EGR      EQU  (_TIM6 + 0x14) ; TIM event generation register,
TIM6_CCMR1    EQU  (_TIM6 + 0x18) ; TIM capture/compare mode register 1,
TIM6_CCMR2    EQU  (_TIM6 + 0x1C) ; TIM capture/compare mode register 2,
TIM6_CCER     EQU  (_TIM6 + 0x20) ; TIM capture/compare enable register,
TIM6_CNT      EQU  (_TIM6 + 0x24) ; TIM counter register,
TIM6_PSC      EQU  (_TIM6 + 0x28) ; TIM prescaler,
TIM6_ARR      EQU  (_TIM6 + 0x2C) ; TIM auto-reload register,
TIM6_CCR1     EQU  (_TIM6 + 0x34) ; TIM capture/compare register 1,
TIM6_CCR2     EQU  (_TIM6 + 0x38) ; TIM capture/compare register 2,
TIM6_CCR3     EQU  (_TIM6 + 0x3C) ; TIM capture/compare register 3,
TIM6_CCR4     EQU  (_TIM6 + 0x40) ; TIM capture/compare register 4,
TIM6_DCR      EQU  (_TIM6 + 0x48) ; TIM DMA control register,
TIM6_DMAR     EQU  (_TIM6 + 0x4C) ; TIM DMA address for full transfer,
TIM6_OR       EQU  (_TIM6 + 0x50) ; TIM option register,

; Timer 7

TIM7_CR1      EQU  (_TIM7 + 0x00) ; TIM control register 1,
TIM7_CR2      EQU  (_TIM7 + 0x04) ; TIM control register 2,
TIM7_SMCR     EQU  (_TIM7 + 0x08) ; TIM slave mode control register,
TIM7_DIER     EQU  (_TIM7 + 0x0C) ; TIM DMA/interrupt enable register,
TIM7_SR       EQU  (_TIM7 + 0x10) ; TIM status register,
TIM7_EGR      EQU  (_TIM7 + 0x14) ; TIM event generation register,
TIM7_CCMR1    EQU  (_TIM7 + 0x18) ; TIM capture/compare mode register 1,
TIM7_CCMR2    EQU  (_TIM7 + 0x1C) ; TIM capture/compare mode register 2,
TIM7_CCER     EQU  (_TIM7 + 0x20) ; TIM capture/compare enable register,
TIM7_CNT      EQU  (_TIM7 + 0x24) ; TIM counter register,
TIM7_PSC      EQU  (_TIM7 + 0x28) ; TIM prescaler,
TIM7_ARR      EQU  (_TIM7 + 0x2C) ; TIM auto-reload register,
TIM7_CCR1     EQU  (_TIM7 + 0x34) ; TIM capture/compare register 1,
TIM7_CCR2     EQU  (_TIM7 + 0x38) ; TIM capture/compare register 2,
TIM7_CCR3     EQU  (_TIM7 + 0x3C) ; TIM capture/compare register 3,
TIM7_CCR4     EQU  (_TIM7 + 0x40) ; TIM capture/compare register 4,
TIM7_DCR      EQU  (_TIM7 + 0x48) ; TIM DMA control register,
TIM7_DMAR     EQU  (_TIM7 + 0x4C) ; TIM DMA address for full transfer,
TIM7_OR       EQU  (_TIM7 + 0x50) ; TIM option register,

; Timer 9

TIM9_CR1      EQU  (_TIM9 + 0x00) ; TIM control register 1,
TIM9_CR2      EQU  (_TIM9 + 0x04) ; TIM control register 2,
TIM9_SMCR     EQU  (_TIM9 + 0x08) ; TIM slave mode control register,
TIM9_DIER     EQU  (_TIM9 + 0x0C) ; TIM DMA/interrupt enable register,
TIM9_SR       EQU  (_TIM9 + 0x10) ; TIM status register,
TIM9_EGR      EQU  (_TIM9 + 0x14) ; TIM event generation register,
TIM9_CCMR1    EQU  (_TIM9 + 0x18) ; TIM capture/compare mode register 1,
TIM9_CCMR2    EQU  (_TIM9 + 0x1C) ; TIM capture/compare mode register 2,
TIM9_CCER     EQU  (_TIM9 + 0x20) ; TIM capture/compare enable register,
TIM9_CNT      EQU  (_TIM9 + 0x24) ; TIM counter register,
TIM9_PSC      EQU  (_TIM9 + 0x28) ; TIM prescaler,
TIM9_ARR      EQU  (_TIM9 + 0x2C) ; TIM auto-reload register,
TIM9_CCR1     EQU  (_TIM9 + 0x34) ; TIM capture/compare register 1,
TIM9_CCR2     EQU  (_TIM9 + 0x38) ; TIM capture/compare register 2,
TIM9_CCR3     EQU  (_TIM9 + 0x3C) ; TIM capture/compare register 3,
TIM9_CCR4     EQU  (_TIM9 + 0x40) ; TIM capture/compare register 4,
TIM9_DCR      EQU  (_TIM9 + 0x48) ; TIM DMA control register,
TIM9_DMAR     EQU  (_TIM9 + 0x4C) ; TIM DMA address for full transfer,
TIM9_OR       EQU  (_TIM9 + 0x50) ; TIM option register,

; Timer 10

TIM10_CR1     EQU  (_TIM10 + 0x00) ; TIM control register 1,
TIM10_CR2     EQU  (_TIM10 + 0x04) ; TIM control register 2,
TIM10_SMCR    EQU  (_TIM10 + 0x08) ; TIM slave mode control register,
TIM10_DIER    EQU  (_TIM10 + 0x0C) ; TIM DMA/interrupt enable register,
TIM10_SR      EQU  (_TIM10 + 0x10) ; TIM status register,
TIM10_EGR     EQU  (_TIM10 + 0x14) ; TIM event generation register,
TIM10_CCMR1   EQU  (_TIM10 + 0x18) ; TIM capture/compare mode register 1,
TIM10_CCMR2   EQU  (_TIM10 + 0x1C) ; TIM capture/compare mode register 2,
TIM10_CCER    EQU  (_TIM10 + 0x20) ; TIM capture/compare enable register,
TIM10_CNT     EQU  (_TIM10 + 0x24) ; TIM counter register,
TIM10_PSC     EQU  (_TIM10 + 0x28) ; TIM prescaler,
TIM10_ARR     EQU  (_TIM10 + 0x2C) ; TIM auto-reload register,
TIM10_CCR1    EQU  (_TIM10 + 0x34) ; TIM capture/compare register 1,
TIM10_CCR2    EQU  (_TIM10 + 0x38) ; TIM capture/compare register 2,
TIM10_CCR3    EQU  (_TIM10 + 0x3C) ; TIM capture/compare register 3,
TIM10_CCR4    EQU  (_TIM10 + 0x40) ; TIM capture/compare register 4,
TIM10_DCR     EQU  (_TIM10 + 0x48) ; TIM DMA control register,
TIM10_DMAR    EQU  (_TIM10 + 0x4C) ; TIM DMA address for full transfer,
TIM10_OR      EQU  (_TIM10 + 0x50) ; TIM option register,

; Timer 11

TIM11_CR1     EQU  (_TIM11 + 0x00) ; TIM control register 1,
TIM11_CR2     EQU  (_TIM11 + 0x04) ; TIM control register 2,
TIM11_SMCR    EQU  (_TIM11 + 0x08) ; TIM slave mode control register,
TIM11_DIER    EQU  (_TIM11 + 0x0C) ; TIM DMA/interrupt enable register,
TIM11_SR      EQU  (_TIM11 + 0x10) ; TIM status register,
TIM11_EGR     EQU  (_TIM11 + 0x14) ; TIM event generation register,
TIM11_CCMR1   EQU  (_TIM11 + 0x18) ; TIM capture/compare mode register 1,
TIM11_CCMR2   EQU  (_TIM11 + 0x1C) ; TIM capture/compare mode register 2,
TIM11_CCER    EQU  (_TIM11 + 0x20) ; TIM capture/compare enable register,
TIM11_CNT     EQU  (_TIM11 + 0x24) ; TIM counter register,
TIM11_PSC     EQU  (_TIM11 + 0x28) ; TIM prescaler,
TIM11_ARR     EQU  (_TIM11 + 0x2C) ; TIM auto-reload register,
TIM11_CCR1    EQU  (_TIM11 + 0x34) ; TIM capture/compare register 1,
TIM11_CCR2    EQU  (_TIM11 + 0x38) ; TIM capture/compare register 2,
TIM11_CCR3    EQU  (_TIM11 + 0x3C) ; TIM capture/compare register 3,
TIM11_CCR4    EQU  (_TIM11 + 0x40) ; TIM capture/compare register 4,
TIM11_DCR     EQU  (_TIM11 + 0x48) ; TIM DMA control register,
TIM11_DMAR    EQU  (_TIM11 + 0x4C) ; TIM DMA address for full transfer,
TIM11_OR      EQU  (_TIM11 + 0x50) ; TIM option register,



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for TIM_CR1 register  *******************
TIM_CR1_CEN                      EQU  0x0001            ; Counter enable
TIM_CR1_UDIS                     EQU  0x0002            ; Update disable
TIM_CR1_URS                      EQU  0x0004            ; Update request source
TIM_CR1_OPM                      EQU  0x0008            ; One pulse mode
TIM_CR1_DIR                      EQU  0x0010            ; Direction

TIM_CR1_CMS                      EQU  0x0060            ; CMS[1:0] bits (Center-aligned mode selection)
TIM_CR1_CMS_0                    EQU  0x0020            ; Bit 0
TIM_CR1_CMS_1                    EQU  0x0040            ; Bit 1

TIM_CR1_ARPE                     EQU  0x0080            ; Auto-reload preload enable

TIM_CR1_CKD                      EQU  0x0300            ; CKD[1:0] bits (clock division)
TIM_CR1_CKD_0                    EQU  0x0100            ; Bit 0
TIM_CR1_CKD_1                    EQU  0x0200            ; Bit 1

;******************  Bit definition for TIM_CR2 register  *******************
TIM_CR2_CCDS                     EQU  0x0008            ; Capture/Compare DMA Selection

TIM_CR2_MMS                      EQU  0x0070            ; MMS[2:0] bits (Master Mode Selection)
TIM_CR2_MMS_0                    EQU  0x0010            ; Bit 0
TIM_CR2_MMS_1                    EQU  0x0020            ; Bit 1
TIM_CR2_MMS_2                    EQU  0x0040            ; Bit 2

TIM_CR2_TI1S                     EQU  0x0080            ; TI1 Selection

;******************  Bit definition for TIM_SMCR register  ******************
TIM_SMCR_SMS                     EQU  0x0007            ; SMS[2:0] bits (Slave mode selection)
TIM_SMCR_SMS_0                   EQU  0x0001            ; Bit 0
TIM_SMCR_SMS_1                   EQU  0x0002            ; Bit 1
TIM_SMCR_SMS_2                   EQU  0x0004            ; Bit 2

TIM_SMCR_OCCS                    EQU  0x0008            ; OCCS bits (OCref Clear Selection)

TIM_SMCR_TS                      EQU  0x0070            ; TS[2:0] bits (Trigger selection)
TIM_SMCR_TS_0                    EQU  0x0010            ; Bit 0
TIM_SMCR_TS_1                    EQU  0x0020            ; Bit 1
TIM_SMCR_TS_2                    EQU  0x0040            ; Bit 2

TIM_SMCR_MSM                     EQU  0x0080            ; Master/slave mode

TIM_SMCR_ETF                     EQU  0x0F00            ; ETF[3:0] bits (External trigger filter)
TIM_SMCR_ETF_0                   EQU  0x0100            ; Bit 0
TIM_SMCR_ETF_1                   EQU  0x0200            ; Bit 1
TIM_SMCR_ETF_2                   EQU  0x0400            ; Bit 2
TIM_SMCR_ETF_3                   EQU  0x0800            ; Bit 3

TIM_SMCR_ETPS                    EQU  0x3000            ; ETPS[1:0] bits (External trigger prescaler)
TIM_SMCR_ETPS_0                  EQU  0x1000            ; Bit 0
TIM_SMCR_ETPS_1                  EQU  0x2000            ; Bit 1

TIM_SMCR_ECE                     EQU  0x4000            ; External clock enable
TIM_SMCR_ETP                     EQU  0x8000            ; External trigger polarity

;******************  Bit definition for TIM_DIER register  ******************
TIM_DIER_UIE                     EQU  0x0001            ; Update interrupt enable
TIM_DIER_CC1IE                   EQU  0x0002            ; Capture/Compare 1 interrupt enable
TIM_DIER_CC2IE                   EQU  0x0004            ; Capture/Compare 2 interrupt enable
TIM_DIER_CC3IE                   EQU  0x0008            ; Capture/Compare 3 interrupt enable
TIM_DIER_CC4IE                   EQU  0x0010            ; Capture/Compare 4 interrupt enable
TIM_DIER_TIE                     EQU  0x0040            ; Trigger interrupt enable
TIM_DIER_UDE                     EQU  0x0100            ; Update DMA request enable
TIM_DIER_CC1DE                   EQU  0x0200            ; Capture/Compare 1 DMA request enable
TIM_DIER_CC2DE                   EQU  0x0400            ; Capture/Compare 2 DMA request enable
TIM_DIER_CC3DE                   EQU  0x0800            ; Capture/Compare 3 DMA request enable
TIM_DIER_CC4DE                   EQU  0x1000            ; Capture/Compare 4 DMA request enable
TIM_DIER_TDE                     EQU  0x4000            ; Trigger DMA request enable

;*******************  Bit definition for TIM_SR register  *******************
TIM_SR_UIF                       EQU  0x0001            ; Update interrupt Flag
TIM_SR_CC1IF                     EQU  0x0002            ; Capture/Compare 1 interrupt Flag
TIM_SR_CC2IF                     EQU  0x0004            ; Capture/Compare 2 interrupt Flag
TIM_SR_CC3IF                     EQU  0x0008            ; Capture/Compare 3 interrupt Flag
TIM_SR_CC4IF                     EQU  0x0010            ; Capture/Compare 4 interrupt Flag
TIM_SR_TIF                       EQU  0x0040            ; Trigger interrupt Flag
TIM_SR_CC1OF                     EQU  0x0200            ; Capture/Compare 1 Overcapture Flag
TIM_SR_CC2OF                     EQU  0x0400            ; Capture/Compare 2 Overcapture Flag
TIM_SR_CC3OF                     EQU  0x0800            ; Capture/Compare 3 Overcapture Flag
TIM_SR_CC4OF                     EQU  0x1000            ; Capture/Compare 4 Overcapture Flag

;******************  Bit definition for TIM_EGR register  *******************
TIM_EGR_UG                       EQU  0x01               ; Update Generation
TIM_EGR_CC1G                     EQU  0x02               ; Capture/Compare 1 Generation
TIM_EGR_CC2G                     EQU  0x04               ; Capture/Compare 2 Generation
TIM_EGR_CC3G                     EQU  0x08               ; Capture/Compare 3 Generation
TIM_EGR_CC4G                     EQU  0x10               ; Capture/Compare 4 Generation
TIM_EGR_TG                       EQU  0x40               ; Trigger Generation

;*****************  Bit definition for TIM_CCMR1 register  ******************
TIM_CCMR1_CC1S                   EQU  0x0003            ; CC1S[1:0] bits (Capture/Compare 1 Selection)
TIM_CCMR1_CC1S_0                 EQU  0x0001            ; Bit 0
TIM_CCMR1_CC1S_1                 EQU  0x0002            ; Bit 1

TIM_CCMR1_OC1FE                  EQU  0x0004            ; Output Compare 1 Fast enable
TIM_CCMR1_OC1PE                  EQU  0x0008            ; Output Compare 1 Preload enable

TIM_CCMR1_OC1M                   EQU  0x0070            ; OC1M[2:0] bits (Output Compare 1 Mode)
TIM_CCMR1_OC1M_0                 EQU  0x0010            ; Bit 0
TIM_CCMR1_OC1M_1                 EQU  0x0020            ; Bit 1
TIM_CCMR1_OC1M_2                 EQU  0x0040            ; Bit 2

TIM_CCMR1_OC1CE                  EQU  0x0080            ; Output Compare 1Clear Enable

TIM_CCMR1_CC2S                   EQU  0x0300            ; CC2S[1:0] bits (Capture/Compare 2 Selection)
TIM_CCMR1_CC2S_0                 EQU  0x0100            ; Bit 0
TIM_CCMR1_CC2S_1                 EQU  0x0200            ; Bit 1

TIM_CCMR1_OC2FE                  EQU  0x0400            ; Output Compare 2 Fast enable
TIM_CCMR1_OC2PE                  EQU  0x0800            ; Output Compare 2 Preload enable

TIM_CCMR1_OC2M                   EQU  0x7000            ; OC2M[2:0] bits (Output Compare 2 Mode)
TIM_CCMR1_OC2M_0                 EQU  0x1000            ; Bit 0
TIM_CCMR1_OC2M_1                 EQU  0x2000            ; Bit 1
TIM_CCMR1_OC2M_2                 EQU  0x4000            ; Bit 2

TIM_CCMR1_OC2CE                  EQU  0x8000            ; Output Compare 2 Clear Enable

;----------------------------------------------------------------------------

TIM_CCMR1_IC1PSC                 EQU  0x000C            ; IC1PSC[1:0] bits (Input Capture 1 Prescaler)
TIM_CCMR1_IC1PSC_0               EQU  0x0004            ; Bit 0
TIM_CCMR1_IC1PSC_1               EQU  0x0008            ; Bit 1

TIM_CCMR1_IC1F                   EQU  0x00F0            ; IC1F[3:0] bits (Input Capture 1 Filter)
TIM_CCMR1_IC1F_0                 EQU  0x0010            ; Bit 0
TIM_CCMR1_IC1F_1                 EQU  0x0020            ; Bit 1
TIM_CCMR1_IC1F_2                 EQU  0x0040            ; Bit 2
TIM_CCMR1_IC1F_3                 EQU  0x0080            ; Bit 3

TIM_CCMR1_IC2PSC                 EQU  0x0C00            ; IC2PSC[1:0] bits (Input Capture 2 Prescaler)
TIM_CCMR1_IC2PSC_0               EQU  0x0400            ; Bit 0
TIM_CCMR1_IC2PSC_1               EQU  0x0800            ; Bit 1

TIM_CCMR1_IC2F                   EQU  0xF000            ; IC2F[3:0] bits (Input Capture 2 Filter)
TIM_CCMR1_IC2F_0                 EQU  0x1000            ; Bit 0
TIM_CCMR1_IC2F_1                 EQU  0x2000            ; Bit 1
TIM_CCMR1_IC2F_2                 EQU  0x4000            ; Bit 2
TIM_CCMR1_IC2F_3                 EQU  0x8000            ; Bit 3

;*****************  Bit definition for TIM_CCMR2 register  ******************
TIM_CCMR2_CC3S                   EQU  0x0003            ; CC3S[1:0] bits (Capture/Compare 3 Selection)
TIM_CCMR2_CC3S_0                 EQU  0x0001            ; Bit 0
TIM_CCMR2_CC3S_1                 EQU  0x0002            ; Bit 1

TIM_CCMR2_OC3FE                  EQU  0x0004            ; Output Compare 3 Fast enable
TIM_CCMR2_OC3PE                  EQU  0x0008            ; Output Compare 3 Preload enable

TIM_CCMR2_OC3M                   EQU  0x0070            ; OC3M[2:0] bits (Output Compare 3 Mode)
TIM_CCMR2_OC3M_0                 EQU  0x0010            ; Bit 0
TIM_CCMR2_OC3M_1                 EQU  0x0020            ; Bit 1
TIM_CCMR2_OC3M_2                 EQU  0x0040            ; Bit 2

TIM_CCMR2_OC3CE                  EQU  0x0080            ; Output Compare 3 Clear Enable

TIM_CCMR2_CC4S                   EQU  0x0300            ; CC4S[1:0] bits (Capture/Compare 4 Selection)
TIM_CCMR2_CC4S_0                 EQU  0x0100            ; Bit 0
TIM_CCMR2_CC4S_1                 EQU  0x0200            ; Bit 1

TIM_CCMR2_OC4FE                  EQU  0x0400            ; Output Compare 4 Fast enable
TIM_CCMR2_OC4PE                  EQU  0x0800            ; Output Compare 4 Preload enable

TIM_CCMR2_OC4M                   EQU  0x7000            ; OC4M[2:0] bits (Output Compare 4 Mode)
TIM_CCMR2_OC4M_0                 EQU  0x1000            ; Bit 0
TIM_CCMR2_OC4M_1                 EQU  0x2000            ; Bit 1
TIM_CCMR2_OC4M_2                 EQU  0x4000            ; Bit 2

TIM_CCMR2_OC4CE                  EQU  0x8000            ; Output Compare 4 Clear Enable

;----------------------------------------------------------------------------

TIM_CCMR2_IC3PSC                 EQU  0x000C            ; IC3PSC[1:0] bits (Input Capture 3 Prescaler)
TIM_CCMR2_IC3PSC_0               EQU  0x0004            ; Bit 0
TIM_CCMR2_IC3PSC_1               EQU  0x0008            ; Bit 1

TIM_CCMR2_IC3F                   EQU  0x00F0            ; IC3F[3:0] bits (Input Capture 3 Filter)
TIM_CCMR2_IC3F_0                 EQU  0x0010            ; Bit 0
TIM_CCMR2_IC3F_1                 EQU  0x0020            ; Bit 1
TIM_CCMR2_IC3F_2                 EQU  0x0040            ; Bit 2
TIM_CCMR2_IC3F_3                 EQU  0x0080            ; Bit 3

TIM_CCMR2_IC4PSC                 EQU  0x0C00            ; IC4PSC[1:0] bits (Input Capture 4 Prescaler)
TIM_CCMR2_IC4PSC_0               EQU  0x0400            ; Bit 0
TIM_CCMR2_IC4PSC_1               EQU  0x0800            ; Bit 1

TIM_CCMR2_IC4F                   EQU  0xF000            ; IC4F[3:0] bits (Input Capture 4 Filter)
TIM_CCMR2_IC4F_0                 EQU  0x1000            ; Bit 0
TIM_CCMR2_IC4F_1                 EQU  0x2000            ; Bit 1
TIM_CCMR2_IC4F_2                 EQU  0x4000            ; Bit 2
TIM_CCMR2_IC4F_3                 EQU  0x8000            ; Bit 3

;******************  Bit definition for TIM_CCER register  ******************
TIM_CCER_CC1E                    EQU  0x0001            ; Capture/Compare 1 output enable
TIM_CCER_CC1P                    EQU  0x0002            ; Capture/Compare 1 output Polarity
TIM_CCER_CC1NP                   EQU  0x0008            ; Capture/Compare 1 Complementary output Polarity
TIM_CCER_CC2E                    EQU  0x0010            ; Capture/Compare 2 output enable
TIM_CCER_CC2P                    EQU  0x0020            ; Capture/Compare 2 output Polarity
TIM_CCER_CC2NP                   EQU  0x0080            ; Capture/Compare 2 Complementary output Polarity
TIM_CCER_CC3E                    EQU  0x0100            ; Capture/Compare 3 output enable
TIM_CCER_CC3P                    EQU  0x0200            ; Capture/Compare 3 output Polarity
TIM_CCER_CC3NP                   EQU  0x0800            ; Capture/Compare 3 Complementary output Polarity
TIM_CCER_CC4E                    EQU  0x1000            ; Capture/Compare 4 output enable
TIM_CCER_CC4P                    EQU  0x2000            ; Capture/Compare 4 output Polarity
TIM_CCER_CC4NP                   EQU  0x8000            ; Capture/Compare 4 Complementary output Polarity

;******************  Bit definition for TIM_CNT register  *******************
TIM_CNT_CNT                      EQU  0xFFFF            ; Counter Value

;******************  Bit definition for TIM_PSC register  *******************
TIM_PSC_PSC                      EQU  0xFFFF            ; Prescaler Value

;******************  Bit definition for TIM_ARR register  *******************
TIM_ARR_ARR                      EQU  0xFFFF            ; actual auto-reload Value

;******************  Bit definition for TIM_CCR1 register  ******************
TIM_CCR1_CCR1                    EQU  0xFFFF            ; Capture/Compare 1 Value

;******************  Bit definition for TIM_CCR2 register  ******************
TIM_CCR2_CCR2                    EQU  0xFFFF            ; Capture/Compare 2 Value

;******************  Bit definition for TIM_CCR3 register  ******************
TIM_CCR3_CCR3                    EQU  0xFFFF            ; Capture/Compare 3 Value

;******************  Bit definition for TIM_CCR4 register  ******************
TIM_CCR4_CCR4                    EQU  0xFFFF            ; Capture/Compare 4 Value

;******************  Bit definition for TIM_DCR register  *******************
TIM_DCR_DBA                      EQU  0x001F            ; DBA[4:0] bits (DMA Base Address)
TIM_DCR_DBA_0                    EQU  0x0001            ; Bit 0
TIM_DCR_DBA_1                    EQU  0x0002            ; Bit 1
TIM_DCR_DBA_2                    EQU  0x0004            ; Bit 2
TIM_DCR_DBA_3                    EQU  0x0008            ; Bit 3
TIM_DCR_DBA_4                    EQU  0x0010            ; Bit 4

TIM_DCR_DBL                      EQU  0x1F00            ; DBL[4:0] bits (DMA Burst Length)
TIM_DCR_DBL_0                    EQU  0x0100            ; Bit 0
TIM_DCR_DBL_1                    EQU  0x0200            ; Bit 1
TIM_DCR_DBL_2                    EQU  0x0400            ; Bit 2
TIM_DCR_DBL_3                    EQU  0x0800            ; Bit 3
TIM_DCR_DBL_4                    EQU  0x1000            ; Bit 4

;******************  Bit definition for TIM_DMAR register  ******************
TIM_DMAR_DMAB                    EQU  0xFFFF            ; DMA register for burst accesses

;******************  Bit definition for TIM_OR register  ********************
TIM_OR_TI1RMP                    EQU  0x0003            ; Option register for TI1 Remapping
TIM_OR_TI1RMP_0                  EQU  0x0001            ; Bit 0
TIM_OR_TI1RMP_1                  EQU  0x0002            ; Bit 1

	END
