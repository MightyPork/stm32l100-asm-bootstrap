;********************************************************************************
; SOUBOR : INI_NVIC.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro NVIC (system preruseni)
;
;               Nested Vectored Interrupt Controller (NVIC)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

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



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;*****************  Bit definition for NVIC_ISER register  ******************
NVIC_ISER_SETENA                 EQU  0xFFFFFFFF        ; Interrupt set enable bits
NVIC_ISER_SETENA_0               EQU  0x00000001        ; bit 0
NVIC_ISER_SETENA_1               EQU  0x00000002        ; bit 1
NVIC_ISER_SETENA_2               EQU  0x00000004        ; bit 2
NVIC_ISER_SETENA_3               EQU  0x00000008        ; bit 3
NVIC_ISER_SETENA_4               EQU  0x00000010        ; bit 4
NVIC_ISER_SETENA_5               EQU  0x00000020        ; bit 5
NVIC_ISER_SETENA_6               EQU  0x00000040        ; bit 6
NVIC_ISER_SETENA_7               EQU  0x00000080        ; bit 7
NVIC_ISER_SETENA_8               EQU  0x00000100        ; bit 8
NVIC_ISER_SETENA_9               EQU  0x00000200        ; bit 9
NVIC_ISER_SETENA_10              EQU  0x00000400        ; bit 10
NVIC_ISER_SETENA_11              EQU  0x00000800        ; bit 11
NVIC_ISER_SETENA_12              EQU  0x00001000        ; bit 12
NVIC_ISER_SETENA_13              EQU  0x00002000        ; bit 13
NVIC_ISER_SETENA_14              EQU  0x00004000        ; bit 14
NVIC_ISER_SETENA_15              EQU  0x00008000        ; bit 15
NVIC_ISER_SETENA_16              EQU  0x00010000        ; bit 16
NVIC_ISER_SETENA_17              EQU  0x00020000        ; bit 17
NVIC_ISER_SETENA_18              EQU  0x00040000        ; bit 18
NVIC_ISER_SETENA_19              EQU  0x00080000        ; bit 19
NVIC_ISER_SETENA_20              EQU  0x00100000        ; bit 20
NVIC_ISER_SETENA_21              EQU  0x00200000        ; bit 21
NVIC_ISER_SETENA_22              EQU  0x00400000        ; bit 22
NVIC_ISER_SETENA_23              EQU  0x00800000        ; bit 23
NVIC_ISER_SETENA_24              EQU  0x01000000        ; bit 24
NVIC_ISER_SETENA_25              EQU  0x02000000        ; bit 25
NVIC_ISER_SETENA_26              EQU  0x04000000        ; bit 26
NVIC_ISER_SETENA_27              EQU  0x08000000        ; bit 27
NVIC_ISER_SETENA_28              EQU  0x10000000        ; bit 28
NVIC_ISER_SETENA_29              EQU  0x20000000        ; bit 29
NVIC_ISER_SETENA_30              EQU  0x40000000        ; bit 30
NVIC_ISER_SETENA_31              EQU  0x80000000        ; bit 31

;*****************  Bit definition for NVIC_ICER register  ******************
NVIC_ICER_CLRENA                EQU  0xFFFFFFFF        ; Interrupt clear-enable bits
NVIC_ICER_CLRENA_0               EQU  0x00000001        ; bit 0
NVIC_ICER_CLRENA_1               EQU  0x00000002        ; bit 1
NVIC_ICER_CLRENA_2               EQU  0x00000004        ; bit 2
NVIC_ICER_CLRENA_3               EQU  0x00000008        ; bit 3
NVIC_ICER_CLRENA_4               EQU  0x00000010        ; bit 4
NVIC_ICER_CLRENA_5               EQU  0x00000020        ; bit 5
NVIC_ICER_CLRENA_6               EQU  0x00000040        ; bit 6
NVIC_ICER_CLRENA_7               EQU  0x00000080        ; bit 7
NVIC_ICER_CLRENA_8               EQU  0x00000100        ; bit 8
NVIC_ICER_CLRENA_9               EQU  0x00000200        ; bit 9
NVIC_ICER_CLRENA_10              EQU  0x00000400        ; bit 10
NVIC_ICER_CLRENA_11              EQU  0x00000800        ; bit 11
NVIC_ICER_CLRENA_12              EQU  0x00001000        ; bit 12
NVIC_ICER_CLRENA_13              EQU  0x00002000        ; bit 13
NVIC_ICER_CLRENA_14              EQU  0x00004000        ; bit 14
NVIC_ICER_CLRENA_15              EQU  0x00008000        ; bit 15
NVIC_ICER_CLRENA_16              EQU  0x00010000        ; bit 16
NVIC_ICER_CLRENA_17              EQU  0x00020000        ; bit 17
NVIC_ICER_CLRENA_18              EQU  0x00040000        ; bit 18
NVIC_ICER_CLRENA_19              EQU  0x00080000        ; bit 19
NVIC_ICER_CLRENA_20              EQU  0x00100000        ; bit 20
NVIC_ICER_CLRENA_21              EQU  0x00200000        ; bit 21
NVIC_ICER_CLRENA_22              EQU  0x00400000        ; bit 22
NVIC_ICER_CLRENA_23              EQU  0x00800000        ; bit 23
NVIC_ICER_CLRENA_24              EQU  0x01000000        ; bit 24
NVIC_ICER_CLRENA_25              EQU  0x02000000        ; bit 25
NVIC_ICER_CLRENA_26              EQU  0x04000000        ; bit 26
NVIC_ICER_CLRENA_27              EQU  0x08000000        ; bit 27
NVIC_ICER_CLRENA_28              EQU  0x10000000        ; bit 28
NVIC_ICER_CLRENA_29              EQU  0x20000000        ; bit 29
NVIC_ICER_CLRENA_30              EQU  0x40000000        ; bit 30
NVIC_ICER_CLRENA_31              EQU  0x80000000        ; bit 31

;*****************  Bit definition for NVIC_ISPR register  ******************
NVIC_ISPR_SETPEND                EQU  0xFFFFFFFF        ; Interrupt set-pending bits
NVIC_ISPR_SETPEND_0              EQU  0x00000001        ; bit 0
NVIC_ISPR_SETPEND_1              EQU  0x00000002        ; bit 1
NVIC_ISPR_SETPEND_2              EQU  0x00000004        ; bit 2
NVIC_ISPR_SETPEND_3              EQU  0x00000008        ; bit 3
NVIC_ISPR_SETPEND_4              EQU  0x00000010        ; bit 4
NVIC_ISPR_SETPEND_5              EQU  0x00000020        ; bit 5
NVIC_ISPR_SETPEND_6              EQU  0x00000040        ; bit 6
NVIC_ISPR_SETPEND_7              EQU  0x00000080        ; bit 7
NVIC_ISPR_SETPEND_8              EQU  0x00000100        ; bit 8
NVIC_ISPR_SETPEND_9              EQU  0x00000200        ; bit 9
NVIC_ISPR_SETPEND_10             EQU  0x00000400        ; bit 10
NVIC_ISPR_SETPEND_11             EQU  0x00000800        ; bit 11
NVIC_ISPR_SETPEND_12             EQU  0x00001000        ; bit 12
NVIC_ISPR_SETPEND_13             EQU  0x00002000        ; bit 13
NVIC_ISPR_SETPEND_14             EQU  0x00004000        ; bit 14
NVIC_ISPR_SETPEND_15             EQU  0x00008000        ; bit 15
NVIC_ISPR_SETPEND_16             EQU  0x00010000        ; bit 16
NVIC_ISPR_SETPEND_17             EQU  0x00020000        ; bit 17
NVIC_ISPR_SETPEND_18             EQU  0x00040000        ; bit 18
NVIC_ISPR_SETPEND_19             EQU  0x00080000        ; bit 19
NVIC_ISPR_SETPEND_20             EQU  0x00100000        ; bit 20
NVIC_ISPR_SETPEND_21             EQU  0x00200000        ; bit 21
NVIC_ISPR_SETPEND_22             EQU  0x00400000        ; bit 22
NVIC_ISPR_SETPEND_23             EQU  0x00800000        ; bit 23
NVIC_ISPR_SETPEND_24             EQU  0x01000000        ; bit 24
NVIC_ISPR_SETPEND_25             EQU  0x02000000        ; bit 25
NVIC_ISPR_SETPEND_26             EQU  0x04000000        ; bit 26
NVIC_ISPR_SETPEND_27             EQU  0x08000000        ; bit 27
NVIC_ISPR_SETPEND_28             EQU  0x10000000        ; bit 28
NVIC_ISPR_SETPEND_29             EQU  0x20000000        ; bit 29
NVIC_ISPR_SETPEND_30             EQU  0x40000000        ; bit 30
NVIC_ISPR_SETPEND_31             EQU  0x80000000        ; bit 31

;*****************  Bit definition for NVIC_ICPR register  ******************
NVIC_ICPR_CLRPEND                EQU  0xFFFFFFFF        ; Interrupt clear-pending bits
NVIC_ICPR_CLRPEND_0              EQU  0x00000001        ; bit 0
NVIC_ICPR_CLRPEND_1              EQU  0x00000002        ; bit 1
NVIC_ICPR_CLRPEND_2              EQU  0x00000004        ; bit 2
NVIC_ICPR_CLRPEND_3              EQU  0x00000008        ; bit 3
NVIC_ICPR_CLRPEND_4              EQU  0x00000010        ; bit 4
NVIC_ICPR_CLRPEND_5              EQU  0x00000020        ; bit 5
NVIC_ICPR_CLRPEND_6              EQU  0x00000040        ; bit 6
NVIC_ICPR_CLRPEND_7              EQU  0x00000080        ; bit 7
NVIC_ICPR_CLRPEND_8              EQU  0x00000100        ; bit 8
NVIC_ICPR_CLRPEND_9              EQU  0x00000200        ; bit 9
NVIC_ICPR_CLRPEND_10             EQU  0x00000400        ; bit 10
NVIC_ICPR_CLRPEND_11             EQU  0x00000800        ; bit 11
NVIC_ICPR_CLRPEND_12             EQU  0x00001000        ; bit 12
NVIC_ICPR_CLRPEND_13             EQU  0x00002000        ; bit 13
NVIC_ICPR_CLRPEND_14             EQU  0x00004000        ; bit 14
NVIC_ICPR_CLRPEND_15             EQU  0x00008000        ; bit 15
NVIC_ICPR_CLRPEND_16             EQU  0x00010000        ; bit 16
NVIC_ICPR_CLRPEND_17             EQU  0x00020000        ; bit 17
NVIC_ICPR_CLRPEND_18             EQU  0x00040000        ; bit 18
NVIC_ICPR_CLRPEND_19             EQU  0x00080000        ; bit 19
NVIC_ICPR_CLRPEND_20             EQU  0x00100000        ; bit 20
NVIC_ICPR_CLRPEND_21             EQU  0x00200000        ; bit 21
NVIC_ICPR_CLRPEND_22             EQU  0x00400000        ; bit 22
NVIC_ICPR_CLRPEND_23             EQU  0x00800000        ; bit 23
NVIC_ICPR_CLRPEND_24             EQU  0x01000000        ; bit 24
NVIC_ICPR_CLRPEND_25             EQU  0x02000000        ; bit 25
NVIC_ICPR_CLRPEND_26             EQU  0x04000000        ; bit 26
NVIC_ICPR_CLRPEND_27             EQU  0x08000000        ; bit 27
NVIC_ICPR_CLRPEND_28             EQU  0x10000000        ; bit 28
NVIC_ICPR_CLRPEND_29             EQU  0x20000000        ; bit 29
NVIC_ICPR_CLRPEND_30             EQU  0x40000000        ; bit 30
NVIC_ICPR_CLRPEND_31             EQU  0x80000000        ; bit 31

;*****************  Bit definition for NVIC_IABR register  ******************
NVIC_IABR_ACTIVE                 EQU  0xFFFFFFFF        ; Interrupt active flags
NVIC_IABR_ACTIVE_0               EQU  0x00000001        ; bit 0
NVIC_IABR_ACTIVE_1               EQU  0x00000002        ; bit 1
NVIC_IABR_ACTIVE_2               EQU  0x00000004        ; bit 2
NVIC_IABR_ACTIVE_3               EQU  0x00000008        ; bit 3
NVIC_IABR_ACTIVE_4               EQU  0x00000010        ; bit 4
NVIC_IABR_ACTIVE_5               EQU  0x00000020        ; bit 5
NVIC_IABR_ACTIVE_6               EQU  0x00000040        ; bit 6
NVIC_IABR_ACTIVE_7               EQU  0x00000080        ; bit 7
NVIC_IABR_ACTIVE_8               EQU  0x00000100        ; bit 8
NVIC_IABR_ACTIVE_9               EQU  0x00000200        ; bit 9
NVIC_IABR_ACTIVE_10              EQU  0x00000400        ; bit 10
NVIC_IABR_ACTIVE_11              EQU  0x00000800        ; bit 11
NVIC_IABR_ACTIVE_12              EQU  0x00001000        ; bit 12
NVIC_IABR_ACTIVE_13              EQU  0x00002000        ; bit 13
NVIC_IABR_ACTIVE_14              EQU  0x00004000        ; bit 14
NVIC_IABR_ACTIVE_15              EQU  0x00008000        ; bit 15
NVIC_IABR_ACTIVE_16              EQU  0x00010000        ; bit 16
NVIC_IABR_ACTIVE_17              EQU  0x00020000        ; bit 17
NVIC_IABR_ACTIVE_18              EQU  0x00040000        ; bit 18
NVIC_IABR_ACTIVE_19              EQU  0x00080000        ; bit 19
NVIC_IABR_ACTIVE_20              EQU  0x00100000        ; bit 20
NVIC_IABR_ACTIVE_21              EQU  0x00200000        ; bit 21
NVIC_IABR_ACTIVE_22              EQU  0x00400000        ; bit 22
NVIC_IABR_ACTIVE_23              EQU  0x00800000        ; bit 23
NVIC_IABR_ACTIVE_24              EQU  0x01000000        ; bit 24
NVIC_IABR_ACTIVE_25              EQU  0x02000000        ; bit 25
NVIC_IABR_ACTIVE_26              EQU  0x04000000        ; bit 26
NVIC_IABR_ACTIVE_27              EQU  0x08000000        ; bit 27
NVIC_IABR_ACTIVE_28              EQU  0x10000000        ; bit 28
NVIC_IABR_ACTIVE_29              EQU  0x20000000        ; bit 29
NVIC_IABR_ACTIVE_30              EQU  0x40000000        ; bit 30
NVIC_IABR_ACTIVE_31              EQU  0x80000000        ; bit 31

;*****************  Bit definition for NVIC_PRI0 register  ******************
NVIC_IPR0_PRI_0                  EQU  0x000000FF        ; Priority of interrupt 0
NVIC_IPR0_PRI_1                  EQU  0x0000FF00        ; Priority of interrupt 1
NVIC_IPR0_PRI_2                  EQU  0x00FF0000        ; Priority of interrupt 2
NVIC_IPR0_PRI_3                  EQU  0xFF000000        ; Priority of interrupt 3

;*****************  Bit definition for NVIC_PRI1 register  ******************
NVIC_IPR1_PRI_4                  EQU  0x000000FF        ; Priority of interrupt 4
NVIC_IPR1_PRI_5                  EQU  0x0000FF00        ; Priority of interrupt 5
NVIC_IPR1_PRI_6                  EQU  0x00FF0000        ; Priority of interrupt 6
NVIC_IPR1_PRI_7                  EQU  0xFF000000        ; Priority of interrupt 7

;*****************  Bit definition for NVIC_PRI2 register  ******************
NVIC_IPR2_PRI_8                  EQU  0x000000FF        ; Priority of interrupt 8
NVIC_IPR2_PRI_9                  EQU  0x0000FF00        ; Priority of interrupt 9
NVIC_IPR2_PRI_10                 EQU  0x00FF0000        ; Priority of interrupt 10
NVIC_IPR2_PRI_11                 EQU  0xFF000000        ; Priority of interrupt 11

;*****************  Bit definition for NVIC_PRI3 register  ******************
NVIC_IPR3_PRI_12                 EQU  0x000000FF        ; Priority of interrupt 12
NVIC_IPR3_PRI_13                 EQU  0x0000FF00        ; Priority of interrupt 13
NVIC_IPR3_PRI_14                 EQU  0x00FF0000        ; Priority of interrupt 14
NVIC_IPR3_PRI_15                 EQU  0xFF000000        ; Priority of interrupt 15

;*****************  Bit definition for NVIC_PRI4 register  ******************
NVIC_IPR4_PRI_16                 EQU  0x000000FF        ; Priority of interrupt 16
NVIC_IPR4_PRI_17                 EQU  0x0000FF00        ; Priority of interrupt 17
NVIC_IPR4_PRI_18                 EQU  0x00FF0000        ; Priority of interrupt 18
NVIC_IPR4_PRI_19                 EQU  0xFF000000        ; Priority of interrupt 19

;*****************  Bit definition for NVIC_PRI5 register  ******************
NVIC_IPR5_PRI_20                 EQU  0x000000FF        ; Priority of interrupt 20
NVIC_IPR5_PRI_21                 EQU  0x0000FF00        ; Priority of interrupt 21
NVIC_IPR5_PRI_22                 EQU  0x00FF0000        ; Priority of interrupt 22
NVIC_IPR5_PRI_23                 EQU  0xFF000000        ; Priority of interrupt 23

;*****************  Bit definition for NVIC_PRI6 register  ******************
NVIC_IPR6_PRI_24                 EQU  0x000000FF        ; Priority of interrupt 24
NVIC_IPR6_PRI_25                 EQU  0x0000FF00        ; Priority of interrupt 25
NVIC_IPR6_PRI_26                 EQU  0x00FF0000        ; Priority of interrupt 26
NVIC_IPR6_PRI_27                 EQU  0xFF000000        ; Priority of interrupt 27

;*****************  Bit definition for NVIC_PRI7 register  ******************
NVIC_IPR7_PRI_28                 EQU  0x000000FF        ; Priority of interrupt 28
NVIC_IPR7_PRI_29                 EQU  0x0000FF00        ; Priority of interrupt 29
NVIC_IPR7_PRI_30                 EQU  0x00FF0000        ; Priority of interrupt 30
NVIC_IPR7_PRI_31                 EQU  0xFF000000        ; Priority of interrupt 31

	END
