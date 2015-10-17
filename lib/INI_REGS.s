;********************************************************************************
; SOUBOR : INI_REGS.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Pojmenovane adresy ridicich registru
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


FLASH_BASE         EQU  0x08000000 ; FLASH base address in the alias region
SRAM_BASE          EQU  0x20000000 ; SRAM base address in the alias region
PERIPH_BASE        EQU  0x40000000 ; Peripheral base address in the alias region

; Value to add to region base to get bitband base
SRAM_BB_OFFSET     EQU  0x02000000
PERIPH_BB_OFFSET   EQU  0x02000000

SRAM_BB_BASE       EQU  (SRAM_BASE   + SRAM_BB_OFFSET)   ; SRAM base address in the bit-band region
PERIPH_BB_BASE     EQU  (PERIPH_BASE + PERIPH_BB_OFFSET) ; Peripheral base address in the bit-band region


; ------------------------- Peripheral Bases --------------------------

; *** System peripherals ***

_SCS_BASE          EQU  0xE000E000         ; SCS Base Address
_SCB               EQU  (_SCS_BASE + 0x0D00)  ; System Control Block
_NVIC              EQU  (_SCS_BASE +  0x0100) ; Nested Interrupt Vector Controller


; *** Special system preipherals ***

_OB              EQU  0x1FF80000 ; FLASH Option Bytes base address
_AES             EQU  0x50060000
_FSMC            EQU  0xA0000000 ; FSMC registers base address
_DBGMCU          EQU  0xE0042000 ; Debug MCU registers base address



; Bus base addresses
_APB1          EQU   PERIPH_BASE
_APB2          EQU  (PERIPH_BASE + 0x10000)
_AHB           EQU  (PERIPH_BASE + 0x20000)

; *** Peripheral Bus 1 ***

_TIM2          EQU  (_APB1 + 0x0000)
_TIM3          EQU  (_APB1 + 0x0400)
_TIM4          EQU  (_APB1 + 0x0800)
_TIM5          EQU  (_APB1 + 0x0C00)
_TIM6          EQU  (_APB1 + 0x1000)
_TIM7          EQU  (_APB1 + 0x1400)

_LCD           EQU  (_APB1 + 0x2400)
_RTC           EQU  (_APB1 + 0x2800)
_WWDG          EQU  (_APB1 + 0x2C00)
_IWDG          EQU  (_APB1 + 0x3000)

_SPI2          EQU  (_APB1 + 0x3800)
_SPI3          EQU  (_APB1 + 0x3C00)

_USART2        EQU  (_APB1 + 0x4400)
_USART3        EQU  (_APB1 + 0x4800)

_UART4         EQU  (_APB1 + 0x4C00)
_UART5         EQU  (_APB1 + 0x5000)

_I2C1          EQU  (_APB1 + 0x5400)
_I2C2          EQU  (_APB1 + 0x5800)

_PWR           EQU  (_APB1 + 0x7000)
_DAC           EQU  (_APB1 + 0x7400)
_COMP          EQU  (_APB1 + 0x7C00)
_RI            EQU  (_APB1 + 0x7C04)
_OPAMP         EQU  (_APB1 + 0x7C5C)


; *** Peripheral Bus 2 ***

_TIM9          EQU  (_APB2 + 0x0800)
_TIM10         EQU  (_APB2 + 0x0C00)
_TIM11         EQU  (_APB2 + 0x1000)

_SYSCFG        EQU  (_APB2 + 0x0000)
_EXTI          EQU  (_APB2 + 0x0400)
_ADC1          EQU  (_APB2 + 0x2400)
_ADCC          EQU  (_APB2 + 0x2700) ; common
_SDIO          EQU  (_APB2 + 0x2C00) ; SD host
_SPI1          EQU  (_APB2 + 0x3000) ; SPI
_USART1        EQU  (_APB2 + 0x3800)



; *** High Speed Bus ***

; GPIOs base
_GPIO              EQU  (_AHB + 0x0000)

_CRC               EQU  (_AHB + 0x3000)
_RCC               EQU  (_AHB + 0x3800)


; DMA channels base
_DMA1              EQU  (_AHB + 0x6000)
_DMA2              EQU  (_AHB + 0x6400)

_FLASH             EQU  (_AHB + 0x3C00)


; ----------------------- Peripherals ------------------------

; Special system control registers

SysTick_CSR        EQU  (_SCS_BASE + 0x010) ; (R/W) SysTick Control and Status Register
SysTick_RELOAD     EQU  (_SCS_BASE + 0x014) ; (R/W) SysTick Reload Value Register
SysTick_VAL        EQU  (_SCS_BASE + 0x018) ; (R/W) SysTick Current Value Register
SysTick_CALIB      EQU  (_SCS_BASE + 0x01C) ; (R/ ) SysTick Calibration Value Register

; SCB

SCB_ACTLR          EQU  (_SCS_BASE + 0x008) ; (R/W) ACTLR
SCB_CPUID          EQU  (_SCB + 0x000) ; (R/ )  CPUID Base Register
SCB_ICSR           EQU  (_SCB + 0x004) ; (R/W)  Interrupt Control and State Register
SCB_VTOR           EQU  (_SCB + 0x008) ; (R/W)  Vector Table Offset Register
SCB_AIRCR          EQU  (_SCB + 0x00C) ; (R/W)  Application Interrupt and Reset Control Register
SCB_SCR            EQU  (_SCB + 0x010) ; (R/W)  System Control Register
SCB_CCR            EQU  (_SCB + 0x014) ; (R/W)  Configuration Control Register
SCB_SHPR1          EQU  (_SCB + 0x018) ; (R/W)  System Handler Priority Register 1 (4-7)
SCB_SHPR2          EQU  (_SCB + 0x01C) ; (R/W)  System Handler Priority Register 2 (8-11)
SCB_SHPR3          EQU  (_SCB + 0x020) ; (R/W)  System Handler Priority Register 3 (12-15)
SCB_SHCSR          EQU  (_SCB + 0x024) ; (R/W)  System Handler Control and State Register
SCB_CFSR           EQU  (_SCB + 0x028) ; (R/W)  Configurable Fault Status Register
SCB_HFSR           EQU  (_SCB + 0x02C) ; (R/W)  HardFault Status Register
SCB_DFSR           EQU  (_SCB + 0x030) ; (R/W)  Debug Fault Status Register
SCB_MMFAR          EQU  (_SCB + 0x034) ; (R/W)  MemManage Fault Address Register
SCB_BFAR           EQU  (_SCB + 0x038) ; (R/W)  BusFault Address Register
SCB_AFSR           EQU  (_SCB + 0x03C) ; (R/W)  Auxiliary Fault Status Register
; skipped Feature Registers
SCB_CPACR          EQU  (_SCB + 0x088) ; (R/W)  Coprocessor Access Control Register


; NVIC

NVIC_ISER0         EQU  (_NVIC + 0x000) ; (R/W)  Interrupt Set Enable Register
NVIC_ISER1         EQU  (_NVIC + 0x004) ; (R/W)  Interrupt Set Enable Register
NVIC_ISER2         EQU  (_NVIC + 0x008) ; (R/W)  Interrupt Set Enable Register
NVIC_ISER3         EQU  (_NVIC + 0x00C) ; (R/W)  Interrupt Set Enable Register
NVIC_ISER4         EQU  (_NVIC + 0x010) ; (R/W)  Interrupt Set Enable Register
NVIC_ISER5         EQU  (_NVIC + 0x014) ; (R/W)  Interrupt Set Enable Register
NVIC_ISER6         EQU  (_NVIC + 0x018) ; (R/W)  Interrupt Set Enable Register
NVIC_ISER7         EQU  (_NVIC + 0x01C) ; (R/W)  Interrupt Set Enable Register
NVIC_ISER8         EQU  (_NVIC + 0x020) ; (R/W)  Interrupt Set Enable Register

NVIC_ICER0         EQU  (_NVIC + 0x080) ; (R/W)  Interrupt Clear Enable Register
NVIC_ICER1         EQU  (_NVIC + 0x084) ; (R/W)  Interrupt Clear Enable Register
NVIC_ICER2         EQU  (_NVIC + 0x088) ; (R/W)  Interrupt Clear Enable Register
NVIC_ICER3         EQU  (_NVIC + 0x08C) ; (R/W)  Interrupt Clear Enable Register
NVIC_ICER4         EQU  (_NVIC + 0x090) ; (R/W)  Interrupt Clear Enable Register
NVIC_ICER5         EQU  (_NVIC + 0x094) ; (R/W)  Interrupt Clear Enable Register
NVIC_ICER6         EQU  (_NVIC + 0x098) ; (R/W)  Interrupt Clear Enable Register
NVIC_ICER7         EQU  (_NVIC + 0x09C) ; (R/W)  Interrupt Clear Enable Register

NVIC_ISPR0         EQU  (_NVIC + 0x100) ; (R/W)  Interrupt Set Pending Register
NVIC_ISPR1         EQU  (_NVIC + 0x104) ; (R/W)  Interrupt Set Pending Register
NVIC_ISPR2         EQU  (_NVIC + 0x108) ; (R/W)  Interrupt Set Pending Register
NVIC_ISPR3         EQU  (_NVIC + 0x10C) ; (R/W)  Interrupt Set Pending Register
NVIC_ISPR4         EQU  (_NVIC + 0x110) ; (R/W)  Interrupt Set Pending Register
NVIC_ISPR5         EQU  (_NVIC + 0x114) ; (R/W)  Interrupt Set Pending Register
NVIC_ISPR6         EQU  (_NVIC + 0x118) ; (R/W)  Interrupt Set Pending Register
NVIC_ISPR7         EQU  (_NVIC + 0x11C) ; (R/W)  Interrupt Set Pending Register

NVIC_ICPR0         EQU  (_NVIC + 0x180) ; (R/W)  Interrupt Clear Pending Register
NVIC_ICPR1         EQU  (_NVIC + 0x184) ; (R/W)  Interrupt Clear Pending Register
NVIC_ICPR2         EQU  (_NVIC + 0x188) ; (R/W)  Interrupt Clear Pending Register
NVIC_ICPR3         EQU  (_NVIC + 0x18C) ; (R/W)  Interrupt Clear Pending Register
NVIC_ICPR4         EQU  (_NVIC + 0x190) ; (R/W)  Interrupt Clear Pending Register
NVIC_ICPR5         EQU  (_NVIC + 0x194) ; (R/W)  Interrupt Clear Pending Register
NVIC_ICPR6         EQU  (_NVIC + 0x198) ; (R/W)  Interrupt Clear Pending Register
NVIC_ICPR7         EQU  (_NVIC + 0x19C) ; (R/W)  Interrupt Clear Pending Register

NVIC_IABR0         EQU  (_NVIC + 0x200) ; (R/W)  Interrupt Active bit Register
NVIC_IABR1         EQU  (_NVIC + 0x204) ; (R/W)  Interrupt Active bit Register
NVIC_IABR2         EQU  (_NVIC + 0x208) ; (R/W)  Interrupt Active bit Register
NVIC_IABR3         EQU  (_NVIC + 0x20C) ; (R/W)  Interrupt Active bit Register
NVIC_IABR4         EQU  (_NVIC + 0x210) ; (R/W)  Interrupt Active bit Register
NVIC_IABR5         EQU  (_NVIC + 0x214) ; (R/W)  Interrupt Active bit Register
NVIC_IABR6         EQU  (_NVIC + 0x218) ; (R/W)  Interrupt Active bit Register
NVIC_IABR7         EQU  (_NVIC + 0x21C) ; (R/W)  Interrupt Active bit Register

NVIC_IP            EQU  (_NVIC + 0x300) ; (R/W)  Interrupt Priority Register (8Bit wide) +240
NVIC_STIR          EQU  (_NVIC + 0xE00) ; ( /W)  Software Trigger Interrupt Register



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


; LCD config

LCD_CR        EQU  (_LCD + 0x00) ; LCD control register,
LCD_FCR       EQU  (_LCD + 0x04) ; LCD frame control register,
LCD_SR        EQU  (_LCD + 0x08) ; LCD status register,
LCD_CLR       EQU  (_LCD + 0x0C) ; LCD clear register,
LCD_RAM       EQU  (_LCD + 0x14) ; LCD display memory,


; RTC

RTC_TR              EQU  (_RTC + 0x00) ; RTC time register,
RTC_DR              EQU  (_RTC + 0x04) ; RTC date register,
RTC_CR              EQU  (_RTC + 0x08) ; RTC control register,
RTC_ISR             EQU  (_RTC + 0x0C) ; RTC initialization and status register,
RTC_PRER            EQU  (_RTC + 0x10) ; RTC prescaler register,
RTC_WUTR            EQU  (_RTC + 0x14) ; RTC wakeup timer register,
RTC_CALIBR          EQU  (_RTC + 0x18) ; RTC calibration register,
RTC_ALRMAR          EQU  (_RTC + 0x1C) ; RTC alarm A register,
RTC_ALRMBR          EQU  (_RTC + 0x20) ; RTC alarm B register,
RTC_WPR             EQU  (_RTC + 0x24) ; RTC write protection register,
RTC_SSR             EQU  (_RTC + 0x28) ; RTC sub second register,
RTC_SHIFTR          EQU  (_RTC + 0x2C) ; RTC shift control register,
RTC_TSTR            EQU  (_RTC + 0x30) ; RTC time stamp time register,
RTC_TSDR            EQU  (_RTC + 0x34) ; RTC time stamp date register,
RTC_TSSSR           EQU  (_RTC + 0x38) ; RTC time-stamp sub second register,
RTC_CALR            EQU  (_RTC + 0x3C) ; RRTC calibration register,
RTC_TAFCR           EQU  (_RTC + 0x40) ; RTC tamper and alternate function configuration register,
RTC_ALRMASSR        EQU  (_RTC + 0x44) ; RTC alarm A sub second register,
RTC_ALRMBSSR        EQU  (_RTC + 0x48) ; RTC alarm B sub second register,
RTC_BKP0R_REG       EQU  (_RTC + 0x50) ; RTC backup register 0,
RTC_BKP1R_REG       EQU  (_RTC + 0x54) ; RTC backup register 1,
RTC_BKP2R_REG       EQU  (_RTC + 0x58) ; RTC backup register 2,
RTC_BKP3R_REG       EQU  (_RTC + 0x5C) ; RTC backup register 3,
RTC_BKP4R_REG       EQU  (_RTC + 0x60) ; RTC backup register 4,
RTC_BKP5R_REG       EQU  (_RTC + 0x64) ; RTC backup register 5,
RTC_BKP6R_REG       EQU  (_RTC + 0x68) ; RTC backup register 6,
RTC_BKP7R_REG       EQU  (_RTC + 0x6C) ; RTC backup register 7,
RTC_BKP8R_REG       EQU  (_RTC + 0x70) ; RTC backup register 8,
RTC_BKP9R_REG       EQU  (_RTC + 0x74) ; RTC backup register 9,
RTC_BKP10R_REG      EQU  (_RTC + 0x78) ; RTC backup register 10,
RTC_BKP11R_REG      EQU  (_RTC + 0x7C) ; RTC backup register 11,
RTC_BKP12R_REG      EQU  (_RTC + 0x80) ; RTC backup register 12,
RTC_BKP13R_REG      EQU  (_RTC + 0x84) ; RTC backup register 13,
RTC_BKP14R_REG      EQU  (_RTC + 0x88) ; RTC backup register 14,
RTC_BKP15R_REG      EQU  (_RTC + 0x8C) ; RTC backup register 15,
RTC_BKP16R_REG      EQU  (_RTC + 0x90) ; RTC backup register 16,
RTC_BKP17R_REG      EQU  (_RTC + 0x94) ; RTC backup register 17,
RTC_BKP18R_REG      EQU  (_RTC + 0x98) ; RTC backup register 18,
RTC_BKP19R_REG      EQU  (_RTC + 0x9C) ; RTC backup register 19,
RTC_BKP20R_REG      EQU  (_RTC + 0xA0) ; RTC backup register 20,
RTC_BKP21R_REG      EQU  (_RTC + 0xA4) ; RTC backup register 21,
RTC_BKP22R_REG      EQU  (_RTC + 0xA8) ; RTC backup register 22,
RTC_BKP23R_REG      EQU  (_RTC + 0xAC) ; RTC backup register 23,
RTC_BKP24R_REG      EQU  (_RTC + 0xB0) ; RTC backup register 24,
RTC_BKP25R_REG      EQU  (_RTC + 0xB4) ; RTC backup register 25,
RTC_BKP26R_REG      EQU  (_RTC + 0xB8) ; RTC backup register 26,
RTC_BKP27R_REG      EQU  (_RTC + 0xBC) ; RTC backup register 27,
RTC_BKP28R_REG      EQU  (_RTC + 0xC0) ; RTC backup register 28,
RTC_BKP29R_REG      EQU  (_RTC + 0xC4) ; RTC backup register 29,
RTC_BKP30R_REG      EQU  (_RTC + 0xC8) ; RTC backup register 30,
RTC_BKP31R_REG      EQU  (_RTC + 0xCC) ; RTC backup register 31,


; Window Watchdog

WWDG_CR      EQU  (_WWDG + 0x00) ; WWDG Control register,
WWDG_CFR     EQU  (_WWDG + 0x04) ; WWDG Configuration register,
WWDG_SR      EQU  (_WWDG + 0x08) ; WWDG Status register,


; Independent Watchdog

IWDG_KR      EQU  (_IWDG + 0x00) ; Key register,
IWDG_PR      EQU  (_IWDG + 0x04) ; Prescaler register,
IWDG_RLR     EQU  (_IWDG + 0x08) ; Reload register,
IWDG_SR      EQU  (_IWDG + 0x0C) ; Status register,


; SPI 2

SPI2_CR1     EQU  (_SPI2 + 0x00) ; SPI2 control register 1 (not used in I2S mode),
SPI2_CR2     EQU  (_SPI2 + 0x04) ; SPI2 control register 2,
SPI2_SR      EQU  (_SPI2 + 0x08) ; SPI2 status register,
SPI2_DR      EQU  (_SPI2 + 0x0C) ; SPI2 data register,
SPI2_CRCPR   EQU  (_SPI2 + 0x10) ; SPI2 CRC polynomial register (not used in I2S mode),
SPI2_RXCRCR  EQU  (_SPI2 + 0x14) ; SPI2 RX CRC register (not used in I2S mode),
SPI2_TXCRCR  EQU  (_SPI2 + 0x18) ; SPI2 TX CRC register (not used in I2S mode),
SPI2_I2SCFGR EQU  (_SPI2 + 0x1C) ; SPI2_I2S configuration register,
SPI2_I2SPR   EQU  (_SPI2 + 0x20) ; SPI2_I2S prescaler register,

; SPI 3

SPI3_CR1       EQU  (_SPI3 + 0x00) ; SPI3 control register 1 (not used in I2S mode),
SPI3_CR2       EQU  (_SPI3 + 0x04) ; SPI3 control register 2,
SPI3_SR        EQU  (_SPI3 + 0x08) ; SPI3 status register,
SPI3_DR        EQU  (_SPI3 + 0x0C) ; SPI3 data register,
SPI3_CRCPR     EQU  (_SPI3 + 0x10) ; SPI3 CRC polynomial register (not used in I2S mode),
SPI3_RXCRCR    EQU  (_SPI3 + 0x14) ; SPI3 RX CRC register (not used in I2S mode),
SPI3_TXCRCR    EQU  (_SPI3 + 0x18) ; SPI3 TX CRC register (not used in I2S mode),
SPI3_I2SCFGR   EQU  (_SPI3 + 0x1C) ; SPI3_I2S configuration register,
SPI3_I2SPR     EQU  (_SPI3 + 0x20) ; SPI3_I2S prescaler register,


; USART 1

USART1_SR        EQU  (_USART1 + 0x00) ; USART1 Status register,
USART1_DR        EQU  (_USART1 + 0x04) ; USART1 Data register,
USART1_BRR       EQU  (_USART1 + 0x08) ; USART1 Baud rate register,
USART1_CR1       EQU  (_USART1 + 0x0C) ; USART1 Control register 1,
USART1_CR2       EQU  (_USART1 + 0x10) ; USART1 Control register 2,
USART1_CR3       EQU  (_USART1 + 0x14) ; USART1 Control register 3,
USART1_GTPR      EQU  (_USART1 + 0x18) ; USART1 Guard time and prescaler register,

; USART 2

USART2_SR      EQU  (_USART2 + 0x00) ; USART2 Status register,
USART2_DR      EQU  (_USART2 + 0x04) ; USART2 Data register,
USART2_BRR     EQU  (_USART2 + 0x08) ; USART2 Baud rate register,
USART2_CR1     EQU  (_USART2 + 0x0C) ; USART2 Control register 1,
USART2_CR2     EQU  (_USART2 + 0x10) ; USART2 Control register 2,
USART2_CR3     EQU  (_USART2 + 0x14) ; USART2 Control register 3,
USART2_GTPR    EQU  (_USART2 + 0x18) ; USART2 Guard time and prescaler register,

; USART 3

USART3_SR      EQU  (_USART3 + 0x00) ; USART3 Status register,
USART3_DR      EQU  (_USART3 + 0x04) ; USART3 Data register,
USART3_BRR     EQU  (_USART3 + 0x08) ; USART3 Baud rate register,
USART3_CR1     EQU  (_USART3 + 0x0C) ; USART3 Control register 1,
USART3_CR2     EQU  (_USART3 + 0x10) ; USART3 Control register 2,
USART3_CR3     EQU  (_USART3 + 0x14) ; USART3 Control register 3,
USART3_GTPR    EQU  (_USART3 + 0x18) ; USART3 Guard time and prescaler register,

; USART 4

UART4_SR       EQU  (_UART4 + 0x00) ; UART4 Status register,
UART4_DR       EQU  (_UART4 + 0x04) ; UART4 Data register,
UART4_BRR      EQU  (_UART4 + 0x08) ; UART4 Baud rate register,
UART4_CR1      EQU  (_UART4 + 0x0C) ; UART4 Control register 1,
UART4_CR2      EQU  (_UART4 + 0x10) ; UART4 Control register 2,
UART4_CR3      EQU  (_UART4 + 0x14) ; UART4 Control register 3,
UART4_GTPR     EQU  (_UART4 + 0x18) ; UART4 Guard time and prescaler register,

; USART 5

UART5_SR       EQU  (_UART5 + 0x00) ; UART5 Status register,
UART5_DR       EQU  (_UART5 + 0x04) ; UART5 Data register,
UART5_BRR      EQU  (_UART5 + 0x08) ; UART5 Baud rate register,
UART5_CR1      EQU  (_UART5 + 0x0C) ; UART5 Control register 1,
UART5_CR2      EQU  (_UART5 + 0x10) ; UART5 Control register 2,
UART5_CR3      EQU  (_UART5 + 0x14) ; UART5 Control register 3,
UART5_GTPR     EQU  (_UART5 + 0x18) ; UART5 Guard time and prescaler register,


; I2C 1

I2C1_CR1       EQU  (_I2C1 + 0x00) ; I2C1 Control register 1,
I2C1_CR2       EQU  (_I2C1 + 0x04) ; I2C1 Control register 2,
I2C1_OAR1      EQU  (_I2C1 + 0x08) ; I2C1 Own address register 1,
I2C1_OAR2      EQU  (_I2C1 + 0x0C) ; I2C1 Own address register 2,
I2C1_DR        EQU  (_I2C1 + 0x10) ; I2C1 Data register,
I2C1_SR1       EQU  (_I2C1 + 0x14) ; I2C1 Status register 1,
I2C1_SR2       EQU  (_I2C1 + 0x18) ; I2C1 Status register 2,
I2C1_CCR       EQU  (_I2C1 + 0x1C) ; I2C1 Clock control register,
I2C1_TRISE     EQU  (_I2C1 + 0x20) ; I2C1 TRISE register,

; I2C 2

I2C2_CR1       EQU  (_I2C2 + 0x00) ; I2C2 Control register 1,
I2C2_CR2       EQU  (_I2C2 + 0x04) ; I2C2 Control register 2,
I2C2_OAR1      EQU  (_I2C2 + 0x08) ; I2C2 Own address register 1,
I2C2_OAR2      EQU  (_I2C2 + 0x0C) ; I2C2 Own address register 2,
I2C2_DR        EQU  (_I2C2 + 0x10) ; I2C2 Data register,
I2C2_SR1       EQU  (_I2C2 + 0x14) ; I2C2 Status register 1,
I2C2_SR2       EQU  (_I2C2 + 0x18) ; I2C2 Status register 2,
I2C2_CCR       EQU  (_I2C2 + 0x1C) ; I2C2 Clock control register,
I2C2_TRISE     EQU  (_I2C2 + 0x20) ; I2C2 TRISE register,


; Power control registers

PWR_CR         EQU  (_PWR + 0x00) ; PWR power control register,
PWR_CSR        EQU  (_PWR + 0x04) ; PWR power control/status register,


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


; Comparator

COMP_CSR       EQU  (_COMP + 0x00) ; COMP comparator control and status register,


; RI

RI_ICR         EQU  (_RI + 0x04) ; RI input capture register,
RI_ASCR1       EQU  (_RI + 0x08) ; RI analog switches control register,
RI_ASCR2       EQU  (_RI + 0x0C) ; RI analog switch control register 2,
RI_HYSCR1      EQU  (_RI + 0x10) ; RI hysteresis control register 1,
RI_HYSCR2      EQU  (_RI + 0x14) ; RI Hysteresis control register 2,
RI_HYSCR3      EQU  (_RI + 0x18) ; RI Hysteresis control register 3,
RI_HYSCR4      EQU  (_RI + 0x1C) ; RI Hysteresis control register 4,
RI_ASMR1       EQU  (_RI + 0x20) ; RI Analog switch mode register 1,
RI_CMR1        EQU  (_RI + 0x24) ; RI Channel mask register 1,
RI_CICR1       EQU  (_RI + 0x28) ; RI Channel identification for capture register 1,
RI_ASMR2       EQU  (_RI + 0x2C) ; RI Analog switch mode register 2,
RI_CMR2        EQU  (_RI + 0x30) ; RI Channel mask register 2,
RI_CICR2       EQU  (_RI + 0x34) ; RI Channel identification for capture register 2,
RI_ASMR3       EQU  (_RI + 0x38) ; RI Analog switch mode register 3,
RI_CMR3        EQU  (_RI + 0x3C) ; RI Channel mask register 3,
RI_CICR3       EQU  (_RI + 0x40) ; RI Channel identification for capture register3 ,
RI_ASMR4       EQU  (_RI + 0x44) ; RI Analog switch mode register 4,
RI_CMR4        EQU  (_RI + 0x48) ; RI Channel mask register 4,
RI_CICR4       EQU  (_RI + 0x4C) ; RI Channel identification for capture register 4,
RI_ASMR5       EQU  (_RI + 0x50) ; RI Analog switch mode register 5,
RI_CMR5        EQU  (_RI + 0x54) ; RI Channel mask register 5,
RI_CICR5       EQU  (_RI + 0x58) ; RI Channel identification for capture register 5,


; Op Amplifier module

OPAMP_CSR      EQU  (_OPAMP + 0x00) ; OPAMP control/status register,
OPAMP_OTR      EQU  (_OPAMP + 0x04) ; OPAMP offset trimming register for normal mode,
OPAMP_LPOTR    EQU  (_OPAMP + 0x08) ; OPAMP offset trimming register for low power mode,


; Syscfg

SYSCFG_MEMRMP    EQU  (_SYSCFG + 0x00) ; SYSCFG memory remap register,
SYSCFG_PMC       EQU  (_SYSCFG + 0x04) ; SYSCFG peripheral mode configuration register,
SYSCFG_EXTICR1   EQU  (_SYSCFG + 0x08) ; SYSCFG external interrupt configuration registers,
SYSCFG_EXTICR2   EQU  (_SYSCFG + 0x0C) ; SYSCFG external interrupt configuration registers,
SYSCFG_EXTICR3   EQU  (_SYSCFG + 0x10) ; SYSCFG external interrupt configuration registers,
SYSCFG_EXTICR4   EQU  (_SYSCFG + 0x14) ; SYSCFG external interrupt configuration registers,


; External interrupt control registers

EXTI_IMR     EQU  (_EXTI + 0x00) ; EXTI interrupt mask register,
EXTI_EMR     EQU  (_EXTI + 0x04) ; EXTI event mask register,
EXTI_RTSR    EQU  (_EXTI + 0x08) ; EXTI rising edge trigger selection register,
EXTI_FTSR    EQU  (_EXTI + 0x0C) ; EXTI Falling edge trigger selection register,
EXTI_SWIER   EQU  (_EXTI + 0x10) ; EXTI software interrupt event register,
EXTI_PR      EQU  (_EXTI + 0x14) ; EXTI pending register,


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


; SD host

SDIO_POWER    EQU  (_SDIO + 0x00) ; SDIO power control register,
SDIO_CLKCR    EQU  (_SDIO + 0x04) ; SDI clock control register,
SDIO_ARG      EQU  (_SDIO + 0x08) ; SDIO argument register,
SDIO_CMD      EQU  (_SDIO + 0x0C) ; SDIO command register,
SDIO_RESPCMD  EQU  (_SDIO + 0x10) ; SDIO command response register,
SDIO_RESP1    EQU  (_SDIO + 0x14) ; SDIO response 1 register,
SDIO_RESP2    EQU  (_SDIO + 0x18) ; SDIO response 2 register,
SDIO_RESP3    EQU  (_SDIO + 0x1C) ; SDIO response 3 register,
SDIO_RESP4    EQU  (_SDIO + 0x20) ; SDIO response 4 register,
SDIO_DTIMER   EQU  (_SDIO + 0x24) ; SDIO data timer register,
SDIO_DLEN     EQU  (_SDIO + 0x28) ; SDIO data length register,
SDIO_DCTRL    EQU  (_SDIO + 0x2C) ; SDIO data control register,
SDIO_DCOUNT   EQU  (_SDIO + 0x30) ; SDIO data counter register,
SDIO_STA      EQU  (_SDIO + 0x34) ; SDIO status register,
SDIO_ICR      EQU  (_SDIO + 0x38) ; SDIO interrupt clear register,
SDIO_MASK     EQU  (_SDIO + 0x3C) ; SDIO mask register,
SDIO_FIFOCNT  EQU  (_SDIO + 0x48) ; SDIO FIFO counter register,
SDIO_FIFO     EQU  (_SDIO + 0x80) ; SDIO data FIFO register,


; SPI

SPI1_CR1      EQU  (_SPI1 + 0x00) ; SPI1 control register 1 (not used in I2S mode),
SPI1_CR2      EQU  (_SPI1 + 0x04) ; SPI1 control register 2,
SPI1_SR       EQU  (_SPI1 + 0x08) ; SPI1 status register,
SPI1_DR       EQU  (_SPI1 + 0x0C) ; SPI1 data register,
SPI1_CRCPR    EQU  (_SPI1 + 0x10) ; SPI1 CRC polynomial register (not used in I2S mode),
SPI1_RXCRCR   EQU  (_SPI1 + 0x14) ; SPI1 RX CRC register (not used in I2S mode),
SPI1_TXCRCR   EQU  (_SPI1 + 0x18) ; SPI1 TX CRC register (not used in I2S mode),
SPI1_I2SCFGR  EQU  (_SPI1 + 0x1C) ; SPI1_I2S configuration register,
SPI1_I2SPR    EQU  (_SPI1 + 0x20) ; SPI1_I2S prescaler register,


; DMA 1

; Status registers
DMA1_ISR         EQU  (_DMA1 + 0x00) ; DMA interrupt status register,
DMA1_IFCR        EQU  (_DMA1 + 0x04) ; DMA interrupt flag clear register,

; Channel bases
_DMA1_CH1 EQU  (_DMA1 + 0x0008)
_DMA1_CH2 EQU  (_DMA1 + 0x001C)
_DMA1_CH3 EQU  (_DMA1 + 0x0030)
_DMA1_CH4 EQU  (_DMA1 + 0x0044)
_DMA1_CH5 EQU  (_DMA1 + 0x0058)
_DMA1_CH6 EQU  (_DMA1 + 0x006C)
_DMA1_CH7 EQU  (_DMA1 + 0x0080)

DMA1_CH1_CCR       EQU  (_DMA1_CH1 + 0x00) ; DMA channel x configuration register
DMA1_CH1_CNDTR     EQU  (_DMA1_CH1 + 0x04) ; DMA channel x number of data register
DMA1_CH1_CPAR      EQU  (_DMA1_CH1 + 0x08) ; DMA channel x peripheral address register
DMA1_CH1_CMAR      EQU  (_DMA1_CH1 + 0x0C) ; DMA channel x memory address register

DMA1_CH2_CCR       EQU  (_DMA1_CH2 + 0x00) ; DMA channel x configuration register
DMA1_CH2_CNDTR     EQU  (_DMA1_CH2 + 0x04) ; DMA channel x number of data register
DMA1_CH2_CPAR      EQU  (_DMA1_CH2 + 0x08) ; DMA channel x peripheral address register
DMA1_CH2_CMAR      EQU  (_DMA1_CH2 + 0x0C) ; DMA channel x memory address register

DMA1_CH3_CCR       EQU  (_DMA1_CH3 + 0x00) ; DMA channel x configuration register
DMA1_CH3_CNDTR     EQU  (_DMA1_CH3 + 0x04) ; DMA channel x number of data register
DMA1_CH3_CPAR      EQU  (_DMA1_CH3 + 0x08) ; DMA channel x peripheral address register
DMA1_CH3_CMAR      EQU  (_DMA1_CH3 + 0x0C) ; DMA channel x memory address register

DMA1_CH4_CCR       EQU  (_DMA1_CH4 + 0x00) ; DMA channel x configuration register
DMA1_CH4_CNDTR     EQU  (_DMA1_CH4 + 0x04) ; DMA channel x number of data register
DMA1_CH4_CPAR      EQU  (_DMA1_CH4 + 0x08) ; DMA channel x peripheral address register
DMA1_CH4_CMAR      EQU  (_DMA1_CH4 + 0x0C) ; DMA channel x memory address register

DMA1_CH5_CCR       EQU  (_DMA1_CH5 + 0x00) ; DMA channel x configuration register
DMA1_CH5_CNDTR     EQU  (_DMA1_CH5 + 0x04) ; DMA channel x number of data register
DMA1_CH5_CPAR      EQU  (_DMA1_CH5 + 0x08) ; DMA channel x peripheral address register
DMA1_CH5_CMAR      EQU  (_DMA1_CH5 + 0x0C) ; DMA channel x memory address register

DMA1_CH6_CCR       EQU  (_DMA1_CH6 + 0x00) ; DMA channel x configuration register
DMA1_CH6_CNDTR     EQU  (_DMA1_CH6 + 0x04) ; DMA channel x number of data register
DMA1_CH6_CPAR      EQU  (_DMA1_CH6 + 0x08) ; DMA channel x peripheral address register
DMA1_CH6_CMAR      EQU  (_DMA1_CH6 + 0x0C) ; DMA channel x memory address register

DMA1_CH7_CCR       EQU  (_DMA1_CH7 + 0x00) ; DMA channel x configuration register
DMA1_CH7_CNDTR     EQU  (_DMA1_CH7 + 0x04) ; DMA channel x number of data register
DMA1_CH7_CPAR      EQU  (_DMA1_CH7 + 0x08) ; DMA channel x peripheral address register
DMA1_CH7_CMAR      EQU  (_DMA1_CH7 + 0x0C) ; DMA channel x memory address register


; DMA 2

; Status registers
DMA2_ISR         EQU  (_DMA2 + 0x00) ; DMA interrupt status register,
DMA2_IFCR        EQU  (_DMA2 + 0x04) ; DMA interrupt flag clear register,

; Channel bases
_DMA2_CH1 EQU  (_DMA2 + 0x0008)
_DMA2_CH2 EQU  (_DMA2 + 0x001C)
_DMA2_CH3 EQU  (_DMA2 + 0x0030)
_DMA2_CH4 EQU  (_DMA2 + 0x0044)
_DMA2_CH5 EQU  (_DMA2 + 0x0058)

DMA2_CH1_CCR       EQU  (_DMA2_CH1 + 0x00) ; DMA channel x configuration register
DMA2_CH1_CNDTR     EQU  (_DMA2_CH1 + 0x04) ; DMA channel x number of data register
DMA2_CH1_CPAR      EQU  (_DMA2_CH1 + 0x08) ; DMA channel x peripheral address register
DMA2_CH1_CMAR      EQU  (_DMA2_CH1 + 0x0C) ; DMA channel x memory address register

DMA2_CH2_CCR       EQU  (_DMA2_CH2 + 0x00) ; DMA channel x configuration register
DMA2_CH2_CNDTR     EQU  (_DMA2_CH2 + 0x04) ; DMA channel x number of data register
DMA2_CH2_CPAR      EQU  (_DMA2_CH2 + 0x08) ; DMA channel x peripheral address register
DMA2_CH2_CMAR      EQU  (_DMA2_CH2 + 0x0C) ; DMA channel x memory address register

DMA2_CH3_CCR       EQU  (_DMA2_CH3 + 0x00) ; DMA channel x configuration register
DMA2_CH3_CNDTR     EQU  (_DMA2_CH3 + 0x04) ; DMA channel x number of data register
DMA2_CH3_CPAR      EQU  (_DMA2_CH3 + 0x08) ; DMA channel x peripheral address register
DMA2_CH3_CMAR      EQU  (_DMA2_CH3 + 0x0C) ; DMA channel x memory address register

DMA2_CH4_CCR       EQU  (_DMA2_CH4 + 0x00) ; DMA channel x configuration register
DMA2_CH4_CNDTR     EQU  (_DMA2_CH4 + 0x04) ; DMA channel x number of data register
DMA2_CH4_CPAR      EQU  (_DMA2_CH4 + 0x08) ; DMA channel x peripheral address register
DMA2_CH4_CMAR      EQU  (_DMA2_CH4 + 0x0C) ; DMA channel x memory address register

DMA2_CH5_CCR       EQU  (_DMA2_CH5 + 0x00) ; DMA channel x configuration register
DMA2_CH5_CNDTR     EQU  (_DMA2_CH5 + 0x04) ; DMA channel x number of data register
DMA2_CH5_CPAR      EQU  (_DMA2_CH5 + 0x08) ; DMA channel x peripheral address register
DMA2_CH5_CMAR      EQU  (_DMA2_CH5 + 0x0C) ; DMA channel x memory address register


; RCC registers

RCC_CR           EQU  (_RCC + 0x00) ; RCC clock control register,
RCC_ICSCR        EQU  (_RCC + 0x04) ; RCC Internal clock sources calibration register,
RCC_CFGR         EQU  (_RCC + 0x08) ; RCC Clock configuration register,
RCC_CIR          EQU  (_RCC + 0x0C) ; RCC Clock interrupt register,
RCC_AHBRSTR      EQU  (_RCC + 0x10) ; RCC AHB peripheral reset register,
RCC_APB2RSTR     EQU  (_RCC + 0x14) ; RCC APB2 peripheral reset register,
RCC_APB1RSTR     EQU  (_RCC + 0x18) ; RCC APB1 peripheral reset register,
RCC_AHBENR       EQU  (_RCC + 0x1C) ; RCC AHB peripheral clock enable register,
RCC_APB2ENR      EQU  (_RCC + 0x20) ; RCC APB2 peripheral clock enable register,
RCC_APB1ENR      EQU  (_RCC + 0x24) ; RCC APB1 peripheral clock enable register,
RCC_AHBLPENR     EQU  (_RCC + 0x28) ; RCC AHB peripheral clock enable in low power mode register,
RCC_APB2LPENR    EQU  (_RCC + 0x2C) ; RCC APB2 peripheral clock enable in low power mode register,
RCC_APB1LPENR    EQU  (_RCC + 0x30) ; RCC APB1 peripheral clock enable in low power mode register,
RCC_CSR          EQU  (_RCC + 0x34) ; RCC Control/status register,


; CRC module

CRC_DR           EQU  (_CRC + 0x00) ; CRC Data register,
CRC_IDR          EQU  (_CRC + 0x04) ; CRC Independent data register,
CRC_CR           EQU  (_CRC + 0x08) ; CRC Control register,


; GPIO ports

_GPIOA           EQU  (_GPIO + 0x0000)
_GPIOB           EQU  (_GPIO + 0x0400)
_GPIOC           EQU  (_GPIO + 0x0800)
_GPIOD           EQU  (_GPIO + 0x0C00)
_GPIOE           EQU  (_GPIO + 0x1000)
_GPIOH           EQU  (_GPIO + 0x1400)
_GPIOF           EQU  (_GPIO + 0x1800)
_GPIOG           EQU  (_GPIO + 0x1C00)

GPIOA_MODER      EQU  (_GPIOA + 0x00) ; GPIOA pin mode register,
GPIOA_OTYPER     EQU  (_GPIOA + 0x04) ; GPIOA output type register,
GPIOA_OSPEEDR    EQU  (_GPIOA + 0x08) ; GPIOA output speed register,
GPIOA_PUPDR      EQU  (_GPIOA + 0x0C) ; GPIOA pull-up/pull-down register,
GPIOA_IDR        EQU  (_GPIOA + 0x10) ; GPIOA input data register,
GPIOA_ODR        EQU  (_GPIOA + 0x14) ; GPIOA output data register,
GPIOA_BSRR       EQU  (_GPIOA + 0x18) ; GPIOA bit set/reset register,
GPIOA_LCKR       EQU  (_GPIOA + 0x1C) ; GPIOA configuration lock register,
GPIOA_AFRL       EQU  (_GPIOA + 0x20) ; GPIOA alternate function low register,
GPIOA_AFRH       EQU  (_GPIOA + 0x24) ; GPIOA alternate function low register,
GPIOA_BRR        EQU  (_GPIOA + 0x28) ; GPIOA bit reset register,

GPIOB_MODER      EQU  (_GPIOB + 0x00) ; GPIOB pin mode register,
GPIOB_OTYPER     EQU  (_GPIOB + 0x04) ; GPIOB output type register,
GPIOB_OSPEEDR    EQU  (_GPIOB + 0x08) ; GPIOB output speed register,
GPIOB_PUPDR      EQU  (_GPIOB + 0x0C) ; GPIOB pull-up/pull-down register,
GPIOB_IDR        EQU  (_GPIOB + 0x10) ; GPIOB input data register,
GPIOB_ODR        EQU  (_GPIOB + 0x14) ; GPIOB output data register,
GPIOB_BSRR       EQU  (_GPIOB + 0x18) ; GPIOB bit set/reset register,
GPIOB_LCKR       EQU  (_GPIOB + 0x1C) ; GPIOB configuration lock register,
GPIOB_AFR        EQU  (_GPIOB + 0x20) ; GPIOB alternate function low register,
GPIOB_BRR        EQU  (_GPIOB + 0x28) ; GPIOB bit reset register,

GPIOC_MODER      EQU  (_GPIOC + 0x00) ; GPIOC pin mode register,
GPIOC_OTYPER     EQU  (_GPIOC + 0x04) ; GPIOC output type register,
GPIOC_OSPEEDR    EQU  (_GPIOC + 0x08) ; GPIOC output speed register,
GPIOC_PUPDR      EQU  (_GPIOC + 0x0C) ; GPIOC pull-up/pull-down register,
GPIOC_IDR        EQU  (_GPIOC + 0x10) ; GPIOC input data register,
GPIOC_ODR        EQU  (_GPIOC + 0x14) ; GPIOC output data register,
GPIOC_BSRR       EQU  (_GPIOC + 0x18) ; GPIOC bit set/reset register,
GPIOC_LCKR       EQU  (_GPIOC + 0x1C) ; GPIOC configuration lock register,
GPIOC_AFR        EQU  (_GPIOC + 0x20) ; GPIOC alternate function low register,
GPIOC_BRR        EQU  (_GPIOC + 0x28) ; GPIOC bit reset register,

GPIOD_MODER      EQU  (_GPIOD + 0x00) ; GPIOD pin mode register,
GPIOD_OTYPER     EQU  (_GPIOD + 0x04) ; GPIOD output type register,
GPIOD_OSPEEDR    EQU  (_GPIOD + 0x08) ; GPIOD output speed register,
GPIOD_PUPDR      EQU  (_GPIOD + 0x0C) ; GPIOD pull-up/pull-down register,
GPIOD_IDR        EQU  (_GPIOD + 0x10) ; GPIOD input data register,
GPIOD_ODR        EQU  (_GPIOD + 0x14) ; GPIOD output data register,
GPIOD_BSRR       EQU  (_GPIOD + 0x18) ; GPIOD bit set/reset register,
GPIOD_LCKR       EQU  (_GPIOD + 0x1C) ; GPIOD configuration lock register,
GPIOD_AFR        EQU  (_GPIOD + 0x20) ; GPIOD alternate function low register,
GPIOD_BRR        EQU  (_GPIOD + 0x28) ; GPIOD bit reset register,

GPIOE_MODER      EQU  (_GPIOE + 0x00) ; GPIOE pin mode register,
GPIOE_OTYPER     EQU  (_GPIOE + 0x04) ; GPIOE output type register,
GPIOE_OSPEEDR    EQU  (_GPIOE + 0x08) ; GPIOE output speed register,
GPIOE_PUPDR      EQU  (_GPIOE + 0x0C) ; GPIOE pull-up/pull-down register,
GPIOE_IDR        EQU  (_GPIOE + 0x10) ; GPIOE input data register,
GPIOE_ODR        EQU  (_GPIOE + 0x14) ; GPIOE output data register,
GPIOE_BSRR       EQU  (_GPIOE + 0x18) ; GPIOE bit set/reset register,
GPIOE_LCKR       EQU  (_GPIOE + 0x1C) ; GPIOE configuration lock register,
GPIOE_AFR        EQU  (_GPIOE + 0x20) ; GPIOE alternate function low register,
GPIOE_BRR        EQU  (_GPIOE + 0x28) ; GPIOE bit reset register,

GPIOF_MODER      EQU  (_GPIOF + 0x00) ; GPIOF pin mode register,
GPIOF_OTYPER     EQU  (_GPIOF + 0x04) ; GPIOF output type register,
GPIOF_OSPEEDR    EQU  (_GPIOF + 0x08) ; GPIOF output speed register,
GPIOF_PUPDR      EQU  (_GPIOF + 0x0C) ; GPIOF pull-up/pull-down register,
GPIOF_IDR        EQU  (_GPIOF + 0x10) ; GPIOF input data register,
GPIOF_ODR        EQU  (_GPIOF + 0x14) ; GPIOF output data register,
GPIOF_BSRR       EQU  (_GPIOF + 0x18) ; GPIOF bit set/reset register,
GPIOF_LCKR       EQU  (_GPIOF + 0x1C) ; GPIOF configuration lock register,
GPIOF_AFR        EQU  (_GPIOF + 0x20) ; GPIOF alternate function low register,
GPIOF_BRR        EQU  (_GPIOF + 0x28) ; GPIOF bit reset register,

GPIOG_MODER      EQU  (_GPIOG + 0x00) ; GPIOG pin mode register,
GPIOG_OTYPER     EQU  (_GPIOG + 0x04) ; GPIOG output type register,
GPIOG_OSPEEDR    EQU  (_GPIOG + 0x08) ; GPIOG output speed register,
GPIOG_PUPDR      EQU  (_GPIOG + 0x0C) ; GPIOG pull-up/pull-down register,
GPIOG_IDR        EQU  (_GPIOG + 0x10) ; GPIOG input data register,
GPIOG_ODR        EQU  (_GPIOG + 0x14) ; GPIOG output data register,
GPIOG_BSRR       EQU  (_GPIOG + 0x18) ; GPIOG bit set/reset register,
GPIOG_LCKR       EQU  (_GPIOG + 0x1C) ; GPIOG configuration lock register,
GPIOG_AFR        EQU  (_GPIOG + 0x20) ; GPIOG alternate function low register,
GPIOG_BRR        EQU  (_GPIOG + 0x28) ; GPIOG bit reset register,

GPIOH_MODER      EQU  (_GPIOH + 0x00) ; GPIOH pin mode register,
GPIOH_OTYPER     EQU  (_GPIOH + 0x04) ; GPIOH output type register,
GPIOH_OSPEEDR    EQU  (_GPIOH + 0x08) ; GPIOH output speed register,
GPIOH_PUPDR      EQU  (_GPIOH + 0x0C) ; GPIOH pull-up/pull-down register,
GPIOH_IDR        EQU  (_GPIOH + 0x10) ; GPIOH input data register,
GPIOH_ODR        EQU  (_GPIOH + 0x14) ; GPIOH output data register,
GPIOH_BSRR       EQU  (_GPIOH + 0x18) ; GPIOH bit set/reset register,
GPIOH_LCKR       EQU  (_GPIOH + 0x1C) ; GPIOH configuration lock register,
GPIOH_AFR        EQU  (_GPIOH + 0x20) ; GPIOH alternate function low register,
GPIOH_BRR        EQU  (_GPIOH + 0x28) ; GPIOH bit reset register,


; FLASH registers

FLASH_ACR        EQU  (_FLASH + 0x00) ; Access control register,
FLASH_PECR       EQU  (_FLASH + 0x04) ; Program/erase control register,
FLASH_PDKEYR     EQU  (_FLASH + 0x08) ; Power down key register,
FLASH_PEKEYR     EQU  (_FLASH + 0x0c) ; Program/erase key register,
FLASH_PRGKEYR    EQU  (_FLASH + 0x10) ; Program memory key register,
FLASH_OPTKEYR    EQU  (_FLASH + 0x14) ; Option byte key register,
FLASH_SR         EQU  (_FLASH + 0x18) ; Status register,
FLASH_OBR        EQU  (_FLASH + 0x1c) ; Option byte register,
FLASH_WRPR       EQU  (_FLASH + 0x20) ; Write protection register,
FLASH_WRPR1      EQU  (_FLASH + 0x28) ; Write protection register 1,
FLASH_WRPR2      EQU  (_FLASH + 0x2C) ; Write protection register 2,

; FLASH option bytes

OB_RDP           EQU  (_OB + 0x00) ; Read protection register,
OB_USER          EQU  (_OB + 0x04) ; user register,
OB_WRP01         EQU  (_OB + 0x08) ; write protection register 0 1,
OB_WRP23         EQU  (_OB + 0x0C) ; write protection register 2 3,
OB_WRP45         EQU  (_OB + 0x10) ; write protection register 4 5,
OB_WRP67         EQU  (_OB + 0x14) ; write protection register 6 7,
OB_WRP89         EQU  (_OB + 0x18) ; write protection register 8 9,
OB_WRP1011       EQU  (_OB + 0x1C) ; write protection register 10 11,


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



; FSMC
_FSMC_B1        EQU  (_FSMC + 0x0000) ; FSMC Bank1 registers base address
_FSMC_B1E       EQU  (_FSMC + 0x0104) ; FSMC Bank1E registers base address

; Bank 1
FSMC_B1_BTCR    EQU  (_FSMC_B1 + 0x00) ; NOR/PSRAM chip-select control register(BCR) and chip-select timing register(BTR),

; Bank 2
FSMC_B1E_BWTR   EQU  (_FSMC_B1E + 0x104) ; NOR/PSRAM write timing registers,


; DBGMCU

DBGMCU_IDCODE      EQU  (_DBGMCU + 0x00) ; MCU device ID code,
DBGMCU_CR          EQU  (_DBGMCU + 0x04) ; Debug MCU configuration register,
DBGMCU_APB1FZ      EQU  (_DBGMCU + 0x08) ; Debug MCU APB1 freeze register,
DBGMCU_APB2FZ      EQU  (_DBGMCU + 0x0C) ; Debug MCU APB2 freeze register,

	END
