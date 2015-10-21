;********************************************************************************
; FILE   : INI_RCC.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Bitove masky ridicich registru pro RCC (nastaveni hodin)
;
;                      Reset and Clock Control (RCC)
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



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;*******************  Bit definition for RCC_CR register  *******************
RCC_CR_HSION                     EQU  0x00000001        ; Internal High Speed clock enable
RCC_CR_HSIRDY                    EQU  0x00000002        ; Internal High Speed clock ready flag

RCC_CR_MSION                     EQU  0x00000100        ; Internal Multi Speed clock enable
RCC_CR_MSIRDY                    EQU  0x00000200        ; Internal Multi Speed clock ready flag

RCC_CR_HSEON                     EQU  0x00010000        ; External High Speed clock enable
RCC_CR_HSERDY                    EQU  0x00020000        ; External High Speed clock ready flag
RCC_CR_HSEBYP                    EQU  0x00040000        ; External High Speed clock Bypass

RCC_CR_PLLON                     EQU  0x01000000        ; PLL enable
RCC_CR_PLLRDY                    EQU  0x02000000        ; PLL clock ready flag
RCC_CR_CSSON                     EQU  0x10000000        ; Clock Security System enable

RCC_CR_RTCPRE                    EQU  0x60000000        ; RTC/LCD Prescaler

; prescaler levels
RCC_CR_RTCPRE_DIV2                  EQU  0x00000000
RCC_CR_RTCPRE_DIV4                  EQU  0x20000000
RCC_CR_RTCPRE_DIV8                  EQU  0x40000000
RCC_CR_RTCPRE_DIV16                 EQU  0x60000000

;*******************  Bit definition for RCC_ICSCR register  ****************
RCC_ICSCR_HSICAL                 EQU  0x000000FF        ; Internal High Speed clock Calibration
RCC_ICSCR_HSITRIM                EQU  0x00001F00        ; Internal High Speed clock trimming

RCC_ICSCR_MSIRANGE               EQU  0x0000E000        ; Internal Multi Speed clock Range
RCC_ICSCR_MSIRANGE_0             EQU  0x00000000        ; Internal Multi Speed clock Range 65.536 KHz
RCC_ICSCR_MSIRANGE_1             EQU  0x00002000        ; Internal Multi Speed clock Range 131.072 KHz
RCC_ICSCR_MSIRANGE_2             EQU  0x00004000        ; Internal Multi Speed clock Range 262.144 KHz
RCC_ICSCR_MSIRANGE_3             EQU  0x00006000        ; Internal Multi Speed clock Range 524.288 KHz
RCC_ICSCR_MSIRANGE_4             EQU  0x00008000        ; Internal Multi Speed clock Range 1.048 MHz
RCC_ICSCR_MSIRANGE_5             EQU  0x0000A000        ; Internal Multi Speed clock Range 2.097 MHz
RCC_ICSCR_MSIRANGE_6             EQU  0x0000C000        ; Internal Multi Speed clock Range 4.194 MHz
RCC_ICSCR_MSICAL                 EQU  0x00FF0000        ; Internal Multi Speed clock Calibration
RCC_ICSCR_MSITRIM                EQU  0xFF000000        ; Internal Multi Speed clock trimming

;*******************  Bit definition for RCC_CFGR register  *****************
RCC_CFGR_SW                      EQU  0x00000003        ; SW[1:0] bits (System clock Switch)

; SW configuration
RCC_CFGR_SW_MSI                  EQU  0x00000000        ; MSI selected as system clock
RCC_CFGR_SW_HSI                  EQU  0x00000001        ; HSI selected as system clock
RCC_CFGR_SW_HSE                  EQU  0x00000002        ; HSE selected as system clock
RCC_CFGR_SW_PLL                  EQU  0x00000003        ; PLL selected as system clock

RCC_CFGR_SWS                     EQU  0x0000000C        ; SWS[1:0] bits (System Clock Switch Status)

; SWS configuration
RCC_CFGR_SWS_MSI                 EQU  0x00000000        ; MSI oscillator used as system clock
RCC_CFGR_SWS_HSI                 EQU  0x00000004        ; HSI oscillator used as system clock
RCC_CFGR_SWS_HSE                 EQU  0x00000008        ; HSE oscillator used as system clock
RCC_CFGR_SWS_PLL                 EQU  0x0000000C        ; PLL used as system clock

RCC_CFGR_HPRE                    EQU  0x000000F0        ; HPRE[3:0] bits (AHB prescaler)

; HPRE configuration
RCC_CFGR_HPRE_DIV1               EQU  0x00000000        ; SYSCLK not divided
RCC_CFGR_HPRE_DIV2               EQU  0x00000080        ; SYSCLK divided by 2
RCC_CFGR_HPRE_DIV4               EQU  0x00000090        ; SYSCLK divided by 4
RCC_CFGR_HPRE_DIV8               EQU  0x000000A0        ; SYSCLK divided by 8
RCC_CFGR_HPRE_DIV16              EQU  0x000000B0        ; SYSCLK divided by 16
RCC_CFGR_HPRE_DIV64              EQU  0x000000C0        ; SYSCLK divided by 64
RCC_CFGR_HPRE_DIV128             EQU  0x000000D0        ; SYSCLK divided by 128
RCC_CFGR_HPRE_DIV256             EQU  0x000000E0        ; SYSCLK divided by 256
RCC_CFGR_HPRE_DIV512             EQU  0x000000F0        ; SYSCLK divided by 512

RCC_CFGR_PPRE1                   EQU  0x00000700        ; PRE1[2:0] bits (APB1 prescaler)

; PPRE1 configuration
RCC_CFGR_PPRE1_DIV1              EQU  0x00000000        ; HCLK not divided
RCC_CFGR_PPRE1_DIV2              EQU  0x00000400        ; HCLK divided by 2
RCC_CFGR_PPRE1_DIV4              EQU  0x00000500        ; HCLK divided by 4
RCC_CFGR_PPRE1_DIV8              EQU  0x00000600        ; HCLK divided by 8
RCC_CFGR_PPRE1_DIV16             EQU  0x00000700        ; HCLK divided by 16

RCC_CFGR_PPRE2                   EQU  0x00003800        ; PRE2[2:0] bits (APB2 prescaler)

; PPRE2 configuration
RCC_CFGR_PPRE2_DIV1              EQU  0x00000000        ; HCLK not divided
RCC_CFGR_PPRE2_DIV2              EQU  0x00002000        ; HCLK divided by 2
RCC_CFGR_PPRE2_DIV4              EQU  0x00002800        ; HCLK divided by 4
RCC_CFGR_PPRE2_DIV8              EQU  0x00003000        ; HCLK divided by 8
RCC_CFGR_PPRE2_DIV16             EQU  0x00003800        ; HCLK divided by 16

; PLL entry clock source
RCC_CFGR_PLLSRC                  EQU  0x00010000        ; PLL entry clock source

RCC_CFGR_PLLSRC_HSI              EQU  0x00000000        ; HSI as PLL entry clock source
RCC_CFGR_PLLSRC_HSE              EQU  0x00010000        ; HSE as PLL entry clock source


RCC_CFGR_PLLMUL                  EQU  0x003C0000        ; PLLMUL[3:0] bits (PLL multiplication factor)

; PLLMUL configuration
RCC_CFGR_PLLMUL3                 EQU  0x00000000        ; PLL input clock * 3
RCC_CFGR_PLLMUL4                 EQU  0x00040000        ; PLL input clock * 4
RCC_CFGR_PLLMUL6                 EQU  0x00080000        ; PLL input clock * 6
RCC_CFGR_PLLMUL8                 EQU  0x000C0000        ; PLL input clock * 8
RCC_CFGR_PLLMUL12                EQU  0x00100000        ; PLL input clock * 12
RCC_CFGR_PLLMUL16                EQU  0x00140000        ; PLL input clock * 16
RCC_CFGR_PLLMUL24                EQU  0x00180000        ; PLL input clock * 24
RCC_CFGR_PLLMUL32                EQU  0x001C0000        ; PLL input clock * 32
RCC_CFGR_PLLMUL48                EQU  0x00200000        ; PLL input clock * 48

; PLLDIV configuration
RCC_CFGR_PLLDIV                  EQU  0x00C00000        ; PLLDIV[1:0] bits (PLL Output Division)

; PLLDIV configuration
RCC_CFGR_PLLDIV1                 EQU  0x00000000        ; PLL clock output = CKVCO / 1
RCC_CFGR_PLLDIV2                 EQU  0x00400000        ; PLL clock output = CKVCO / 2
RCC_CFGR_PLLDIV3                 EQU  0x00800000        ; PLL clock output = CKVCO / 3
RCC_CFGR_PLLDIV4                 EQU  0x00C00000        ; PLL clock output = CKVCO / 4


RCC_CFGR_MCOSEL                  EQU  0x07000000        ; MCO[2:0] bits (Microcontroller Clock Output)

; MCO configuration
RCC_CFGR_MCO_NOCLOCK             EQU  0x00000000        ; No clock
RCC_CFGR_MCO_SYSCLK              EQU  0x01000000        ; System clock selected
RCC_CFGR_MCO_HSI                 EQU  0x02000000        ; Internal 16 MHz RC oscillator clock selected
RCC_CFGR_MCO_MSI                 EQU  0x03000000        ; Internal Medium Speed RC oscillator clock selected
RCC_CFGR_MCO_HSE                 EQU  0x04000000        ; External 1-25 MHz oscillator clock selected
RCC_CFGR_MCO_PLL                 EQU  0x05000000        ; PLL clock divided
RCC_CFGR_MCO_LSI                 EQU  0x06000000        ; LSI selected
RCC_CFGR_MCO_LSE                 EQU  0x07000000        ; LSE selected

RCC_CFGR_MCOPRE                  EQU  0x70000000        ; MCOPRE[2:0] bits (Microcontroller Clock Output Prescaler)

; MCO Prescaler configuration
RCC_CFGR_MCO_DIV1                EQU  0x00000000        ; MCO Clock divided by 1
RCC_CFGR_MCO_DIV2                EQU  0x10000000        ; MCO Clock divided by 2
RCC_CFGR_MCO_DIV4                EQU  0x20000000        ; MCO Clock divided by 4
RCC_CFGR_MCO_DIV8                EQU  0x30000000        ; MCO Clock divided by 8
RCC_CFGR_MCO_DIV16               EQU  0x40000000        ; MCO Clock divided by 16

; ******************  Bit definition for RCC_CIR register  *******************
RCC_CIR_LSIRDYF                  EQU  0x00000001        ; LSI Ready Interrupt flag
RCC_CIR_LSERDYF                  EQU  0x00000002        ; LSE Ready Interrupt flag
RCC_CIR_HSIRDYF                  EQU  0x00000004        ; HSI Ready Interrupt flag
RCC_CIR_HSERDYF                  EQU  0x00000008        ; HSE Ready Interrupt flag
RCC_CIR_PLLRDYF                  EQU  0x00000010        ; PLL Ready Interrupt flag
RCC_CIR_MSIRDYF                  EQU  0x00000020        ; MSI Ready Interrupt flag
RCC_CIR_LSECSS                   EQU  0x00000040        ; LSE CSS Interrupt flag
RCC_CIR_CSSF                     EQU  0x00000080        ; Clock Security System Interrupt flag

RCC_CIR_LSIRDYIE                 EQU  0x00000100        ; LSI Ready Interrupt Enable
RCC_CIR_LSERDYIE                 EQU  0x00000200        ; LSE Ready Interrupt Enable
RCC_CIR_HSIRDYIE                 EQU  0x00000400        ; HSI Ready Interrupt Enable
RCC_CIR_HSERDYIE                 EQU  0x00000800        ; HSE Ready Interrupt Enable
RCC_CIR_PLLRDYIE                 EQU  0x00001000        ; PLL Ready Interrupt Enable
RCC_CIR_MSIRDYIE                 EQU  0x00002000        ; MSI Ready Interrupt Enable
RCC_CIR_LSECSSIE                 EQU  0x00004000        ; LSE CSS Interrupt Enable

RCC_CIR_LSIRDYC                  EQU  0x00010000        ; LSI Ready Interrupt Clear
RCC_CIR_LSERDYC                  EQU  0x00020000        ; LSE Ready Interrupt Clear
RCC_CIR_HSIRDYC                  EQU  0x00040000        ; HSI Ready Interrupt Clear
RCC_CIR_HSERDYC                  EQU  0x00080000        ; HSE Ready Interrupt Clear
RCC_CIR_PLLRDYC                  EQU  0x00100000        ; PLL Ready Interrupt Clear
RCC_CIR_MSIRDYC                  EQU  0x00200000        ; MSI Ready Interrupt Clear
RCC_CIR_LSECSSC                  EQU  0x00400000        ; LSE CSS Interrupt Clear
RCC_CIR_CSSC                     EQU  0x00800000        ; Clock Security System Interrupt Clear


;****************  Bit definition for RCC_AHBRSTR register  *****************
RCC_AHBRSTR_GPIOARST             EQU  0x00000001        ; GPIO port A reset
RCC_AHBRSTR_GPIOBRST             EQU  0x00000002        ; GPIO port B reset
RCC_AHBRSTR_GPIOCRST             EQU  0x00000004        ; GPIO port C reset
RCC_AHBRSTR_GPIODRST             EQU  0x00000008        ; GPIO port D reset
RCC_AHBRSTR_GPIOERST             EQU  0x00000010        ; GPIO port E reset
RCC_AHBRSTR_GPIOHRST             EQU  0x00000020        ; GPIO port H reset
RCC_AHBRSTR_GPIOFRST             EQU  0x00000040        ; GPIO port F reset
RCC_AHBRSTR_GPIOGRST             EQU  0x00000080        ; GPIO port G reset
RCC_AHBRSTR_CRCRST               EQU  0x00001000        ; CRC reset
RCC_AHBRSTR_FLITFRST             EQU  0x00008000        ; FLITF reset
RCC_AHBRSTR_DMA1RST              EQU  0x01000000        ; DMA1 reset
RCC_AHBRSTR_DMA2RST              EQU  0x02000000        ; DMA2 reset
RCC_AHBRSTR_AESRST               EQU  0x08000000        ; AES reset
RCC_AHBRSTR_FSMCRST              EQU  0x40000000        ; FSMC reset

;****************  Bit definition for RCC_APB2RSTR register  ****************
RCC_APB2RSTR_SYSCFGRST           EQU  0x00000001        ; System Configuration SYSCFG reset
RCC_APB2RSTR_TIM9RST             EQU  0x00000004        ; TIM9 reset
RCC_APB2RSTR_TIM10RST            EQU  0x00000008        ; TIM10 reset
RCC_APB2RSTR_TIM11RST            EQU  0x00000010        ; TIM11 reset
RCC_APB2RSTR_ADC1RST             EQU  0x00000200        ; ADC1 reset
RCC_APB2RSTR_SDIORST             EQU  0x00000800        ; SDIO reset
RCC_APB2RSTR_SPI1RST             EQU  0x00001000        ; SPI1 reset
RCC_APB2RSTR_USART1RST           EQU  0x00004000        ; USART1 reset

;****************  Bit definition for RCC_APB1RSTR register  ****************
RCC_APB1RSTR_TIM2RST             EQU  0x00000001        ; Timer 2 reset
RCC_APB1RSTR_TIM3RST             EQU  0x00000002        ; Timer 3 reset
RCC_APB1RSTR_TIM4RST             EQU  0x00000004        ; Timer 4 reset
RCC_APB1RSTR_TIM5RST             EQU  0x00000008        ; Timer 5 reset
RCC_APB1RSTR_TIM6RST             EQU  0x00000010        ; Timer 6 reset
RCC_APB1RSTR_TIM7RST             EQU  0x00000020        ; Timer 7 reset
RCC_APB1RSTR_LCDRST              EQU  0x00000200        ; LCD reset
RCC_APB1RSTR_WWDGRST             EQU  0x00000800        ; Window Watchdog reset
RCC_APB1RSTR_SPI2RST             EQU  0x00004000        ; SPI 2 reset
RCC_APB1RSTR_SPI3RST             EQU  0x00008000        ; SPI 3 reset
RCC_APB1RSTR_USART2RST           EQU  0x00020000        ; USART 2 reset
RCC_APB1RSTR_USART3RST           EQU  0x00040000        ; USART 3 reset
RCC_APB1RSTR_UART4RST            EQU  0x00080000        ; UART 4 reset
RCC_APB1RSTR_UART5RST            EQU  0x00100000        ; UART 5 reset
RCC_APB1RSTR_I2C1RST             EQU  0x00200000        ; I2C 1 reset
RCC_APB1RSTR_I2C2RST             EQU  0x00400000        ; I2C 2 reset
RCC_APB1RSTR_USBRST              EQU  0x00800000        ; USB reset
RCC_APB1RSTR_PWRRST              EQU  0x10000000        ; Power interface reset
RCC_APB1RSTR_DACRST              EQU  0x20000000        ; DAC interface reset
RCC_APB1RSTR_COMPRST             EQU  0x80000000        ; Comparator interface reset

;*****************  Bit definition for RCC_AHBENR register  *****************
RCC_AHBENR_GPIOAEN               EQU  0x00000001        ; GPIO port A clock enable
RCC_AHBENR_GPIOBEN               EQU  0x00000002        ; GPIO port B clock enable
RCC_AHBENR_GPIOCEN               EQU  0x00000004        ; GPIO port C clock enable
RCC_AHBENR_GPIODEN               EQU  0x00000008        ; GPIO port D clock enable
RCC_AHBENR_GPIOEEN               EQU  0x00000010        ; GPIO port E clock enable
RCC_AHBENR_GPIOHEN               EQU  0x00000020        ; GPIO port H clock enable
RCC_AHBENR_GPIOFEN               EQU  0x00000040        ; GPIO port F clock enable
RCC_AHBENR_GPIOGEN               EQU  0x00000080        ; GPIO port G clock enable
RCC_AHBENR_CRCEN                 EQU  0x00001000        ; CRC clock enable
RCC_AHBENR_FLITFEN               EQU  0x00008000        ; FLITF clock enable (has effect only when the Flash memory is in power down mode)
RCC_AHBENR_DMA1EN                EQU  0x01000000        ; DMA1 clock enable
RCC_AHBENR_DMA2EN                EQU  0x02000000        ; DMA2 clock enable
RCC_AHBENR_AESEN                 EQU  0x08000000        ; AES clock enable
RCC_AHBENR_FSMCEN                EQU  0x40000000        ; FSMC clock enable


;*****************  Bit definition for RCC_APB2ENR register  ****************
RCC_APB2ENR_SYSCFGEN             EQU  0x00000001         ; System Configuration SYSCFG clock enable
RCC_APB2ENR_TIM9EN               EQU  0x00000004         ; TIM9 interface clock enable
RCC_APB2ENR_TIM10EN              EQU  0x00000008         ; TIM10 interface clock enable
RCC_APB2ENR_TIM11EN              EQU  0x00000010         ; TIM11 Timer clock enable
RCC_APB2ENR_ADC1EN               EQU  0x00000200         ; ADC1 clock enable
RCC_APB2ENR_SDIOEN               EQU  0x00000800         ; SDIO clock enable
RCC_APB2ENR_SPI1EN               EQU  0x00001000         ; SPI1 clock enable
RCC_APB2ENR_USART1EN             EQU  0x00004000         ; USART1 clock enable


;****************  Bit definition for RCC_APB1ENR register  *****************
RCC_APB1ENR_TIM2EN               EQU  0x00000001        ; Timer 2 clock enabled
RCC_APB1ENR_TIM3EN               EQU  0x00000002        ; Timer 3 clock enable
RCC_APB1ENR_TIM4EN               EQU  0x00000004        ; Timer 4 clock enable
RCC_APB1ENR_TIM5EN               EQU  0x00000008        ; Timer 5 clock enable
RCC_APB1ENR_TIM6EN               EQU  0x00000010        ; Timer 6 clock enable
RCC_APB1ENR_TIM7EN               EQU  0x00000020        ; Timer 7 clock enable
RCC_APB1ENR_LCDEN                EQU  0x00000200        ; LCD clock enable
RCC_APB1ENR_WWDGEN               EQU  0x00000800        ; Window Watchdog clock enable
RCC_APB1ENR_SPI2EN               EQU  0x00004000        ; SPI 2 clock enable
RCC_APB1ENR_SPI3EN               EQU  0x00008000        ; SPI 3 clock enable
RCC_APB1ENR_USART2EN             EQU  0x00020000        ; USART 2 clock enable
RCC_APB1ENR_USART3EN             EQU  0x00040000        ; USART 3 clock enable
RCC_APB1ENR_UART4EN              EQU  0x00080000        ; UART 4 clock enable
RCC_APB1ENR_UART5EN              EQU  0x00100000        ; UART 5 clock enable
RCC_APB1ENR_I2C1EN               EQU  0x00200000        ; I2C 1 clock enable
RCC_APB1ENR_I2C2EN               EQU  0x00400000        ; I2C 2 clock enable
RCC_APB1ENR_USBEN                EQU  0x00800000        ; USB clock enable
RCC_APB1ENR_PWREN                EQU  0x10000000        ; Power interface clock enable
RCC_APB1ENR_DACEN                EQU  0x20000000        ; DAC interface clock enable
RCC_APB1ENR_COMPEN               EQU  0x80000000        ; Comparator interface clock enable

;*****************  Bit definition for RCC_AHBLPENR register  ***************
RCC_AHBLPENR_GPIOALPEN           EQU  0x00000001        ; GPIO port A clock enabled in sleep mode
RCC_AHBLPENR_GPIOBLPEN           EQU  0x00000002        ; GPIO port B clock enabled in sleep mode
RCC_AHBLPENR_GPIOCLPEN           EQU  0x00000004        ; GPIO port C clock enabled in sleep mode
RCC_AHBLPENR_GPIODLPEN           EQU  0x00000008        ; GPIO port D clock enabled in sleep mode
RCC_AHBLPENR_GPIOELPEN           EQU  0x00000010        ; GPIO port E clock enabled in sleep mode
RCC_AHBLPENR_GPIOHLPEN           EQU  0x00000020        ; GPIO port H clock enabled in sleep mode
RCC_AHBLPENR_GPIOFLPEN           EQU  0x00000040        ; GPIO port F clock enabled in sleep mode
RCC_AHBLPENR_GPIOGLPEN           EQU  0x00000080        ; GPIO port G clock enabled in sleep mode
RCC_AHBLPENR_CRCLPEN             EQU  0x00001000        ; CRC clock enabled in sleep mode
RCC_AHBLPENR_FLITFLPEN           EQU  0x00008000        ; Flash Interface clock enabled in sleep mode (has effect only when the Flash memory is in power down mode)
RCC_AHBLPENR_SRAMLPEN            EQU  0x00010000        ; SRAM clock enabled in sleep mode
RCC_AHBLPENR_DMA1LPEN            EQU  0x01000000        ; DMA1 clock enabled in sleep mode
RCC_AHBLPENR_DMA2LPEN            EQU  0x02000000        ; DMA2 clock enabled in sleep mode
RCC_AHBLPENR_AESLPEN             EQU  0x08000000        ; AES clock enabled in sleep mode
RCC_AHBLPENR_FSMCLPEN            EQU  0x40000000        ; FSMC clock enabled in sleep mode

;*****************  Bit definition for RCC_APB2LPENR register  **************
RCC_APB2LPENR_SYSCFGLPEN         EQU  0x00000001         ; System Configuration SYSCFG clock enabled in sleep mode
RCC_APB2LPENR_TIM9LPEN           EQU  0x00000004         ; TIM9 interface clock enabled in sleep mode
RCC_APB2LPENR_TIM10LPEN          EQU  0x00000008         ; TIM10 interface clock enabled in sleep mode
RCC_APB2LPENR_TIM11LPEN          EQU  0x00000010         ; TIM11 Timer clock enabled in sleep mode
RCC_APB2LPENR_ADC1LPEN           EQU  0x00000200         ; ADC1 clock enabled in sleep mode
RCC_APB2LPENR_SDIOLPEN           EQU  0x00000800         ; SDIO clock enabled in sleep mode
RCC_APB2LPENR_SPI1LPEN           EQU  0x00001000         ; SPI1 clock enabled in sleep mode
RCC_APB2LPENR_USART1LPEN         EQU  0x00004000         ; USART1 clock enabled in sleep mode

;****************  Bit definition for RCC_APB1LPENR register  ***************
RCC_APB1LPENR_TIM2LPEN           EQU  0x00000001        ; Timer 2 clock enabled in sleep mode
RCC_APB1LPENR_TIM3LPEN           EQU  0x00000002        ; Timer 3 clock enabled in sleep mode
RCC_APB1LPENR_TIM4LPEN           EQU  0x00000004        ; Timer 4 clock enabled in sleep mode
RCC_APB1LPENR_TIM5LPEN           EQU  0x00000008        ; Timer 5 clock enabled in sleep mode
RCC_APB1LPENR_TIM6LPEN           EQU  0x00000010        ; Timer 6 clock enabled in sleep mode
RCC_APB1LPENR_TIM7LPEN           EQU  0x00000020        ; Timer 7 clock enabled in sleep mode
RCC_APB1LPENR_LCDLPEN            EQU  0x00000200        ; LCD clock enabled in sleep mode
RCC_APB1LPENR_WWDGLPEN           EQU  0x00000800        ; Window Watchdog clock enabled in sleep mode
RCC_APB1LPENR_SPI2LPEN           EQU  0x00004000        ; SPI 2 clock enabled in sleep mode
RCC_APB1LPENR_SPI3LPEN           EQU  0x00008000        ; SPI 3 clock enabled in sleep mode
RCC_APB1LPENR_USART2LPEN         EQU  0x00020000        ; USART 2 clock enabled in sleep mode
RCC_APB1LPENR_USART3LPEN         EQU  0x00040000        ; USART 3 clock enabled in sleep mode
RCC_APB1LPENR_UART4LPEN          EQU  0x00080000        ; UART 4 clock enabled in sleep mode
RCC_APB1LPENR_UART5LPEN          EQU  0x00100000        ; UART 5 clock enabled in sleep mode
RCC_APB1LPENR_I2C1LPEN           EQU  0x00200000        ; I2C 1 clock enabled in sleep mode
RCC_APB1LPENR_I2C2LPEN           EQU  0x00400000        ; I2C 2 clock enabled in sleep mode
RCC_APB1LPENR_USBLPEN            EQU  0x00800000        ; USB clock enabled in sleep mode
RCC_APB1LPENR_PWRLPEN            EQU  0x10000000        ; Power interface clock enabled in sleep mode
RCC_APB1LPENR_DACLPEN            EQU  0x20000000        ; DAC interface clock enabled in sleep mode
RCC_APB1LPENR_COMPLPEN           EQU  0x80000000        ; Comparator interface clock enabled in sleep mode

;******************  Bit definition for RCC_CSR register  *******************
RCC_CSR_LSION                   EQU  0x00000001        ; Internal Low Speed oscillator enable
RCC_CSR_LSIRDY                  EQU  0x00000002        ; Internal Low Speed oscillator Ready

RCC_CSR_LSEON                   EQU  0x00000100        ; External Low Speed oscillator enable
RCC_CSR_LSERDY                  EQU  0x00000200        ; External Low Speed oscillator Ready
RCC_CSR_LSEBYP                  EQU  0x00000400        ; External Low Speed oscillator Bypass
RCC_CSR_LSECSSON                EQU  0x00000800        ; External Low Speed oscillator CSS Enable
RCC_CSR_LSECSSD                 EQU  0x00001000        ; External Low Speed oscillator CSS Detected

RCC_CSR_RTCSEL                  EQU  0x00030000        ; RTCSEL[1:0] bits (RTC clock source selection)
RCC_CSR_RTCSEL_0                EQU  0x00010000        ; Bit 0
RCC_CSR_RTCSEL_1                EQU  0x00020000        ; Bit 1

; RTC congiguration
RCC_CSR_RTCSEL_NOCLOCK          EQU  0x00000000        ; No clock
RCC_CSR_RTCSEL_LSE              EQU  0x00010000        ; LSE oscillator clock used as RTC clock
RCC_CSR_RTCSEL_LSI              EQU  0x00020000        ; LSI oscillator clock used as RTC clock
RCC_CSR_RTCSEL_HSE              EQU  0x00030000        ; HSE oscillator clock divided by 2, 4, 8 or 16 by RTCPRE used as RTC clock

RCC_CSR_RTCEN                   EQU  0x00400000        ; RTC clock enable
RCC_CSR_RTCRST                  EQU  0x00800000        ; RTC reset

RCC_CSR_RMVF                    EQU  0x01000000        ; Remove reset flag
RCC_CSR_OBLRSTF                 EQU  0x02000000        ; Option Bytes Loader reset flag
RCC_CSR_PINRSTF                 EQU  0x04000000        ; PIN reset flag
RCC_CSR_PORRSTF                 EQU  0x08000000        ; POR/PDR reset flag
RCC_CSR_SFTRSTF                 EQU  0x10000000        ; Software Reset flag
RCC_CSR_IWDGRSTF                EQU  0x20000000        ; Independent Watchdog reset flag
RCC_CSR_WWDGRSTF                EQU  0x40000000        ; Window watchdog reset flag
RCC_CSR_LPWRRSTF                EQU  0x80000000        ; Low-Power reset flag

	END
