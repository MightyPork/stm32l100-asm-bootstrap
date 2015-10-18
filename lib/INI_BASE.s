;********************************************************************************
; SOUBOR : INI_BASE.S
; AUTOR  : Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Zakladni soubor knihovny. Musi byt includovat pred vsemi ostatnimi.
;          Soubor definuje rozdeleni adresniho prostoru a adresy periferii.
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


FLASH_BASE         EQU  0x08000000                 ; FLASH base address in the alias region
SRAM_BASE          EQU  0x20000000                 ; SRAM base address in the alias region
PERIPH_BASE        EQU  0x40000000                 ; Peripheral base address in the alias region

SRAM_BB_BASE       EQU  (SRAM_BASE   + 0x02000000) ; SRAM base address in the bit-band region
PERIPH_BB_BASE     EQU  (PERIPH_BASE + 0x02000000) ; Peripheral base address in the bit-band region


; ------------------------- System Config Blocks -----------------------------

_SCS_BASE          EQU  0xE000E000                 ; System Control Space base
_SCB               EQU  (_SCS_BASE + 0x0D00)       ; System Control Block base
_NVIC              EQU  (_SCS_BASE + 0x0100)       ; Nested Interrupt Vector Controller base
_OB                EQU  0x1FF80000                 ; FLASH Option Bytes base address
_AES               EQU  0x50060000                 ; Encryption module
_FSMC              EQU  0xA0000000                 ; External Memory Control base
_DBGMCU            EQU  0xE0042000                 ; Debug MCU registers base address


; ----------------------------- Peripherals ----------------------------------

; *** Peripheral bus bases ***
_APB1              EQU   PERIPH_BASE               ; Advanced Peripheral Bus 1 base
_APB2              EQU  (PERIPH_BASE + 0x10000)    ; Advanced Peripheral Bus 2 base
_AHB               EQU  (PERIPH_BASE + 0x20000)    ; Advanced High-speed Bus base

; *** Peripheral Bus 1 devices ***

_TIM2              EQU  (_APB1 + 0x0000)           ; Timer bases
_TIM3              EQU  (_APB1 + 0x0400)
_TIM4              EQU  (_APB1 + 0x0800)
_TIM5              EQU  (_APB1 + 0x0C00)
_TIM6              EQU  (_APB1 + 0x1000)
_TIM7              EQU  (_APB1 + 0x1400)

_LCD               EQU  (_APB1 + 0x2400)           ; LCD controller base
_RTC               EQU  (_APB1 + 0x2800)           ; RTC base

_WWDG              EQU  (_APB1 + 0x2C00)           ; Window Watchdog base
_IWDG              EQU  (_APB1 + 0x3000)           ; Independent Watchdog base

_SPI2              EQU  (_APB1 + 0x3800)           ; SPI base
_SPI3              EQU  (_APB1 + 0x3C00)

_USART2            EQU  (_APB1 + 0x4400)           ; USART base
_USART3            EQU  (_APB1 + 0x4800)

_UART4             EQU  (_APB1 + 0x4C00)           ; UART base (?)
_UART5             EQU  (_APB1 + 0x5000)

_I2C1              EQU  (_APB1 + 0x5400)           ; I2C base
_I2C2              EQU  (_APB1 + 0x5800)

_PWR               EQU  (_APB1 + 0x7000)           ; Power Control block base
_DAC               EQU  (_APB1 + 0x7400)           ; D/A config base
_COMP              EQU  (_APB1 + 0x7C00)           ; Analog Comparator base
_RI                EQU  (_APB1 + 0x7C04)           ; Routing Interface base (analog pin connections)
_OPAMP             EQU  (_APB1 + 0x7C5C)           ; OpAmp config base


; *** Peripheral Bus 2 devices ***

_TIM9              EQU  (_APB2 + 0x0800)           ; Timer base
_TIM10             EQU  (_APB2 + 0x0C00)
_TIM11             EQU  (_APB2 + 0x1000)

_SYSCFG            EQU  (_APB2 + 0x0000)           ; System config block base
_EXTI              EQU  (_APB2 + 0x0400)           ; External interrupt settings base

_ADC1              EQU  (_APB2 + 0x2400)           ; A/D 1
_ADCC              EQU  (_APB2 + 0x2700)           ; common A/D registers base

_SDIO              EQU  (_APB2 + 0x2C00)           ; SD host
_SPI1              EQU  (_APB2 + 0x3000)           ; SPI
_USART1            EQU  (_APB2 + 0x3800)



; *** High Speed Bus devices ***

_GPIO              EQU  (_AHB + 0x0000)            ; GPIO block base

_CRC               EQU  (_AHB + 0x3000)            ; CRC module base
_RCC               EQU  (_AHB + 0x3800)            ; Reset and Clock Config base

_DMA1              EQU  (_AHB + 0x6000)            ; DMA control base
_DMA2              EQU  (_AHB + 0x6400)

_FLASH             EQU  (_AHB + 0x3C00)            ; FLASH control base


	END
