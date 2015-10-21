;****************************************************************************
; FILE   : INI_GPIO.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Control registers and bit masks for GPIO (ext. memory communication)
;
;                        General Purpose IOs (GPIO)
;
; Part of an assembler library for STM32L100, based on the STM32 CMSIS.
; Developed for educational purposes at the Department of Measure of CTU in Prague.
; See the LICENSE file for detailed terms of use.
;****************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************


_GPIOA           EQU  (_GPIO + 0x0000)
_GPIOB           EQU  (_GPIO + 0x0400)
_GPIOC           EQU  (_GPIO + 0x0800)
_GPIOD           EQU  (_GPIO + 0x0C00)
_GPIOE           EQU  (_GPIO + 0x1000)
_GPIOH           EQU  (_GPIO + 0x1400)
_GPIOF           EQU  (_GPIO + 0x1800)
_GPIOG           EQU  (_GPIO + 0x1C00)

GPIOA_MODER      EQU  (_GPIOA + 0x00)              ; GPIOA pin mode register,
GPIOA_OTYPER     EQU  (_GPIOA + 0x04)              ; GPIOA output type register,
GPIOA_OSPEEDR    EQU  (_GPIOA + 0x08)              ; GPIOA output speed register,
GPIOA_PUPDR      EQU  (_GPIOA + 0x0C)              ; GPIOA pull-up/pull-down register,
GPIOA_IDR        EQU  (_GPIOA + 0x10)              ; GPIOA input data register,
GPIOA_ODR        EQU  (_GPIOA + 0x14)              ; GPIOA output data register,
GPIOA_BSRR       EQU  (_GPIOA + 0x18)              ; GPIOA bit set/reset register,
GPIOA_LCKR       EQU  (_GPIOA + 0x1C)              ; GPIOA configuration lock register,
GPIOA_AFRL       EQU  (_GPIOA + 0x20)              ; GPIOA alternate function low register,
GPIOA_AFRH       EQU  (_GPIOA + 0x24)              ; GPIOA alternate function low register,
GPIOA_BRR        EQU  (_GPIOA + 0x28)              ; GPIOA bit reset register,

GPIOB_MODER      EQU  (_GPIOB + 0x00)              ; GPIOB pin mode register,
GPIOB_OTYPER     EQU  (_GPIOB + 0x04)              ; GPIOB output type register,
GPIOB_OSPEEDR    EQU  (_GPIOB + 0x08)              ; GPIOB output speed register,
GPIOB_PUPDR      EQU  (_GPIOB + 0x0C)              ; GPIOB pull-up/pull-down register,
GPIOB_IDR        EQU  (_GPIOB + 0x10)              ; GPIOB input data register,
GPIOB_ODR        EQU  (_GPIOB + 0x14)              ; GPIOB output data register,
GPIOB_BSRR       EQU  (_GPIOB + 0x18)              ; GPIOB bit set/reset register,
GPIOB_LCKR       EQU  (_GPIOB + 0x1C)              ; GPIOB configuration lock register,
GPIOB_AFR        EQU  (_GPIOB + 0x20)              ; GPIOB alternate function low register,
GPIOB_BRR        EQU  (_GPIOB + 0x28)              ; GPIOB bit reset register,

GPIOC_MODER      EQU  (_GPIOC + 0x00)              ; GPIOC pin mode register,
GPIOC_OTYPER     EQU  (_GPIOC + 0x04)              ; GPIOC output type register,
GPIOC_OSPEEDR    EQU  (_GPIOC + 0x08)              ; GPIOC output speed register,
GPIOC_PUPDR      EQU  (_GPIOC + 0x0C)              ; GPIOC pull-up/pull-down register,
GPIOC_IDR        EQU  (_GPIOC + 0x10)              ; GPIOC input data register,
GPIOC_ODR        EQU  (_GPIOC + 0x14)              ; GPIOC output data register,
GPIOC_BSRR       EQU  (_GPIOC + 0x18)              ; GPIOC bit set/reset register,
GPIOC_LCKR       EQU  (_GPIOC + 0x1C)              ; GPIOC configuration lock register,
GPIOC_AFR        EQU  (_GPIOC + 0x20)              ; GPIOC alternate function low register,
GPIOC_BRR        EQU  (_GPIOC + 0x28)              ; GPIOC bit reset register,

GPIOD_MODER      EQU  (_GPIOD + 0x00)              ; GPIOD pin mode register,
GPIOD_OTYPER     EQU  (_GPIOD + 0x04)              ; GPIOD output type register,
GPIOD_OSPEEDR    EQU  (_GPIOD + 0x08)              ; GPIOD output speed register,
GPIOD_PUPDR      EQU  (_GPIOD + 0x0C)              ; GPIOD pull-up/pull-down register,
GPIOD_IDR        EQU  (_GPIOD + 0x10)              ; GPIOD input data register,
GPIOD_ODR        EQU  (_GPIOD + 0x14)              ; GPIOD output data register,
GPIOD_BSRR       EQU  (_GPIOD + 0x18)              ; GPIOD bit set/reset register,
GPIOD_LCKR       EQU  (_GPIOD + 0x1C)              ; GPIOD configuration lock register,
GPIOD_AFR        EQU  (_GPIOD + 0x20)              ; GPIOD alternate function low register,
GPIOD_BRR        EQU  (_GPIOD + 0x28)              ; GPIOD bit reset register,

GPIOE_MODER      EQU  (_GPIOE + 0x00)              ; GPIOE pin mode register,
GPIOE_OTYPER     EQU  (_GPIOE + 0x04)              ; GPIOE output type register,
GPIOE_OSPEEDR    EQU  (_GPIOE + 0x08)              ; GPIOE output speed register,
GPIOE_PUPDR      EQU  (_GPIOE + 0x0C)              ; GPIOE pull-up/pull-down register,
GPIOE_IDR        EQU  (_GPIOE + 0x10)              ; GPIOE input data register,
GPIOE_ODR        EQU  (_GPIOE + 0x14)              ; GPIOE output data register,
GPIOE_BSRR       EQU  (_GPIOE + 0x18)              ; GPIOE bit set/reset register,
GPIOE_LCKR       EQU  (_GPIOE + 0x1C)              ; GPIOE configuration lock register,
GPIOE_AFR        EQU  (_GPIOE + 0x20)              ; GPIOE alternate function low register,
GPIOE_BRR        EQU  (_GPIOE + 0x28)              ; GPIOE bit reset register,

GPIOF_MODER      EQU  (_GPIOF + 0x00)              ; GPIOF pin mode register,
GPIOF_OTYPER     EQU  (_GPIOF + 0x04)              ; GPIOF output type register,
GPIOF_OSPEEDR    EQU  (_GPIOF + 0x08)              ; GPIOF output speed register,
GPIOF_PUPDR      EQU  (_GPIOF + 0x0C)              ; GPIOF pull-up/pull-down register,
GPIOF_IDR        EQU  (_GPIOF + 0x10)              ; GPIOF input data register,
GPIOF_ODR        EQU  (_GPIOF + 0x14)              ; GPIOF output data register,
GPIOF_BSRR       EQU  (_GPIOF + 0x18)              ; GPIOF bit set/reset register,
GPIOF_LCKR       EQU  (_GPIOF + 0x1C)              ; GPIOF configuration lock register,
GPIOF_AFR        EQU  (_GPIOF + 0x20)              ; GPIOF alternate function low register,
GPIOF_BRR        EQU  (_GPIOF + 0x28)              ; GPIOF bit reset register,

GPIOG_MODER      EQU  (_GPIOG + 0x00)              ; GPIOG pin mode register,
GPIOG_OTYPER     EQU  (_GPIOG + 0x04)              ; GPIOG output type register,
GPIOG_OSPEEDR    EQU  (_GPIOG + 0x08)              ; GPIOG output speed register,
GPIOG_PUPDR      EQU  (_GPIOG + 0x0C)              ; GPIOG pull-up/pull-down register,
GPIOG_IDR        EQU  (_GPIOG + 0x10)              ; GPIOG input data register,
GPIOG_ODR        EQU  (_GPIOG + 0x14)              ; GPIOG output data register,
GPIOG_BSRR       EQU  (_GPIOG + 0x18)              ; GPIOG bit set/reset register,
GPIOG_LCKR       EQU  (_GPIOG + 0x1C)              ; GPIOG configuration lock register,
GPIOG_AFR        EQU  (_GPIOG + 0x20)              ; GPIOG alternate function low register,
GPIOG_BRR        EQU  (_GPIOG + 0x28)              ; GPIOG bit reset register,

GPIOH_MODER      EQU  (_GPIOH + 0x00)              ; GPIOH pin mode register,
GPIOH_OTYPER     EQU  (_GPIOH + 0x04)              ; GPIOH output type register,
GPIOH_OSPEEDR    EQU  (_GPIOH + 0x08)              ; GPIOH output speed register,
GPIOH_PUPDR      EQU  (_GPIOH + 0x0C)              ; GPIOH pull-up/pull-down register,
GPIOH_IDR        EQU  (_GPIOH + 0x10)              ; GPIOH input data register,
GPIOH_ODR        EQU  (_GPIOH + 0x14)              ; GPIOH output data register,
GPIOH_BSRR       EQU  (_GPIOH + 0x18)              ; GPIOH bit set/reset register,
GPIOH_LCKR       EQU  (_GPIOH + 0x1C)              ; GPIOH configuration lock register,
GPIOH_AFR        EQU  (_GPIOH + 0x20)              ; GPIOH alternate function low register,
GPIOH_BRR        EQU  (_GPIOH + 0x28)              ; GPIOH bit reset register,



;****************************************************************************
;*
;*                        BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


; Short pin masks. Valid for OTYPER, IDR and ODR.

GPIO0                   EQU  0x00000001
GPIO1                   EQU  0x00000002
GPIO2                   EQU  0x00000004
GPIO3                   EQU  0x00000008
GPIO4                   EQU  0x00000010
GPIO5                   EQU  0x00000020
GPIO6                   EQU  0x00000040
GPIO7                   EQU  0x00000080
GPIO8                   EQU  0x00000100
GPIO9                   EQU  0x00000200
GPIO10                  EQU  0x00000400
GPIO11                  EQU  0x00000800
GPIO12                  EQU  0x00001000
GPIO13                  EQU  0x00002000
GPIO14                  EQU  0x00004000
GPIO15                  EQU  0x00008000

; OTYPER pattern masks - use as (GPIO_OTYPER_6 & GPIO_OTYPER_OD)

GPIO_OTYPER_PP          EQU  0x00000000
GPIO_OTYPER_OD          EQU  0xFFFFFFFF

; For completenes, aliases also for OTYPER, ODR and IDR

GPIO_OTYPER_0           EQU  0x00000001
GPIO_OTYPER_1           EQU  0x00000002
GPIO_OTYPER_2           EQU  0x00000004
GPIO_OTYPER_3           EQU  0x00000008
GPIO_OTYPER_4           EQU  0x00000010
GPIO_OTYPER_5           EQU  0x00000020
GPIO_OTYPER_6           EQU  0x00000040
GPIO_OTYPER_7           EQU  0x00000080
GPIO_OTYPER_8           EQU  0x00000100
GPIO_OTYPER_9           EQU  0x00000200
GPIO_OTYPER_10          EQU  0x00000400
GPIO_OTYPER_11          EQU  0x00000800
GPIO_OTYPER_12          EQU  0x00001000
GPIO_OTYPER_13          EQU  0x00002000
GPIO_OTYPER_14          EQU  0x00004000
GPIO_OTYPER_15          EQU  0x00008000

GPIO_ODR_0           EQU  0x00000001
GPIO_ODR_1           EQU  0x00000002
GPIO_ODR_2           EQU  0x00000004
GPIO_ODR_3           EQU  0x00000008
GPIO_ODR_4           EQU  0x00000010
GPIO_ODR_5           EQU  0x00000020
GPIO_ODR_6           EQU  0x00000040
GPIO_ODR_7           EQU  0x00000080
GPIO_ODR_8           EQU  0x00000100
GPIO_ODR_9           EQU  0x00000200
GPIO_ODR_10          EQU  0x00000400
GPIO_ODR_11          EQU  0x00000800
GPIO_ODR_12          EQU  0x00001000
GPIO_ODR_13          EQU  0x00002000
GPIO_ODR_14          EQU  0x00004000
GPIO_ODR_15          EQU  0x00008000

GPIO_IDR_0           EQU  0x00000001
GPIO_IDR_1           EQU  0x00000002
GPIO_IDR_2           EQU  0x00000004
GPIO_IDR_3           EQU  0x00000008
GPIO_IDR_4           EQU  0x00000010
GPIO_IDR_5           EQU  0x00000020
GPIO_IDR_6           EQU  0x00000040
GPIO_IDR_7           EQU  0x00000080
GPIO_IDR_8           EQU  0x00000100
GPIO_IDR_9           EQU  0x00000200
GPIO_IDR_10          EQU  0x00000400
GPIO_IDR_11          EQU  0x00000800
GPIO_IDR_12          EQU  0x00001000
GPIO_IDR_13          EQU  0x00002000
GPIO_IDR_14          EQU  0x00004000
GPIO_IDR_15          EQU  0x00008000


;******************  Bit definition for GPIO_MODER register  ****************

; pattern masks. Use as: (GPIO_MODER_0 & GPIO_MODER_OUTPUT)
GPIO_MODER_INPUT        EQU 0x00000000
GPIO_MODER_OUTPUT       EQU 0x55555555
GPIO_MODER_AF           EQU 0xAAAAAAAA
GPIO_MODER_ANALOG       EQU 0xFFFFFFFF

GPIO_MODER_0       EQU  0x00000003
GPIO_MODER_1       EQU  0x0000000C
GPIO_MODER_2       EQU  0x00000030
GPIO_MODER_3       EQU  0x000000C0
GPIO_MODER_4       EQU  0x00000300
GPIO_MODER_5       EQU  0x00000C00
GPIO_MODER_6       EQU  0x00003000
GPIO_MODER_7       EQU  0x0000C000
GPIO_MODER_8       EQU  0x00030000
GPIO_MODER_9       EQU  0x000C0000
GPIO_MODER_10      EQU  0x00300000
GPIO_MODER_11      EQU  0x00C00000
GPIO_MODER_12      EQU  0x03000000
GPIO_MODER_13      EQU  0x0C000000
GPIO_MODER_14      EQU  0x30000000
GPIO_MODER_15      EQU  0xC0000000


;******************  Bit definition for GPIO_OSPEEDR register  **************

; pattern masks. Use as: (GPIO_OSPEEDR_2 & GPIO_OSPEEDR_LOW)
GPIO_OSPEEDR_LOW          EQU 0x00000000
GPIO_OSPEEDR_MEDIUM       EQU 0x55555555
GPIO_OSPEEDR_HIGH         EQU 0xFFFFFFFF

GPIO_OSPEEDR_0    EQU  (0x00000003)
GPIO_OSPEEDR_1    EQU  (0x0000000C)
GPIO_OSPEEDR_2    EQU  (0x00000030)
GPIO_OSPEEDR_3    EQU  (0x000000C0)
GPIO_OSPEEDR_4    EQU  (0x00000300)
GPIO_OSPEEDR_5    EQU  (0x00000C00)
GPIO_OSPEEDR_6    EQU  (0x00003000)
GPIO_OSPEEDR_7    EQU  (0x0000C000)
GPIO_OSPEEDR_8    EQU  (0x00030000)
GPIO_OSPEEDR_9    EQU  (0x000C0000)
GPIO_OSPEEDR_10   EQU  (0x00300000)
GPIO_OSPEEDR_11   EQU  (0x00C00000)
GPIO_OSPEEDR_12   EQU  (0x03000000)
GPIO_OSPEEDR_13   EQU  (0x0C000000)
GPIO_OSPEEDR_14   EQU  (0x30000000)
GPIO_OSPEEDR_15   EQU  (0xC0000000)


;******************  Bit definition for GPIO_PUPDR register  ****************

; pattern masks. Use as: (GPIO_PUPDR_6 & GPIO_PUPDR_UP)
GPIO_PUPDR_NONE        EQU 0x00000000
GPIO_PUPDR_UP          EQU 0x55555555
GPIO_PUPDR_DOWN        EQU 0xAAAAAAAA

GPIO_PUPDR_0    EQU  (0x00000003)
GPIO_PUPDR_1    EQU  (0x0000000C)
GPIO_PUPDR_2    EQU  (0x00000030)
GPIO_PUPDR_3    EQU  (0x000000C0)
GPIO_PUPDR_4    EQU  (0x00000300)
GPIO_PUPDR_5    EQU  (0x00000C00)
GPIO_PUPDR_6    EQU  (0x00003000)
GPIO_PUPDR_7    EQU  (0x0000C000)
GPIO_PUPDR_8    EQU  (0x00030000)
GPIO_PUPDR_9    EQU  (0x000C0000)
GPIO_PUPDR_10   EQU  (0x00300000)
GPIO_PUPDR_11   EQU  (0x00C00000)
GPIO_PUPDR_12   EQU  (0x03000000)
GPIO_PUPDR_13   EQU  (0x0C000000)
GPIO_PUPDR_14   EQU  (0x30000000)
GPIO_PUPDR_15   EQU  (0xC0000000)


;******************  Bit definition for GPIO_BSRR register  *****************

GPIO_BSRR_BS_0          EQU  (0x00000001)
GPIO_BSRR_BS_1          EQU  (0x00000002)
GPIO_BSRR_BS_2          EQU  (0x00000004)
GPIO_BSRR_BS_3          EQU  (0x00000008)
GPIO_BSRR_BS_4          EQU  (0x00000010)
GPIO_BSRR_BS_5          EQU  (0x00000020)
GPIO_BSRR_BS_6          EQU  (0x00000040)
GPIO_BSRR_BS_7          EQU  (0x00000080)
GPIO_BSRR_BS_8          EQU  (0x00000100)
GPIO_BSRR_BS_9          EQU  (0x00000200)
GPIO_BSRR_BS_10         EQU  (0x00000400)
GPIO_BSRR_BS_11         EQU  (0x00000800)
GPIO_BSRR_BS_12         EQU  (0x00001000)
GPIO_BSRR_BS_13         EQU  (0x00002000)
GPIO_BSRR_BS_14         EQU  (0x00004000)
GPIO_BSRR_BS_15         EQU  (0x00008000)

GPIO_BSRR_BR_0          EQU  (0x00010000)
GPIO_BSRR_BR_1          EQU  (0x00020000)
GPIO_BSRR_BR_2          EQU  (0x00040000)
GPIO_BSRR_BR_3          EQU  (0x00080000)
GPIO_BSRR_BR_4          EQU  (0x00100000)
GPIO_BSRR_BR_5          EQU  (0x00200000)
GPIO_BSRR_BR_6          EQU  (0x00400000)
GPIO_BSRR_BR_7          EQU  (0x00800000)
GPIO_BSRR_BR_8          EQU  (0x01000000)
GPIO_BSRR_BR_9          EQU  (0x02000000)
GPIO_BSRR_BR_10         EQU  (0x04000000)
GPIO_BSRR_BR_11         EQU  (0x08000000)
GPIO_BSRR_BR_12         EQU  (0x10000000)
GPIO_BSRR_BR_13         EQU  (0x20000000)
GPIO_BSRR_BR_14         EQU  (0x40000000)
GPIO_BSRR_BR_15         EQU  (0x80000000)


;******************  Bit definition for GPIO_LCKR register  *****************

GPIO_LCKR_0          EQU  (0x00000001)
GPIO_LCKR_1          EQU  (0x00000002)
GPIO_LCKR_2          EQU  (0x00000004)
GPIO_LCKR_3          EQU  (0x00000008)
GPIO_LCKR_4          EQU  (0x00000010)
GPIO_LCKR_5          EQU  (0x00000020)
GPIO_LCKR_6          EQU  (0x00000040)
GPIO_LCKR_7          EQU  (0x00000080)
GPIO_LCKR_8          EQU  (0x00000100)
GPIO_LCKR_9          EQU  (0x00000200)
GPIO_LCKR_10         EQU  (0x00000400)
GPIO_LCKR_11         EQU  (0x00000800)
GPIO_LCKR_12         EQU  (0x00001000)
GPIO_LCKR_13         EQU  (0x00002000)
GPIO_LCKR_14         EQU  (0x00004000)
GPIO_LCKR_15         EQU  (0x00008000)
GPIO_LCKR_K          EQU  (0x00010000)


;******************  Bit definition for GPIO_AFRL register  *****************

GPIO_AFRL_0         EQU  (0x0000000F)
GPIO_AFRL_1         EQU  (0x000000F0)
GPIO_AFRL_2         EQU  (0x00000F00)
GPIO_AFRL_3         EQU  (0x0000F000)
GPIO_AFRL_4         EQU  (0x000F0000)
GPIO_AFRL_5         EQU  (0x00F00000)
GPIO_AFRL_6         EQU  (0x0F000000)
GPIO_AFRL_7         EQU  (0xF0000000)


;******************  Bit definition for GPIO_AFRH register  *****************

GPIO_AFRH_8         EQU  (0x0000000F)
GPIO_AFRH_9         EQU  (0x000000F0)
GPIO_AFRH_10        EQU  (0x00000F00)
GPIO_AFRH_11        EQU  (0x0000F000)
GPIO_AFRH_12        EQU  (0x000F0000)
GPIO_AFRH_13        EQU  (0x00F00000)
GPIO_AFRH_14        EQU  (0x0F000000)
GPIO_AFRH_15        EQU  (0xF0000000)



;****************************************************************************
;*
;*                         BIT BANDING REGISTERS
;*
;****************************************************************************

; ---------------------- IDR ----------------------

; IDR A
_BB_GPIOA_IDR          EQU  PERIPH_BB_BASE + (GPIOA_IDR - PERIPH_BASE) * 32

BB_GPIOA_IDR_0         EQU  _BB_GPIOA_IDR + (4 * 0)
BB_GPIOA_IDR_1         EQU  _BB_GPIOA_IDR + (4 * 1)
BB_GPIOA_IDR_2         EQU  _BB_GPIOA_IDR + (4 * 2)
BB_GPIOA_IDR_3         EQU  _BB_GPIOA_IDR + (4 * 3)
BB_GPIOA_IDR_4         EQU  _BB_GPIOA_IDR + (4 * 4)
BB_GPIOA_IDR_5         EQU  _BB_GPIOA_IDR + (4 * 5)
BB_GPIOA_IDR_6         EQU  _BB_GPIOA_IDR + (4 * 6)
BB_GPIOA_IDR_7         EQU  _BB_GPIOA_IDR + (4 * 7)
BB_GPIOA_IDR_8         EQU  _BB_GPIOA_IDR + (4 * 8)
BB_GPIOA_IDR_9         EQU  _BB_GPIOA_IDR + (4 * 9)
BB_GPIOA_IDR_10        EQU  _BB_GPIOA_IDR + (4 * 10)
BB_GPIOA_IDR_11        EQU  _BB_GPIOA_IDR + (4 * 11)
BB_GPIOA_IDR_12        EQU  _BB_GPIOA_IDR + (4 * 12)
BB_GPIOA_IDR_13        EQU  _BB_GPIOA_IDR + (4 * 13)
BB_GPIOA_IDR_14        EQU  _BB_GPIOA_IDR + (4 * 14)
BB_GPIOA_IDR_15        EQU  _BB_GPIOA_IDR + (4 * 15)


; IDR B
_BB_GPIOB_IDR          EQU  PERIPH_BB_BASE + (GPIOB_IDR - PERIPH_BASE) * 32

BB_GPIOB_IDR_0         EQU  _BB_GPIOB_IDR + (4 * 0)
BB_GPIOB_IDR_1         EQU  _BB_GPIOB_IDR + (4 * 1)
BB_GPIOB_IDR_2         EQU  _BB_GPIOB_IDR + (4 * 2)
BB_GPIOB_IDR_3         EQU  _BB_GPIOB_IDR + (4 * 3)
BB_GPIOB_IDR_4         EQU  _BB_GPIOB_IDR + (4 * 4)
BB_GPIOB_IDR_5         EQU  _BB_GPIOB_IDR + (4 * 5)
BB_GPIOB_IDR_6         EQU  _BB_GPIOB_IDR + (4 * 6)
BB_GPIOB_IDR_7         EQU  _BB_GPIOB_IDR + (4 * 7)
BB_GPIOB_IDR_8         EQU  _BB_GPIOB_IDR + (4 * 8)
BB_GPIOB_IDR_9         EQU  _BB_GPIOB_IDR + (4 * 9)
BB_GPIOB_IDR_10        EQU  _BB_GPIOB_IDR + (4 * 10)
BB_GPIOB_IDR_11        EQU  _BB_GPIOB_IDR + (4 * 11)
BB_GPIOB_IDR_12        EQU  _BB_GPIOB_IDR + (4 * 12)
BB_GPIOB_IDR_13        EQU  _BB_GPIOB_IDR + (4 * 13)
BB_GPIOB_IDR_14        EQU  _BB_GPIOB_IDR + (4 * 14)
BB_GPIOB_IDR_15        EQU  _BB_GPIOB_IDR + (4 * 15)


; IDR C
_BB_GPIOC_IDR          EQU  PERIPH_BB_BASE + (GPIOC_IDR - PERIPH_BASE) * 32

BB_GPIOC_IDR_0         EQU  _BB_GPIOC_IDR + (4 * 0)
BB_GPIOC_IDR_1         EQU  _BB_GPIOC_IDR + (4 * 1)
BB_GPIOC_IDR_2         EQU  _BB_GPIOC_IDR + (4 * 2)
BB_GPIOC_IDR_3         EQU  _BB_GPIOC_IDR + (4 * 3)
BB_GPIOC_IDR_4         EQU  _BB_GPIOC_IDR + (4 * 4)
BB_GPIOC_IDR_5         EQU  _BB_GPIOC_IDR + (4 * 5)
BB_GPIOC_IDR_6         EQU  _BB_GPIOC_IDR + (4 * 6)
BB_GPIOC_IDR_7         EQU  _BB_GPIOC_IDR + (4 * 7)
BB_GPIOC_IDR_8         EQU  _BB_GPIOC_IDR + (4 * 8)
BB_GPIOC_IDR_9         EQU  _BB_GPIOC_IDR + (4 * 9)
BB_GPIOC_IDR_10        EQU  _BB_GPIOC_IDR + (4 * 10)
BB_GPIOC_IDR_11        EQU  _BB_GPIOC_IDR + (4 * 11)
BB_GPIOC_IDR_12        EQU  _BB_GPIOC_IDR + (4 * 12)
BB_GPIOC_IDR_13        EQU  _BB_GPIOC_IDR + (4 * 13)
BB_GPIOC_IDR_14        EQU  _BB_GPIOC_IDR + (4 * 14)
BB_GPIOC_IDR_15        EQU  _BB_GPIOC_IDR + (4 * 15)



; IDR D
_BB_GPIOD_IDR          EQU  PERIPH_BB_BASE + (GPIOD_IDR - PERIPH_BASE) * 32

BB_GPIOD_IDR_0         EQU  _BB_GPIOD_IDR + (4 * 0)
BB_GPIOD_IDR_1         EQU  _BB_GPIOD_IDR + (4 * 1)
BB_GPIOD_IDR_2         EQU  _BB_GPIOD_IDR + (4 * 2)
BB_GPIOD_IDR_3         EQU  _BB_GPIOD_IDR + (4 * 3)
BB_GPIOD_IDR_4         EQU  _BB_GPIOD_IDR + (4 * 4)
BB_GPIOD_IDR_5         EQU  _BB_GPIOD_IDR + (4 * 5)
BB_GPIOD_IDR_6         EQU  _BB_GPIOD_IDR + (4 * 6)
BB_GPIOD_IDR_7         EQU  _BB_GPIOD_IDR + (4 * 7)
BB_GPIOD_IDR_8         EQU  _BB_GPIOD_IDR + (4 * 8)
BB_GPIOD_IDR_9         EQU  _BB_GPIOD_IDR + (4 * 9)
BB_GPIOD_IDR_10        EQU  _BB_GPIOD_IDR + (4 * 10)
BB_GPIOD_IDR_11        EQU  _BB_GPIOD_IDR + (4 * 11)
BB_GPIOD_IDR_12        EQU  _BB_GPIOD_IDR + (4 * 12)
BB_GPIOD_IDR_13        EQU  _BB_GPIOD_IDR + (4 * 13)
BB_GPIOD_IDR_14        EQU  _BB_GPIOD_IDR + (4 * 14)
BB_GPIOD_IDR_15        EQU  _BB_GPIOD_IDR + (4 * 15)


; IDR E
_BB_GPIOE_IDR          EQU  PERIPH_BB_BASE + (GPIOE_IDR - PERIPH_BASE) * 32

BB_GPIOE_IDR_0         EQU  _BB_GPIOE_IDR + (4 * 0)
BB_GPIOE_IDR_1         EQU  _BB_GPIOE_IDR + (4 * 1)
BB_GPIOE_IDR_2         EQU  _BB_GPIOE_IDR + (4 * 2)
BB_GPIOE_IDR_3         EQU  _BB_GPIOE_IDR + (4 * 3)
BB_GPIOE_IDR_4         EQU  _BB_GPIOE_IDR + (4 * 4)
BB_GPIOE_IDR_5         EQU  _BB_GPIOE_IDR + (4 * 5)
BB_GPIOE_IDR_6         EQU  _BB_GPIOE_IDR + (4 * 6)
BB_GPIOE_IDR_7         EQU  _BB_GPIOE_IDR + (4 * 7)
BB_GPIOE_IDR_8         EQU  _BB_GPIOE_IDR + (4 * 8)
BB_GPIOE_IDR_9         EQU  _BB_GPIOE_IDR + (4 * 9)
BB_GPIOE_IDR_10        EQU  _BB_GPIOE_IDR + (4 * 10)
BB_GPIOE_IDR_11        EQU  _BB_GPIOE_IDR + (4 * 11)
BB_GPIOE_IDR_12        EQU  _BB_GPIOE_IDR + (4 * 12)
BB_GPIOE_IDR_13        EQU  _BB_GPIOE_IDR + (4 * 13)
BB_GPIOE_IDR_14        EQU  _BB_GPIOE_IDR + (4 * 14)
BB_GPIOE_IDR_15        EQU  _BB_GPIOE_IDR + (4 * 15)


; IDR F
_BB_GPIOF_IDR          EQU  PERIPH_BB_BASE + (GPIOF_IDR - PERIPH_BASE) * 32

BB_GPIOF_IDR_0         EQU  _BB_GPIOF_IDR + (4 * 0)
BB_GPIOF_IDR_1         EQU  _BB_GPIOF_IDR + (4 * 1)
BB_GPIOF_IDR_2         EQU  _BB_GPIOF_IDR + (4 * 2)
BB_GPIOF_IDR_3         EQU  _BB_GPIOF_IDR + (4 * 3)
BB_GPIOF_IDR_4         EQU  _BB_GPIOF_IDR + (4 * 4)
BB_GPIOF_IDR_5         EQU  _BB_GPIOF_IDR + (4 * 5)
BB_GPIOF_IDR_6         EQU  _BB_GPIOF_IDR + (4 * 6)
BB_GPIOF_IDR_7         EQU  _BB_GPIOF_IDR + (4 * 7)
BB_GPIOF_IDR_8         EQU  _BB_GPIOF_IDR + (4 * 8)
BB_GPIOF_IDR_9         EQU  _BB_GPIOF_IDR + (4 * 9)
BB_GPIOF_IDR_10        EQU  _BB_GPIOF_IDR + (4 * 10)
BB_GPIOF_IDR_11        EQU  _BB_GPIOF_IDR + (4 * 11)
BB_GPIOF_IDR_12        EQU  _BB_GPIOF_IDR + (4 * 12)
BB_GPIOF_IDR_13        EQU  _BB_GPIOF_IDR + (4 * 13)
BB_GPIOF_IDR_14        EQU  _BB_GPIOF_IDR + (4 * 14)
BB_GPIOF_IDR_15        EQU  _BB_GPIOF_IDR + (4 * 15)


; IDR G
_BB_GPIOG_IDR          EQU  PERIPH_BB_BASE + (GPIOG_IDR - PERIPH_BASE) * 32

BB_GPIOG_IDR_0         EQU  _BB_GPIOG_IDR + (4 * 0)
BB_GPIOG_IDR_1         EQU  _BB_GPIOG_IDR + (4 * 1)
BB_GPIOG_IDR_2         EQU  _BB_GPIOG_IDR + (4 * 2)
BB_GPIOG_IDR_3         EQU  _BB_GPIOG_IDR + (4 * 3)
BB_GPIOG_IDR_4         EQU  _BB_GPIOG_IDR + (4 * 4)
BB_GPIOG_IDR_5         EQU  _BB_GPIOG_IDR + (4 * 5)
BB_GPIOG_IDR_6         EQU  _BB_GPIOG_IDR + (4 * 6)
BB_GPIOG_IDR_7         EQU  _BB_GPIOG_IDR + (4 * 7)
BB_GPIOG_IDR_8         EQU  _BB_GPIOG_IDR + (4 * 8)
BB_GPIOG_IDR_9         EQU  _BB_GPIOG_IDR + (4 * 9)
BB_GPIOG_IDR_10        EQU  _BB_GPIOG_IDR + (4 * 10)
BB_GPIOG_IDR_11        EQU  _BB_GPIOG_IDR + (4 * 11)
BB_GPIOG_IDR_12        EQU  _BB_GPIOG_IDR + (4 * 12)
BB_GPIOG_IDR_13        EQU  _BB_GPIOG_IDR + (4 * 13)
BB_GPIOG_IDR_14        EQU  _BB_GPIOG_IDR + (4 * 14)
BB_GPIOG_IDR_15        EQU  _BB_GPIOG_IDR + (4 * 15)


; IDR H
_BB_GPIOH_IDR          EQU  PERIPH_BB_BASE + (GPIOH_IDR - PERIPH_BASE) * 32

BB_GPIOH_IDR_0         EQU  _BB_GPIOH_IDR + (4 * 0)
BB_GPIOH_IDR_1         EQU  _BB_GPIOH_IDR + (4 * 1)
BB_GPIOH_IDR_2         EQU  _BB_GPIOH_IDR + (4 * 2)
BB_GPIOH_IDR_3         EQU  _BB_GPIOH_IDR + (4 * 3)
BB_GPIOH_IDR_4         EQU  _BB_GPIOH_IDR + (4 * 4)
BB_GPIOH_IDR_5         EQU  _BB_GPIOH_IDR + (4 * 5)
BB_GPIOH_IDR_6         EQU  _BB_GPIOH_IDR + (4 * 6)
BB_GPIOH_IDR_7         EQU  _BB_GPIOH_IDR + (4 * 7)
BB_GPIOH_IDR_8         EQU  _BB_GPIOH_IDR + (4 * 8)
BB_GPIOH_IDR_9         EQU  _BB_GPIOH_IDR + (4 * 9)
BB_GPIOH_IDR_10        EQU  _BB_GPIOH_IDR + (4 * 10)
BB_GPIOH_IDR_11        EQU  _BB_GPIOH_IDR + (4 * 11)
BB_GPIOH_IDR_12        EQU  _BB_GPIOH_IDR + (4 * 12)
BB_GPIOH_IDR_13        EQU  _BB_GPIOH_IDR + (4 * 13)
BB_GPIOH_IDR_14        EQU  _BB_GPIOH_IDR + (4 * 14)
BB_GPIOH_IDR_15        EQU  _BB_GPIOH_IDR + (4 * 15)


; ------------------ ODR ---------------------


; ODR A
_BB_GPIOA_ODR          EQU  PERIPH_BB_BASE + (GPIOA_ODR - PERIPH_BASE) * 32

BB_GPIOA_ODR_0         EQU  _BB_GPIOA_ODR + (4 * 0)
BB_GPIOA_ODR_1         EQU  _BB_GPIOA_ODR + (4 * 1)
BB_GPIOA_ODR_2         EQU  _BB_GPIOA_ODR + (4 * 2)
BB_GPIOA_ODR_3         EQU  _BB_GPIOA_ODR + (4 * 3)
BB_GPIOA_ODR_4         EQU  _BB_GPIOA_ODR + (4 * 4)
BB_GPIOA_ODR_5         EQU  _BB_GPIOA_ODR + (4 * 5)
BB_GPIOA_ODR_6         EQU  _BB_GPIOA_ODR + (4 * 6)
BB_GPIOA_ODR_7         EQU  _BB_GPIOA_ODR + (4 * 7)
BB_GPIOA_ODR_8         EQU  _BB_GPIOA_ODR + (4 * 8)
BB_GPIOA_ODR_9         EQU  _BB_GPIOA_ODR + (4 * 9)
BB_GPIOA_ODR_10        EQU  _BB_GPIOA_ODR + (4 * 10)
BB_GPIOA_ODR_11        EQU  _BB_GPIOA_ODR + (4 * 11)
BB_GPIOA_ODR_12        EQU  _BB_GPIOA_ODR + (4 * 12)
BB_GPIOA_ODR_13        EQU  _BB_GPIOA_ODR + (4 * 13)
BB_GPIOA_ODR_14        EQU  _BB_GPIOA_ODR + (4 * 14)
BB_GPIOA_ODR_15        EQU  _BB_GPIOA_ODR + (4 * 15)


; ODR B
_BB_GPIOB_ODR          EQU  PERIPH_BB_BASE + (GPIOB_ODR - PERIPH_BASE) * 32

BB_GPIOB_ODR_0         EQU  _BB_GPIOB_ODR + (4 * 0)
BB_GPIOB_ODR_1         EQU  _BB_GPIOB_ODR + (4 * 1)
BB_GPIOB_ODR_2         EQU  _BB_GPIOB_ODR + (4 * 2)
BB_GPIOB_ODR_3         EQU  _BB_GPIOB_ODR + (4 * 3)
BB_GPIOB_ODR_4         EQU  _BB_GPIOB_ODR + (4 * 4)
BB_GPIOB_ODR_5         EQU  _BB_GPIOB_ODR + (4 * 5)
BB_GPIOB_ODR_6         EQU  _BB_GPIOB_ODR + (4 * 6)
BB_GPIOB_ODR_7         EQU  _BB_GPIOB_ODR + (4 * 7)
BB_GPIOB_ODR_8         EQU  _BB_GPIOB_ODR + (4 * 8)
BB_GPIOB_ODR_9         EQU  _BB_GPIOB_ODR + (4 * 9)
BB_GPIOB_ODR_10        EQU  _BB_GPIOB_ODR + (4 * 10)
BB_GPIOB_ODR_11        EQU  _BB_GPIOB_ODR + (4 * 11)
BB_GPIOB_ODR_12        EQU  _BB_GPIOB_ODR + (4 * 12)
BB_GPIOB_ODR_13        EQU  _BB_GPIOB_ODR + (4 * 13)
BB_GPIOB_ODR_14        EQU  _BB_GPIOB_ODR + (4 * 14)
BB_GPIOB_ODR_15        EQU  _BB_GPIOB_ODR + (4 * 15)


; ODR C
_BB_GPIOC_ODR          EQU  PERIPH_BB_BASE + (GPIOC_ODR - PERIPH_BASE) * 32

BB_GPIOC_ODR_0         EQU  _BB_GPIOC_ODR + (4 * 0)
BB_GPIOC_ODR_1         EQU  _BB_GPIOC_ODR + (4 * 1)
BB_GPIOC_ODR_2         EQU  _BB_GPIOC_ODR + (4 * 2)
BB_GPIOC_ODR_3         EQU  _BB_GPIOC_ODR + (4 * 3)
BB_GPIOC_ODR_4         EQU  _BB_GPIOC_ODR + (4 * 4)
BB_GPIOC_ODR_5         EQU  _BB_GPIOC_ODR + (4 * 5)
BB_GPIOC_ODR_6         EQU  _BB_GPIOC_ODR + (4 * 6)
BB_GPIOC_ODR_7         EQU  _BB_GPIOC_ODR + (4 * 7)
BB_GPIOC_ODR_8         EQU  _BB_GPIOC_ODR + (4 * 8)
BB_GPIOC_ODR_9         EQU  _BB_GPIOC_ODR + (4 * 9)
BB_GPIOC_ODR_10        EQU  _BB_GPIOC_ODR + (4 * 10)
BB_GPIOC_ODR_11        EQU  _BB_GPIOC_ODR + (4 * 11)
BB_GPIOC_ODR_12        EQU  _BB_GPIOC_ODR + (4 * 12)
BB_GPIOC_ODR_13        EQU  _BB_GPIOC_ODR + (4 * 13)
BB_GPIOC_ODR_14        EQU  _BB_GPIOC_ODR + (4 * 14)
BB_GPIOC_ODR_15        EQU  _BB_GPIOC_ODR + (4 * 15)



; ODR D
_BB_GPIOD_ODR          EQU  PERIPH_BB_BASE + (GPIOD_ODR - PERIPH_BASE) * 32

BB_GPIOD_ODR_0         EQU  _BB_GPIOD_ODR + (4 * 0)
BB_GPIOD_ODR_1         EQU  _BB_GPIOD_ODR + (4 * 1)
BB_GPIOD_ODR_2         EQU  _BB_GPIOD_ODR + (4 * 2)
BB_GPIOD_ODR_3         EQU  _BB_GPIOD_ODR + (4 * 3)
BB_GPIOD_ODR_4         EQU  _BB_GPIOD_ODR + (4 * 4)
BB_GPIOD_ODR_5         EQU  _BB_GPIOD_ODR + (4 * 5)
BB_GPIOD_ODR_6         EQU  _BB_GPIOD_ODR + (4 * 6)
BB_GPIOD_ODR_7         EQU  _BB_GPIOD_ODR + (4 * 7)
BB_GPIOD_ODR_8         EQU  _BB_GPIOD_ODR + (4 * 8)
BB_GPIOD_ODR_9         EQU  _BB_GPIOD_ODR + (4 * 9)
BB_GPIOD_ODR_10        EQU  _BB_GPIOD_ODR + (4 * 10)
BB_GPIOD_ODR_11        EQU  _BB_GPIOD_ODR + (4 * 11)
BB_GPIOD_ODR_12        EQU  _BB_GPIOD_ODR + (4 * 12)
BB_GPIOD_ODR_13        EQU  _BB_GPIOD_ODR + (4 * 13)
BB_GPIOD_ODR_14        EQU  _BB_GPIOD_ODR + (4 * 14)
BB_GPIOD_ODR_15        EQU  _BB_GPIOD_ODR + (4 * 15)


; ODR E
_BB_GPIOE_ODR          EQU  PERIPH_BB_BASE + (GPIOE_ODR - PERIPH_BASE) * 32

BB_GPIOE_ODR_0         EQU  _BB_GPIOE_ODR + (4 * 0)
BB_GPIOE_ODR_1         EQU  _BB_GPIOE_ODR + (4 * 1)
BB_GPIOE_ODR_2         EQU  _BB_GPIOE_ODR + (4 * 2)
BB_GPIOE_ODR_3         EQU  _BB_GPIOE_ODR + (4 * 3)
BB_GPIOE_ODR_4         EQU  _BB_GPIOE_ODR + (4 * 4)
BB_GPIOE_ODR_5         EQU  _BB_GPIOE_ODR + (4 * 5)
BB_GPIOE_ODR_6         EQU  _BB_GPIOE_ODR + (4 * 6)
BB_GPIOE_ODR_7         EQU  _BB_GPIOE_ODR + (4 * 7)
BB_GPIOE_ODR_8         EQU  _BB_GPIOE_ODR + (4 * 8)
BB_GPIOE_ODR_9         EQU  _BB_GPIOE_ODR + (4 * 9)
BB_GPIOE_ODR_10        EQU  _BB_GPIOE_ODR + (4 * 10)
BB_GPIOE_ODR_11        EQU  _BB_GPIOE_ODR + (4 * 11)
BB_GPIOE_ODR_12        EQU  _BB_GPIOE_ODR + (4 * 12)
BB_GPIOE_ODR_13        EQU  _BB_GPIOE_ODR + (4 * 13)
BB_GPIOE_ODR_14        EQU  _BB_GPIOE_ODR + (4 * 14)
BB_GPIOE_ODR_15        EQU  _BB_GPIOE_ODR + (4 * 15)


; ODR F
_BB_GPIOF_ODR          EQU  PERIPH_BB_BASE + (GPIOF_ODR - PERIPH_BASE) * 32

BB_GPIOF_ODR_0         EQU  _BB_GPIOF_ODR + (4 * 0)
BB_GPIOF_ODR_1         EQU  _BB_GPIOF_ODR + (4 * 1)
BB_GPIOF_ODR_2         EQU  _BB_GPIOF_ODR + (4 * 2)
BB_GPIOF_ODR_3         EQU  _BB_GPIOF_ODR + (4 * 3)
BB_GPIOF_ODR_4         EQU  _BB_GPIOF_ODR + (4 * 4)
BB_GPIOF_ODR_5         EQU  _BB_GPIOF_ODR + (4 * 5)
BB_GPIOF_ODR_6         EQU  _BB_GPIOF_ODR + (4 * 6)
BB_GPIOF_ODR_7         EQU  _BB_GPIOF_ODR + (4 * 7)
BB_GPIOF_ODR_8         EQU  _BB_GPIOF_ODR + (4 * 8)
BB_GPIOF_ODR_9         EQU  _BB_GPIOF_ODR + (4 * 9)
BB_GPIOF_ODR_10        EQU  _BB_GPIOF_ODR + (4 * 10)
BB_GPIOF_ODR_11        EQU  _BB_GPIOF_ODR + (4 * 11)
BB_GPIOF_ODR_12        EQU  _BB_GPIOF_ODR + (4 * 12)
BB_GPIOF_ODR_13        EQU  _BB_GPIOF_ODR + (4 * 13)
BB_GPIOF_ODR_14        EQU  _BB_GPIOF_ODR + (4 * 14)
BB_GPIOF_ODR_15        EQU  _BB_GPIOF_ODR + (4 * 15)


; ODR G
_BB_GPIOG_ODR          EQU  PERIPH_BB_BASE + (GPIOG_ODR - PERIPH_BASE) * 32

BB_GPIOG_ODR_0         EQU  _BB_GPIOG_ODR + (4 * 0)
BB_GPIOG_ODR_1         EQU  _BB_GPIOG_ODR + (4 * 1)
BB_GPIOG_ODR_2         EQU  _BB_GPIOG_ODR + (4 * 2)
BB_GPIOG_ODR_3         EQU  _BB_GPIOG_ODR + (4 * 3)
BB_GPIOG_ODR_4         EQU  _BB_GPIOG_ODR + (4 * 4)
BB_GPIOG_ODR_5         EQU  _BB_GPIOG_ODR + (4 * 5)
BB_GPIOG_ODR_6         EQU  _BB_GPIOG_ODR + (4 * 6)
BB_GPIOG_ODR_7         EQU  _BB_GPIOG_ODR + (4 * 7)
BB_GPIOG_ODR_8         EQU  _BB_GPIOG_ODR + (4 * 8)
BB_GPIOG_ODR_9         EQU  _BB_GPIOG_ODR + (4 * 9)
BB_GPIOG_ODR_10        EQU  _BB_GPIOG_ODR + (4 * 10)
BB_GPIOG_ODR_11        EQU  _BB_GPIOG_ODR + (4 * 11)
BB_GPIOG_ODR_12        EQU  _BB_GPIOG_ODR + (4 * 12)
BB_GPIOG_ODR_13        EQU  _BB_GPIOG_ODR + (4 * 13)
BB_GPIOG_ODR_14        EQU  _BB_GPIOG_ODR + (4 * 14)
BB_GPIOG_ODR_15        EQU  _BB_GPIOG_ODR + (4 * 15)


; ODR H
_BB_GPIOH_ODR          EQU  PERIPH_BB_BASE + (GPIOH_ODR - PERIPH_BASE) * 32

BB_GPIOH_ODR_0         EQU  _BB_GPIOH_ODR + (4 * 0)
BB_GPIOH_ODR_1         EQU  _BB_GPIOH_ODR + (4 * 1)
BB_GPIOH_ODR_2         EQU  _BB_GPIOH_ODR + (4 * 2)
BB_GPIOH_ODR_3         EQU  _BB_GPIOH_ODR + (4 * 3)
BB_GPIOH_ODR_4         EQU  _BB_GPIOH_ODR + (4 * 4)
BB_GPIOH_ODR_5         EQU  _BB_GPIOH_ODR + (4 * 5)
BB_GPIOH_ODR_6         EQU  _BB_GPIOH_ODR + (4 * 6)
BB_GPIOH_ODR_7         EQU  _BB_GPIOH_ODR + (4 * 7)
BB_GPIOH_ODR_8         EQU  _BB_GPIOH_ODR + (4 * 8)
BB_GPIOH_ODR_9         EQU  _BB_GPIOH_ODR + (4 * 9)
BB_GPIOH_ODR_10        EQU  _BB_GPIOH_ODR + (4 * 10)
BB_GPIOH_ODR_11        EQU  _BB_GPIOH_ODR + (4 * 11)
BB_GPIOH_ODR_12        EQU  _BB_GPIOH_ODR + (4 * 12)
BB_GPIOH_ODR_13        EQU  _BB_GPIOH_ODR + (4 * 13)
BB_GPIOH_ODR_14        EQU  _BB_GPIOH_ODR + (4 * 14)
BB_GPIOH_ODR_15        EQU  _BB_GPIOH_ODR + (4 * 15)


; ---------------------- LCKR ---------------------------

; LCKR A
_BB_GPIOA_LCKR          EQU  PERIPH_BB_BASE + (GPIOA_LCKR - PERIPH_BASE) * 32

BB_GPIOA_LCKR_0         EQU  _BB_GPIOA_LCKR + (4 * 0)
BB_GPIOA_LCKR_1         EQU  _BB_GPIOA_LCKR + (4 * 1)
BB_GPIOA_LCKR_2         EQU  _BB_GPIOA_LCKR + (4 * 2)
BB_GPIOA_LCKR_3         EQU  _BB_GPIOA_LCKR + (4 * 3)
BB_GPIOA_LCKR_4         EQU  _BB_GPIOA_LCKR + (4 * 4)
BB_GPIOA_LCKR_5         EQU  _BB_GPIOA_LCKR + (4 * 5)
BB_GPIOA_LCKR_6         EQU  _BB_GPIOA_LCKR + (4 * 6)
BB_GPIOA_LCKR_7         EQU  _BB_GPIOA_LCKR + (4 * 7)
BB_GPIOA_LCKR_8         EQU  _BB_GPIOA_LCKR + (4 * 8)
BB_GPIOA_LCKR_9         EQU  _BB_GPIOA_LCKR + (4 * 9)
BB_GPIOA_LCKR_10        EQU  _BB_GPIOA_LCKR + (4 * 10)
BB_GPIOA_LCKR_11        EQU  _BB_GPIOA_LCKR + (4 * 11)
BB_GPIOA_LCKR_12        EQU  _BB_GPIOA_LCKR + (4 * 12)
BB_GPIOA_LCKR_13        EQU  _BB_GPIOA_LCKR + (4 * 13)
BB_GPIOA_LCKR_14        EQU  _BB_GPIOA_LCKR + (4 * 14)
BB_GPIOA_LCKR_15        EQU  _BB_GPIOA_LCKR + (4 * 15)
BB_GPIOA_LCKR_K         EQU  _BB_GPIOA_LCKR + (4 * 16); Lock key bit


; LCKR B
_BB_GPIOB_LCKR          EQU  PERIPH_BB_BASE + (GPIOB_LCKR - PERIPH_BASE) * 32

BB_GPIOB_LCKR_0         EQU  _BB_GPIOB_LCKR + (4 * 0)
BB_GPIOB_LCKR_1         EQU  _BB_GPIOB_LCKR + (4 * 1)
BB_GPIOB_LCKR_2         EQU  _BB_GPIOB_LCKR + (4 * 2)
BB_GPIOB_LCKR_3         EQU  _BB_GPIOB_LCKR + (4 * 3)
BB_GPIOB_LCKR_4         EQU  _BB_GPIOB_LCKR + (4 * 4)
BB_GPIOB_LCKR_5         EQU  _BB_GPIOB_LCKR + (4 * 5)
BB_GPIOB_LCKR_6         EQU  _BB_GPIOB_LCKR + (4 * 6)
BB_GPIOB_LCKR_7         EQU  _BB_GPIOB_LCKR + (4 * 7)
BB_GPIOB_LCKR_8         EQU  _BB_GPIOB_LCKR + (4 * 8)
BB_GPIOB_LCKR_9         EQU  _BB_GPIOB_LCKR + (4 * 9)
BB_GPIOB_LCKR_10        EQU  _BB_GPIOB_LCKR + (4 * 10)
BB_GPIOB_LCKR_11        EQU  _BB_GPIOB_LCKR + (4 * 11)
BB_GPIOB_LCKR_12        EQU  _BB_GPIOB_LCKR + (4 * 12)
BB_GPIOB_LCKR_13        EQU  _BB_GPIOB_LCKR + (4 * 13)
BB_GPIOB_LCKR_14        EQU  _BB_GPIOB_LCKR + (4 * 14)
BB_GPIOB_LCKR_15        EQU  _BB_GPIOB_LCKR + (4 * 15)
BB_GPIOB_LCKR_K         EQU  _BB_GPIOB_LCKR + (4 * 16); Lock key bit


; LCKR C
_BB_GPIOC_LCKR          EQU  PERIPH_BB_BASE + (GPIOC_LCKR - PERIPH_BASE) * 32

BB_GPIOC_LCKR_0         EQU  _BB_GPIOC_LCKR + (4 * 0)
BB_GPIOC_LCKR_1         EQU  _BB_GPIOC_LCKR + (4 * 1)
BB_GPIOC_LCKR_2         EQU  _BB_GPIOC_LCKR + (4 * 2)
BB_GPIOC_LCKR_3         EQU  _BB_GPIOC_LCKR + (4 * 3)
BB_GPIOC_LCKR_4         EQU  _BB_GPIOC_LCKR + (4 * 4)
BB_GPIOC_LCKR_5         EQU  _BB_GPIOC_LCKR + (4 * 5)
BB_GPIOC_LCKR_6         EQU  _BB_GPIOC_LCKR + (4 * 6)
BB_GPIOC_LCKR_7         EQU  _BB_GPIOC_LCKR + (4 * 7)
BB_GPIOC_LCKR_8         EQU  _BB_GPIOC_LCKR + (4 * 8)
BB_GPIOC_LCKR_9         EQU  _BB_GPIOC_LCKR + (4 * 9)
BB_GPIOC_LCKR_10        EQU  _BB_GPIOC_LCKR + (4 * 10)
BB_GPIOC_LCKR_11        EQU  _BB_GPIOC_LCKR + (4 * 11)
BB_GPIOC_LCKR_12        EQU  _BB_GPIOC_LCKR + (4 * 12)
BB_GPIOC_LCKR_13        EQU  _BB_GPIOC_LCKR + (4 * 13)
BB_GPIOC_LCKR_14        EQU  _BB_GPIOC_LCKR + (4 * 14)
BB_GPIOC_LCKR_15        EQU  _BB_GPIOC_LCKR + (4 * 15)
BB_GPIOC_LCKR_K         EQU  _BB_GPIOC_LCKR + (4 * 16); Lock key bit


; LCKR D
_BB_GPIOD_LCKR          EQU  PERIPH_BB_BASE + (GPIOD_LCKR - PERIPH_BASE) * 32

BB_GPIOD_LCKR_0         EQU  _BB_GPIOD_LCKR + (4 * 0)
BB_GPIOD_LCKR_1         EQU  _BB_GPIOD_LCKR + (4 * 1)
BB_GPIOD_LCKR_2         EQU  _BB_GPIOD_LCKR + (4 * 2)
BB_GPIOD_LCKR_3         EQU  _BB_GPIOD_LCKR + (4 * 3)
BB_GPIOD_LCKR_4         EQU  _BB_GPIOD_LCKR + (4 * 4)
BB_GPIOD_LCKR_5         EQU  _BB_GPIOD_LCKR + (4 * 5)
BB_GPIOD_LCKR_6         EQU  _BB_GPIOD_LCKR + (4 * 6)
BB_GPIOD_LCKR_7         EQU  _BB_GPIOD_LCKR + (4 * 7)
BB_GPIOD_LCKR_8         EQU  _BB_GPIOD_LCKR + (4 * 8)
BB_GPIOD_LCKR_9         EQU  _BB_GPIOD_LCKR + (4 * 9)
BB_GPIOD_LCKR_10        EQU  _BB_GPIOD_LCKR + (4 * 10)
BB_GPIOD_LCKR_11        EQU  _BB_GPIOD_LCKR + (4 * 11)
BB_GPIOD_LCKR_12        EQU  _BB_GPIOD_LCKR + (4 * 12)
BB_GPIOD_LCKR_13        EQU  _BB_GPIOD_LCKR + (4 * 13)
BB_GPIOD_LCKR_14        EQU  _BB_GPIOD_LCKR + (4 * 14)
BB_GPIOD_LCKR_15        EQU  _BB_GPIOD_LCKR + (4 * 15)
BB_GPIOD_LCKR_K         EQU  _BB_GPIOD_LCKR + (4 * 16); Lock key bit


; LCKR E
_BB_GPIOE_LCKR          EQU  PERIPH_BB_BASE + (GPIOE_LCKR - PERIPH_BASE) * 32

BB_GPIOE_LCKR_0         EQU  _BB_GPIOE_LCKR + (4 * 0)
BB_GPIOE_LCKR_1         EQU  _BB_GPIOE_LCKR + (4 * 1)
BB_GPIOE_LCKR_2         EQU  _BB_GPIOE_LCKR + (4 * 2)
BB_GPIOE_LCKR_3         EQU  _BB_GPIOE_LCKR + (4 * 3)
BB_GPIOE_LCKR_4         EQU  _BB_GPIOE_LCKR + (4 * 4)
BB_GPIOE_LCKR_5         EQU  _BB_GPIOE_LCKR + (4 * 5)
BB_GPIOE_LCKR_6         EQU  _BB_GPIOE_LCKR + (4 * 6)
BB_GPIOE_LCKR_7         EQU  _BB_GPIOE_LCKR + (4 * 7)
BB_GPIOE_LCKR_8         EQU  _BB_GPIOE_LCKR + (4 * 8)
BB_GPIOE_LCKR_9         EQU  _BB_GPIOE_LCKR + (4 * 9)
BB_GPIOE_LCKR_10        EQU  _BB_GPIOE_LCKR + (4 * 10)
BB_GPIOE_LCKR_11        EQU  _BB_GPIOE_LCKR + (4 * 11)
BB_GPIOE_LCKR_12        EQU  _BB_GPIOE_LCKR + (4 * 12)
BB_GPIOE_LCKR_13        EQU  _BB_GPIOE_LCKR + (4 * 13)
BB_GPIOE_LCKR_14        EQU  _BB_GPIOE_LCKR + (4 * 14)
BB_GPIOE_LCKR_15        EQU  _BB_GPIOE_LCKR + (4 * 15)
BB_GPIOE_LCKR_K         EQU  _BB_GPIOE_LCKR + (4 * 16); Lock key bit


; LCKR F
_BB_GPIOF_LCKR          EQU  PERIPH_BB_BASE + (GPIOF_LCKR - PERIPH_BASE) * 32

BB_GPIOF_LCKR_0         EQU  _BB_GPIOF_LCKR + (4 * 0)
BB_GPIOF_LCKR_1         EQU  _BB_GPIOF_LCKR + (4 * 1)
BB_GPIOF_LCKR_2         EQU  _BB_GPIOF_LCKR + (4 * 2)
BB_GPIOF_LCKR_3         EQU  _BB_GPIOF_LCKR + (4 * 3)
BB_GPIOF_LCKR_4         EQU  _BB_GPIOF_LCKR + (4 * 4)
BB_GPIOF_LCKR_5         EQU  _BB_GPIOF_LCKR + (4 * 5)
BB_GPIOF_LCKR_6         EQU  _BB_GPIOF_LCKR + (4 * 6)
BB_GPIOF_LCKR_7         EQU  _BB_GPIOF_LCKR + (4 * 7)
BB_GPIOF_LCKR_8         EQU  _BB_GPIOF_LCKR + (4 * 8)
BB_GPIOF_LCKR_9         EQU  _BB_GPIOF_LCKR + (4 * 9)
BB_GPIOF_LCKR_10        EQU  _BB_GPIOF_LCKR + (4 * 10)
BB_GPIOF_LCKR_11        EQU  _BB_GPIOF_LCKR + (4 * 11)
BB_GPIOF_LCKR_12        EQU  _BB_GPIOF_LCKR + (4 * 12)
BB_GPIOF_LCKR_13        EQU  _BB_GPIOF_LCKR + (4 * 13)
BB_GPIOF_LCKR_14        EQU  _BB_GPIOF_LCKR + (4 * 14)
BB_GPIOF_LCKR_15        EQU  _BB_GPIOF_LCKR + (4 * 15)
BB_GPIOF_LCKR_K         EQU  _BB_GPIOF_LCKR + (4 * 16); Lock key bit


; LCKR G
_BB_GPIOG_LCKR          EQU  PERIPH_BB_BASE + (GPIOG_LCKR - PERIPH_BASE) * 32

BB_GPIOG_LCKR_0         EQU  _BB_GPIOG_LCKR + (4 * 0)
BB_GPIOG_LCKR_1         EQU  _BB_GPIOG_LCKR + (4 * 1)
BB_GPIOG_LCKR_2         EQU  _BB_GPIOG_LCKR + (4 * 2)
BB_GPIOG_LCKR_3         EQU  _BB_GPIOG_LCKR + (4 * 3)
BB_GPIOG_LCKR_4         EQU  _BB_GPIOG_LCKR + (4 * 4)
BB_GPIOG_LCKR_5         EQU  _BB_GPIOG_LCKR + (4 * 5)
BB_GPIOG_LCKR_6         EQU  _BB_GPIOG_LCKR + (4 * 6)
BB_GPIOG_LCKR_7         EQU  _BB_GPIOG_LCKR + (4 * 7)
BB_GPIOG_LCKR_8         EQU  _BB_GPIOG_LCKR + (4 * 8)
BB_GPIOG_LCKR_9         EQU  _BB_GPIOG_LCKR + (4 * 9)
BB_GPIOG_LCKR_10        EQU  _BB_GPIOG_LCKR + (4 * 10)
BB_GPIOG_LCKR_11        EQU  _BB_GPIOG_LCKR + (4 * 11)
BB_GPIOG_LCKR_12        EQU  _BB_GPIOG_LCKR + (4 * 12)
BB_GPIOG_LCKR_13        EQU  _BB_GPIOG_LCKR + (4 * 13)
BB_GPIOG_LCKR_14        EQU  _BB_GPIOG_LCKR + (4 * 14)
BB_GPIOG_LCKR_15        EQU  _BB_GPIOG_LCKR + (4 * 15)
BB_GPIOG_LCKR_K         EQU  _BB_GPIOG_LCKR + (4 * 16); Lock key bit


; LCKR H
_BB_GPIOH_LCKR          EQU  PERIPH_BB_BASE + (GPIOH_LCKR - PERIPH_BASE) * 32

BB_GPIOH_LCKR_0         EQU  _BB_GPIOH_LCKR + (4 * 0)
BB_GPIOH_LCKR_1         EQU  _BB_GPIOH_LCKR + (4 * 1)
BB_GPIOH_LCKR_2         EQU  _BB_GPIOH_LCKR + (4 * 2)
BB_GPIOH_LCKR_3         EQU  _BB_GPIOH_LCKR + (4 * 3)
BB_GPIOH_LCKR_4         EQU  _BB_GPIOH_LCKR + (4 * 4)
BB_GPIOH_LCKR_5         EQU  _BB_GPIOH_LCKR + (4 * 5)
BB_GPIOH_LCKR_6         EQU  _BB_GPIOH_LCKR + (4 * 6)
BB_GPIOH_LCKR_7         EQU  _BB_GPIOH_LCKR + (4 * 7)
BB_GPIOH_LCKR_8         EQU  _BB_GPIOH_LCKR + (4 * 8)
BB_GPIOH_LCKR_9         EQU  _BB_GPIOH_LCKR + (4 * 9)
BB_GPIOH_LCKR_10        EQU  _BB_GPIOH_LCKR + (4 * 10)
BB_GPIOH_LCKR_11        EQU  _BB_GPIOH_LCKR + (4 * 11)
BB_GPIOH_LCKR_12        EQU  _BB_GPIOH_LCKR + (4 * 12)
BB_GPIOH_LCKR_13        EQU  _BB_GPIOH_LCKR + (4 * 13)
BB_GPIOH_LCKR_14        EQU  _BB_GPIOH_LCKR + (4 * 14)
BB_GPIOH_LCKR_15        EQU  _BB_GPIOH_LCKR + (4 * 15)
BB_GPIOH_LCKR_K         EQU  _BB_GPIOH_LCKR + (4 * 16); Lock key bit

	END
