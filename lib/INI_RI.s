;********************************************************************************
; FILE   : INI_RI.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Bitove masky ridicich registru pro RI (analogove propojky)
;
;                       Routing Interface (RI)
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


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;*******************  Bit definition for RI_ICR register  *******************
RI_ICR_IC1Z                 EQU  0x0000000F ; IC1Z[3:0] bits (Input Capture 1 select bits)
RI_ICR_IC1Z_0               EQU  0x00000001 ; Bit 0
RI_ICR_IC1Z_1               EQU  0x00000002 ; Bit 1
RI_ICR_IC1Z_2               EQU  0x00000004 ; Bit 2
RI_ICR_IC1Z_3               EQU  0x00000008 ; Bit 3

RI_ICR_IC2Z                 EQU  0x000000F0 ; IC2Z[3:0] bits (Input Capture 2 select bits)
RI_ICR_IC2Z_0               EQU  0x00000010 ; Bit 0
RI_ICR_IC2Z_1               EQU  0x00000020 ; Bit 1
RI_ICR_IC2Z_2               EQU  0x00000040 ; Bit 2
RI_ICR_IC2Z_3               EQU  0x00000080 ; Bit 3

RI_ICR_IC3Z                 EQU  0x00000F00 ; IC3Z[3:0] bits (Input Capture 3 select bits)
RI_ICR_IC3Z_0               EQU  0x00000100 ; Bit 0
RI_ICR_IC3Z_1               EQU  0x00000200 ; Bit 1
RI_ICR_IC3Z_2               EQU  0x00000400 ; Bit 2
RI_ICR_IC3Z_3               EQU  0x00000800 ; Bit 3

RI_ICR_IC4Z                 EQU  0x0000F000 ; IC4Z[3:0] bits (Input Capture 4 select bits)
RI_ICR_IC4Z_0               EQU  0x00001000 ; Bit 0
RI_ICR_IC4Z_1               EQU  0x00002000 ; Bit 1
RI_ICR_IC4Z_2               EQU  0x00004000 ; Bit 2
RI_ICR_IC4Z_3               EQU  0x00008000 ; Bit 3

RI_ICR_TIM                  EQU  0x00030000 ; TIM[3:0] bits (Timers select bits)
RI_ICR_TIM_0                EQU  0x00010000 ; Bit 0
RI_ICR_TIM_1                EQU  0x00020000 ; Bit 1

RI_ICR_IC1                  EQU  0x00040000 ; Input capture 1
RI_ICR_IC2                  EQU  0x00080000 ; Input capture 2
RI_ICR_IC3                  EQU  0x00100000 ; Input capture 3
RI_ICR_IC4                  EQU  0x00200000 ; Input capture 4

;*******************  Bit definition for RI_ASCR1 register  *******************
RI_ASCR1_CH                 EQU  0x03FCFFFF ; AS_CH[25:18] & AS_CH[15:0] bits ( Analog switches selection bits)
RI_ASCR1_CH_0               EQU  0x00000001 ; Bit 0
RI_ASCR1_CH_1               EQU  0x00000002 ; Bit 1
RI_ASCR1_CH_2               EQU  0x00000004 ; Bit 2
RI_ASCR1_CH_3               EQU  0x00000008 ; Bit 3
RI_ASCR1_CH_4               EQU  0x00000010 ; Bit 4
RI_ASCR1_CH_5               EQU  0x00000020 ; Bit 5
RI_ASCR1_CH_6               EQU  0x00000040 ; Bit 6
RI_ASCR1_CH_7               EQU  0x00000080 ; Bit 7
RI_ASCR1_CH_8               EQU  0x00000100 ; Bit 8
RI_ASCR1_CH_9               EQU  0x00000200 ; Bit 9
RI_ASCR1_CH_10              EQU  0x00000400 ; Bit 10
RI_ASCR1_CH_11              EQU  0x00000800 ; Bit 11
RI_ASCR1_CH_12              EQU  0x00001000 ; Bit 12
RI_ASCR1_CH_13              EQU  0x00002000 ; Bit 13
RI_ASCR1_CH_14              EQU  0x00004000 ; Bit 14
RI_ASCR1_CH_15              EQU  0x00008000 ; Bit 15
RI_ASCR1_CH_31              EQU  0x00010000 ; Bit 16
RI_ASCR1_CH_18              EQU  0x00040000 ; Bit 18
RI_ASCR1_CH_19              EQU  0x00080000 ; Bit 19
RI_ASCR1_CH_20              EQU  0x00100000 ; Bit 20
RI_ASCR1_CH_21              EQU  0x00200000 ; Bit 21
RI_ASCR1_CH_22              EQU  0x00400000 ; Bit 22
RI_ASCR1_CH_23              EQU  0x00800000 ; Bit 23
RI_ASCR1_CH_24              EQU  0x01000000 ; Bit 24
RI_ASCR1_CH_25              EQU  0x02000000 ; Bit 25
RI_ASCR1_VCOMP              EQU  0x04000000 ; ADC analog switch selection for internal node to COMP1
RI_ASCR1_CH_27              EQU  0x00400000 ; Bit 27
RI_ASCR1_CH_28              EQU  0x00800000 ; Bit 28
RI_ASCR1_CH_29              EQU  0x01000000 ; Bit 29
RI_ASCR1_CH_30              EQU  0x02000000 ; Bit 30
RI_ASCR1_SCM                EQU  0x80000000 ; I/O Switch control mode

;*******************  Bit definition for RI_ASCR2 register  *******************
RI_ASCR2_GR10_1             EQU  0x00000001 ; GR10-1 selection bit
RI_ASCR2_GR10_2             EQU  0x00000002 ; GR10-2 selection bit
RI_ASCR2_GR10_3             EQU  0x00000004 ; GR10-3 selection bit
RI_ASCR2_GR10_4             EQU  0x00000008 ; GR10-4 selection bit
RI_ASCR2_GR6_1              EQU  0x00000010 ; GR6-1 selection bit
RI_ASCR2_GR6_2              EQU  0x00000020 ; GR6-2 selection bit
RI_ASCR2_GR5_1              EQU  0x00000040 ; GR5-1 selection bit
RI_ASCR2_GR5_2              EQU  0x00000080 ; GR5-2 selection bit
RI_ASCR2_GR5_3              EQU  0x00000100 ; GR5-3 selection bit
RI_ASCR2_GR4_1              EQU  0x00000200 ; GR4-1 selection bit
RI_ASCR2_GR4_2              EQU  0x00000400 ; GR4-2 selection bit
RI_ASCR2_GR4_3              EQU  0x00000800 ; GR4-3 selection bit
RI_ASCR2_GR4_4              EQU  0x00008000 ; GR4-4 selection bit
RI_ASCR2_CH0b               EQU  0x00010000 ; CH0b selection bit
RI_ASCR2_CH1b               EQU  0x00020000 ; CH1b selection bit
RI_ASCR2_CH2b               EQU  0x00040000 ; CH2b selection bit
RI_ASCR2_CH3b               EQU  0x00080000 ; CH3b selection bit
RI_ASCR2_CH6b               EQU  0x00100000 ; CH6b selection bit
RI_ASCR2_CH7b               EQU  0x00200000 ; CH7b selection bit
RI_ASCR2_CH8b               EQU  0x00400000 ; CH8b selection bit
RI_ASCR2_CH9b               EQU  0x00800000 ; CH9b selection bit
RI_ASCR2_CH10b              EQU  0x01000000 ; CH10b selection bit
RI_ASCR2_CH11b              EQU  0x02000000 ; CH11b selection bit
RI_ASCR2_CH12b              EQU  0x04000000 ; CH12b selection bit
RI_ASCR2_GR6_3              EQU  0x08000000 ; GR6-3 selection bit
RI_ASCR2_GR6_4              EQU  0x10000000 ; GR6-4 selection bit
RI_ASCR2_GR5_4              EQU  0x20000000 ; GR5-4 selection bit

;*******************  Bit definition for RI_HYSCR1 register  *******************
RI_HYSCR1_PA                EQU  0x0000FFFF ; PA[15:0] Port A Hysteresis selection
RI_HYSCR1_PA_0              EQU  0x00000001 ; Bit 0
RI_HYSCR1_PA_1              EQU  0x00000002 ; Bit 1
RI_HYSCR1_PA_2              EQU  0x00000004 ; Bit 2
RI_HYSCR1_PA_3              EQU  0x00000008 ; Bit 3
RI_HYSCR1_PA_4              EQU  0x00000010 ; Bit 4
RI_HYSCR1_PA_5              EQU  0x00000020 ; Bit 5
RI_HYSCR1_PA_6              EQU  0x00000040 ; Bit 6
RI_HYSCR1_PA_7              EQU  0x00000080 ; Bit 7
RI_HYSCR1_PA_8              EQU  0x00000100 ; Bit 8
RI_HYSCR1_PA_9              EQU  0x00000200 ; Bit 9
RI_HYSCR1_PA_10             EQU  0x00000400 ; Bit 10
RI_HYSCR1_PA_11             EQU  0x00000800 ; Bit 11
RI_HYSCR1_PA_12             EQU  0x00001000 ; Bit 12
RI_HYSCR1_PA_13             EQU  0x00002000 ; Bit 13
RI_HYSCR1_PA_14             EQU  0x00004000 ; Bit 14
RI_HYSCR1_PA_15             EQU  0x00008000 ; Bit 15

RI_HYSCR1_PB                EQU  0xFFFF0000 ; PB[15:0] Port B Hysteresis selection
RI_HYSCR1_PB_0              EQU  0x00010000 ; Bit 0
RI_HYSCR1_PB_1              EQU  0x00020000 ; Bit 1
RI_HYSCR1_PB_2              EQU  0x00040000 ; Bit 2
RI_HYSCR1_PB_3              EQU  0x00080000 ; Bit 3
RI_HYSCR1_PB_4              EQU  0x00100000 ; Bit 4
RI_HYSCR1_PB_5              EQU  0x00200000 ; Bit 5
RI_HYSCR1_PB_6              EQU  0x00400000 ; Bit 6
RI_HYSCR1_PB_7              EQU  0x00800000 ; Bit 7
RI_HYSCR1_PB_8              EQU  0x01000000 ; Bit 8
RI_HYSCR1_PB_9              EQU  0x02000000 ; Bit 9
RI_HYSCR1_PB_10             EQU  0x04000000 ; Bit 10
RI_HYSCR1_PB_11             EQU  0x08000000 ; Bit 11
RI_HYSCR1_PB_12             EQU  0x10000000 ; Bit 12
RI_HYSCR1_PB_13             EQU  0x20000000 ; Bit 13
RI_HYSCR1_PB_14             EQU  0x40000000 ; Bit 14
RI_HYSCR1_PB_15             EQU  0x80000000 ; Bit 15

;*******************  Bit definition for RI_HYSCR2 register  *******************
RI_HYSCR2_PC                EQU  0x0000FFFF ; PC[15:0] Port C Hysteresis selection
RI_HYSCR2_PC_0              EQU  0x00000001 ; Bit 0
RI_HYSCR2_PC_1              EQU  0x00000002 ; Bit 1
RI_HYSCR2_PC_2              EQU  0x00000004 ; Bit 2
RI_HYSCR2_PC_3              EQU  0x00000008 ; Bit 3
RI_HYSCR2_PC_4              EQU  0x00000010 ; Bit 4
RI_HYSCR2_PC_5              EQU  0x00000020 ; Bit 5
RI_HYSCR2_PC_6              EQU  0x00000040 ; Bit 6
RI_HYSCR2_PC_7              EQU  0x00000080 ; Bit 7
RI_HYSCR2_PC_8              EQU  0x00000100 ; Bit 8
RI_HYSCR2_PC_9              EQU  0x00000200 ; Bit 9
RI_HYSCR2_PC_10             EQU  0x00000400 ; Bit 10
RI_HYSCR2_PC_11             EQU  0x00000800 ; Bit 11
RI_HYSCR2_PC_12             EQU  0x00001000 ; Bit 12
RI_HYSCR2_PC_13             EQU  0x00002000 ; Bit 13
RI_HYSCR2_PC_14             EQU  0x00004000 ; Bit 14
RI_HYSCR2_PC_15             EQU  0x00008000 ; Bit 15

RI_HYSCR2_PD                EQU  0xFFFF0000 ; PD[15:0] Port D Hysteresis selection
RI_HYSCR2_PD_0              EQU  0x00010000 ; Bit 0
RI_HYSCR2_PD_1              EQU  0x00020000 ; Bit 1
RI_HYSCR2_PD_2              EQU  0x00040000 ; Bit 2
RI_HYSCR2_PD_3              EQU  0x00080000 ; Bit 3
RI_HYSCR2_PD_4              EQU  0x00100000 ; Bit 4
RI_HYSCR2_PD_5              EQU  0x00200000 ; Bit 5
RI_HYSCR2_PD_6              EQU  0x00400000 ; Bit 6
RI_HYSCR2_PD_7              EQU  0x00800000 ; Bit 7
RI_HYSCR2_PD_8              EQU  0x01000000 ; Bit 8
RI_HYSCR2_PD_9              EQU  0x02000000 ; Bit 9
RI_HYSCR2_PD_10             EQU  0x04000000 ; Bit 10
RI_HYSCR2_PD_11             EQU  0x08000000 ; Bit 11
RI_HYSCR2_PD_12             EQU  0x10000000 ; Bit 12
RI_HYSCR2_PD_13             EQU  0x20000000 ; Bit 13
RI_HYSCR2_PD_14             EQU  0x40000000 ; Bit 14
RI_HYSCR2_PD_15             EQU  0x80000000 ; Bit 15

;*******************  Bit definition for RI_HYSCR3 register  *******************
RI_HYSCR2_PE                EQU  0x0000FFFF ; PE[15:0] Port E Hysteresis selection
RI_HYSCR2_PE_0              EQU  0x00000001 ; Bit 0
RI_HYSCR2_PE_1              EQU  0x00000002 ; Bit 1
RI_HYSCR2_PE_2              EQU  0x00000004 ; Bit 2
RI_HYSCR2_PE_3              EQU  0x00000008 ; Bit 3
RI_HYSCR2_PE_4              EQU  0x00000010 ; Bit 4
RI_HYSCR2_PE_5              EQU  0x00000020 ; Bit 5
RI_HYSCR2_PE_6              EQU  0x00000040 ; Bit 6
RI_HYSCR2_PE_7              EQU  0x00000080 ; Bit 7
RI_HYSCR2_PE_8              EQU  0x00000100 ; Bit 8
RI_HYSCR2_PE_9              EQU  0x00000200 ; Bit 9
RI_HYSCR2_PE_10             EQU  0x00000400 ; Bit 10
RI_HYSCR2_PE_11             EQU  0x00000800 ; Bit 11
RI_HYSCR2_PE_12             EQU  0x00001000 ; Bit 12
RI_HYSCR2_PE_13             EQU  0x00002000 ; Bit 13
RI_HYSCR2_PE_14             EQU  0x00004000 ; Bit 14
RI_HYSCR2_PE_15             EQU  0x00008000 ; Bit 15

RI_HYSCR3_PF                EQU  0xFFFF0000 ; PF[15:0] Port F Hysteresis selection
RI_HYSCR3_PF_0              EQU  0x00010000 ; Bit 0
RI_HYSCR3_PF_1              EQU  0x00020000 ; Bit 1
RI_HYSCR3_PF_2              EQU  0x00040000 ; Bit 2
RI_HYSCR3_PF_3              EQU  0x00080000 ; Bit 3
RI_HYSCR3_PF_4              EQU  0x00100000 ; Bit 4
RI_HYSCR3_PF_5              EQU  0x00200000 ; Bit 5
RI_HYSCR3_PF_6              EQU  0x00400000 ; Bit 6
RI_HYSCR3_PF_7              EQU  0x00800000 ; Bit 7
RI_HYSCR3_PF_8              EQU  0x01000000 ; Bit 8
RI_HYSCR3_PF_9              EQU  0x02000000 ; Bit 9
RI_HYSCR3_PF_10             EQU  0x04000000 ; Bit 10
RI_HYSCR3_PF_11             EQU  0x08000000 ; Bit 11
RI_HYSCR3_PF_12             EQU  0x10000000 ; Bit 12
RI_HYSCR3_PF_13             EQU  0x20000000 ; Bit 13
RI_HYSCR3_PF_14             EQU  0x40000000 ; Bit 14
RI_HYSCR3_PF_15             EQU  0x80000000 ; Bit 15

;*******************  Bit definition for RI_HYSCR4 register  *******************
RI_HYSCR4_PG                EQU  0x0000FFFF ; PG[15:0] Port G Hysteresis selection
RI_HYSCR4_PG_0              EQU  0x00000001 ; Bit 0
RI_HYSCR4_PG_1              EQU  0x00000002 ; Bit 1
RI_HYSCR4_PG_2              EQU  0x00000004 ; Bit 2
RI_HYSCR4_PG_3              EQU  0x00000008 ; Bit 3
RI_HYSCR4_PG_4              EQU  0x00000010 ; Bit 4
RI_HYSCR4_PG_5              EQU  0x00000020 ; Bit 5
RI_HYSCR4_PG_6              EQU  0x00000040 ; Bit 6
RI_HYSCR4_PG_7              EQU  0x00000080 ; Bit 7
RI_HYSCR4_PG_8              EQU  0x00000100 ; Bit 8
RI_HYSCR4_PG_9              EQU  0x00000200 ; Bit 9
RI_HYSCR4_PG_10             EQU  0x00000400 ; Bit 10
RI_HYSCR4_PG_11             EQU  0x00000800 ; Bit 11
RI_HYSCR4_PG_12             EQU  0x00001000 ; Bit 12
RI_HYSCR4_PG_13             EQU  0x00002000 ; Bit 13
RI_HYSCR4_PG_14             EQU  0x00004000 ; Bit 14
RI_HYSCR4_PG_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_ASMR1 register  *******************
RI_ASMR1_PA                EQU  0x0000FFFF ; PA[15:0] Port A analog switch mode selection
RI_ASMR1_PA_0              EQU  0x00000001 ; Bit 0
RI_ASMR1_PA_1              EQU  0x00000002 ; Bit 1
RI_ASMR1_PA_2              EQU  0x00000004 ; Bit 2
RI_ASMR1_PA_3              EQU  0x00000008 ; Bit 3
RI_ASMR1_PA_4              EQU  0x00000010 ; Bit 4
RI_ASMR1_PA_5              EQU  0x00000020 ; Bit 5
RI_ASMR1_PA_6              EQU  0x00000040 ; Bit 6
RI_ASMR1_PA_7              EQU  0x00000080 ; Bit 7
RI_ASMR1_PA_8              EQU  0x00000100 ; Bit 8
RI_ASMR1_PA_9              EQU  0x00000200 ; Bit 9
RI_ASMR1_PA_10             EQU  0x00000400 ; Bit 10
RI_ASMR1_PA_11             EQU  0x00000800 ; Bit 11
RI_ASMR1_PA_12             EQU  0x00001000 ; Bit 12
RI_ASMR1_PA_13             EQU  0x00002000 ; Bit 13
RI_ASMR1_PA_14             EQU  0x00004000 ; Bit 14
RI_ASMR1_PA_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CMR1 register  *******************
RI_CMR1_PA                EQU  0x0000FFFF ; PA[15:0] Port A channel masking
RI_CMR1_PA_0              EQU  0x00000001 ; Bit 0
RI_CMR1_PA_1              EQU  0x00000002 ; Bit 1
RI_CMR1_PA_2              EQU  0x00000004 ; Bit 2
RI_CMR1_PA_3              EQU  0x00000008 ; Bit 3
RI_CMR1_PA_4              EQU  0x00000010 ; Bit 4
RI_CMR1_PA_5              EQU  0x00000020 ; Bit 5
RI_CMR1_PA_6              EQU  0x00000040 ; Bit 6
RI_CMR1_PA_7              EQU  0x00000080 ; Bit 7
RI_CMR1_PA_8              EQU  0x00000100 ; Bit 8
RI_CMR1_PA_9              EQU  0x00000200 ; Bit 9
RI_CMR1_PA_10             EQU  0x00000400 ; Bit 10
RI_CMR1_PA_11             EQU  0x00000800 ; Bit 11
RI_CMR1_PA_12             EQU  0x00001000 ; Bit 12
RI_CMR1_PA_13             EQU  0x00002000 ; Bit 13
RI_CMR1_PA_14             EQU  0x00004000 ; Bit 14
RI_CMR1_PA_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CICR1 register  *******************
RI_CICR1_PA                EQU  0x0000FFFF ; PA[15:0] Port A channel identification for capture
RI_CICR1_PA_0              EQU  0x00000001 ; Bit 0
RI_CICR1_PA_1              EQU  0x00000002 ; Bit 1
RI_CICR1_PA_2              EQU  0x00000004 ; Bit 2
RI_CICR1_PA_3              EQU  0x00000008 ; Bit 3
RI_CICR1_PA_4              EQU  0x00000010 ; Bit 4
RI_CICR1_PA_5              EQU  0x00000020 ; Bit 5
RI_CICR1_PA_6              EQU  0x00000040 ; Bit 6
RI_CICR1_PA_7              EQU  0x00000080 ; Bit 7
RI_CICR1_PA_8              EQU  0x00000100 ; Bit 8
RI_CICR1_PA_9              EQU  0x00000200 ; Bit 9
RI_CICR1_PA_10             EQU  0x00000400 ; Bit 10
RI_CICR1_PA_11             EQU  0x00000800 ; Bit 11
RI_CICR1_PA_12             EQU  0x00001000 ; Bit 12
RI_CICR1_PA_13             EQU  0x00002000 ; Bit 13
RI_CICR1_PA_14             EQU  0x00004000 ; Bit 14
RI_CICR1_PA_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_ASMR2 register  *******************
RI_ASMR2_PB                EQU  0x0000FFFF ; PB[15:0] Port B analog switch mode selection
RI_ASMR2_PB_0              EQU  0x00000001 ; Bit 0
RI_ASMR2_PB_1              EQU  0x00000002 ; Bit 1
RI_ASMR2_PB_2              EQU  0x00000004 ; Bit 2
RI_ASMR2_PB_3              EQU  0x00000008 ; Bit 3
RI_ASMR2_PB_4              EQU  0x00000010 ; Bit 4
RI_ASMR2_PB_5              EQU  0x00000020 ; Bit 5
RI_ASMR2_PB_6              EQU  0x00000040 ; Bit 6
RI_ASMR2_PB_7              EQU  0x00000080 ; Bit 7
RI_ASMR2_PB_8              EQU  0x00000100 ; Bit 8
RI_ASMR2_PB_9              EQU  0x00000200 ; Bit 9
RI_ASMR2_PB_10             EQU  0x00000400 ; Bit 10
RI_ASMR2_PB_11             EQU  0x00000800 ; Bit 11
RI_ASMR2_PB_12             EQU  0x00001000 ; Bit 12
RI_ASMR2_PB_13             EQU  0x00002000 ; Bit 13
RI_ASMR2_PB_14             EQU  0x00004000 ; Bit 14
RI_ASMR2_PB_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CMR2 register  *******************
RI_CMR2_PB                EQU  0x0000FFFF ; PB[15:0] Port B channel masking
RI_CMR2_PB_0              EQU  0x00000001 ; Bit 0
RI_CMR2_PB_1              EQU  0x00000002 ; Bit 1
RI_CMR2_PB_2              EQU  0x00000004 ; Bit 2
RI_CMR2_PB_3              EQU  0x00000008 ; Bit 3
RI_CMR2_PB_4              EQU  0x00000010 ; Bit 4
RI_CMR2_PB_5              EQU  0x00000020 ; Bit 5
RI_CMR2_PB_6              EQU  0x00000040 ; Bit 6
RI_CMR2_PB_7              EQU  0x00000080 ; Bit 7
RI_CMR2_PB_8              EQU  0x00000100 ; Bit 8
RI_CMR2_PB_9              EQU  0x00000200 ; Bit 9
RI_CMR2_PB_10             EQU  0x00000400 ; Bit 10
RI_CMR2_PB_11             EQU  0x00000800 ; Bit 11
RI_CMR2_PB_12             EQU  0x00001000 ; Bit 12
RI_CMR2_PB_13             EQU  0x00002000 ; Bit 13
RI_CMR2_PB_14             EQU  0x00004000 ; Bit 14
RI_CMR2_PB_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CICR2 register  *******************
RI_CICR2_PB                EQU  0x0000FFFF ; PB[15:0] Port B channel identification for capture
RI_CICR2_PB_0              EQU  0x00000001 ; Bit 0
RI_CICR2_PB_1              EQU  0x00000002 ; Bit 1
RI_CICR2_PB_2              EQU  0x00000004 ; Bit 2
RI_CICR2_PB_3              EQU  0x00000008 ; Bit 3
RI_CICR2_PB_4              EQU  0x00000010 ; Bit 4
RI_CICR2_PB_5              EQU  0x00000020 ; Bit 5
RI_CICR2_PB_6              EQU  0x00000040 ; Bit 6
RI_CICR2_PB_7              EQU  0x00000080 ; Bit 7
RI_CICR2_PB_8              EQU  0x00000100 ; Bit 8
RI_CICR2_PB_9              EQU  0x00000200 ; Bit 9
RI_CICR2_PB_10             EQU  0x00000400 ; Bit 10
RI_CICR2_PB_11             EQU  0x00000800 ; Bit 11
RI_CICR2_PB_12             EQU  0x00001000 ; Bit 12
RI_CICR2_PB_13             EQU  0x00002000 ; Bit 13
RI_CICR2_PB_14             EQU  0x00004000 ; Bit 14
RI_CICR2_PB_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_ASMR3 register  *******************
RI_ASMR3_PC                EQU  0x0000FFFF ; PC[15:0] Port C analog switch mode selection
RI_ASMR3_PC_0              EQU  0x00000001 ; Bit 0
RI_ASMR3_PC_1              EQU  0x00000002 ; Bit 1
RI_ASMR3_PC_2              EQU  0x00000004 ; Bit 2
RI_ASMR3_PC_3              EQU  0x00000008 ; Bit 3
RI_ASMR3_PC_4              EQU  0x00000010 ; Bit 4
RI_ASMR3_PC_5              EQU  0x00000020 ; Bit 5
RI_ASMR3_PC_6              EQU  0x00000040 ; Bit 6
RI_ASMR3_PC_7              EQU  0x00000080 ; Bit 7
RI_ASMR3_PC_8              EQU  0x00000100 ; Bit 8
RI_ASMR3_PC_9              EQU  0x00000200 ; Bit 9
RI_ASMR3_PC_10             EQU  0x00000400 ; Bit 10
RI_ASMR3_PC_11             EQU  0x00000800 ; Bit 11
RI_ASMR3_PC_12             EQU  0x00001000 ; Bit 12
RI_ASMR3_PC_13             EQU  0x00002000 ; Bit 13
RI_ASMR3_PC_14             EQU  0x00004000 ; Bit 14
RI_ASMR3_PC_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CMR3 register  *******************
RI_CMR3_PC                EQU  0x0000FFFF ; PC[15:0] Port C channel masking
RI_CMR3_PC_0              EQU  0x00000001 ; Bit 0
RI_CMR3_PC_1              EQU  0x00000002 ; Bit 1
RI_CMR3_PC_2              EQU  0x00000004 ; Bit 2
RI_CMR3_PC_3              EQU  0x00000008 ; Bit 3
RI_CMR3_PC_4              EQU  0x00000010 ; Bit 4
RI_CMR3_PC_5              EQU  0x00000020 ; Bit 5
RI_CMR3_PC_6              EQU  0x00000040 ; Bit 6
RI_CMR3_PC_7              EQU  0x00000080 ; Bit 7
RI_CMR3_PC_8              EQU  0x00000100 ; Bit 8
RI_CMR3_PC_9              EQU  0x00000200 ; Bit 9
RI_CMR3_PC_10             EQU  0x00000400 ; Bit 10
RI_CMR3_PC_11             EQU  0x00000800 ; Bit 11
RI_CMR3_PC_12             EQU  0x00001000 ; Bit 12
RI_CMR3_PC_13             EQU  0x00002000 ; Bit 13
RI_CMR3_PC_14             EQU  0x00004000 ; Bit 14
RI_CMR3_PC_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CICR3 register  *******************
RI_CICR3_PC                EQU  0x0000FFFF ; PC[15:0] Port C channel identification for capture
RI_CICR3_PC_0              EQU  0x00000001 ; Bit 0
RI_CICR3_PC_1              EQU  0x00000002 ; Bit 1
RI_CICR3_PC_2              EQU  0x00000004 ; Bit 2
RI_CICR3_PC_3              EQU  0x00000008 ; Bit 3
RI_CICR3_PC_4              EQU  0x00000010 ; Bit 4
RI_CICR3_PC_5              EQU  0x00000020 ; Bit 5
RI_CICR3_PC_6              EQU  0x00000040 ; Bit 6
RI_CICR3_PC_7              EQU  0x00000080 ; Bit 7
RI_CICR3_PC_8              EQU  0x00000100 ; Bit 8
RI_CICR3_PC_9              EQU  0x00000200 ; Bit 9
RI_CICR3_PC_10             EQU  0x00000400 ; Bit 10
RI_CICR3_PC_11             EQU  0x00000800 ; Bit 11
RI_CICR3_PC_12             EQU  0x00001000 ; Bit 12
RI_CICR3_PC_13             EQU  0x00002000 ; Bit 13
RI_CICR3_PC_14             EQU  0x00004000 ; Bit 14
RI_CICR3_PC_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_ASMR4 register  *******************
RI_ASMR4_PF                EQU  0x0000FFFF ; PF[15:0] Port F analog switch mode selection
RI_ASMR4_PF_0              EQU  0x00000001 ; Bit 0
RI_ASMR4_PF_1              EQU  0x00000002 ; Bit 1
RI_ASMR4_PF_2              EQU  0x00000004 ; Bit 2
RI_ASMR4_PF_3              EQU  0x00000008 ; Bit 3
RI_ASMR4_PF_4              EQU  0x00000010 ; Bit 4
RI_ASMR4_PF_5              EQU  0x00000020 ; Bit 5
RI_ASMR4_PF_6              EQU  0x00000040 ; Bit 6
RI_ASMR4_PF_7              EQU  0x00000080 ; Bit 7
RI_ASMR4_PF_8              EQU  0x00000100 ; Bit 8
RI_ASMR4_PF_9              EQU  0x00000200 ; Bit 9
RI_ASMR4_PF_10             EQU  0x00000400 ; Bit 10
RI_ASMR4_PF_11             EQU  0x00000800 ; Bit 11
RI_ASMR4_PF_12             EQU  0x00001000 ; Bit 12
RI_ASMR4_PF_13             EQU  0x00002000 ; Bit 13
RI_ASMR4_PF_14             EQU  0x00004000 ; Bit 14
RI_ASMR4_PF_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CMR4 register  *******************
RI_CMR4_PF                EQU  0x0000FFFF ; PF[15:0] Port F channel masking
RI_CMR4_PF_0              EQU  0x00000001 ; Bit 0
RI_CMR4_PF_1              EQU  0x00000002 ; Bit 1
RI_CMR4_PF_2              EQU  0x00000004 ; Bit 2
RI_CMR4_PF_3              EQU  0x00000008 ; Bit 3
RI_CMR4_PF_4              EQU  0x00000010 ; Bit 4
RI_CMR4_PF_5              EQU  0x00000020 ; Bit 5
RI_CMR4_PF_6              EQU  0x00000040 ; Bit 6
RI_CMR4_PF_7              EQU  0x00000080 ; Bit 7
RI_CMR4_PF_8              EQU  0x00000100 ; Bit 8
RI_CMR4_PF_9              EQU  0x00000200 ; Bit 9
RI_CMR4_PF_10             EQU  0x00000400 ; Bit 10
RI_CMR4_PF_11             EQU  0x00000800 ; Bit 11
RI_CMR4_PF_12             EQU  0x00001000 ; Bit 12
RI_CMR4_PF_13             EQU  0x00002000 ; Bit 13
RI_CMR4_PF_14             EQU  0x00004000 ; Bit 14
RI_CMR4_PF_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CICR4 register  *******************
RI_CICR4_PF                EQU  0x0000FFFF ; PF[15:0] Port F channel identification for capture
RI_CICR4_PF_0              EQU  0x00000001 ; Bit 0
RI_CICR4_PF_1              EQU  0x00000002 ; Bit 1
RI_CICR4_PF_2              EQU  0x00000004 ; Bit 2
RI_CICR4_PF_3              EQU  0x00000008 ; Bit 3
RI_CICR4_PF_4              EQU  0x00000010 ; Bit 4
RI_CICR4_PF_5              EQU  0x00000020 ; Bit 5
RI_CICR4_PF_6              EQU  0x00000040 ; Bit 6
RI_CICR4_PF_7              EQU  0x00000080 ; Bit 7
RI_CICR4_PF_8              EQU  0x00000100 ; Bit 8
RI_CICR4_PF_9              EQU  0x00000200 ; Bit 9
RI_CICR4_PF_10             EQU  0x00000400 ; Bit 10
RI_CICR4_PF_11             EQU  0x00000800 ; Bit 11
RI_CICR4_PF_12             EQU  0x00001000 ; Bit 12
RI_CICR4_PF_13             EQU  0x00002000 ; Bit 13
RI_CICR4_PF_14             EQU  0x00004000 ; Bit 14
RI_CICR4_PF_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_ASMR5 register  *******************
RI_ASMR5_PG                EQU  0x0000FFFF ; PG[15:0] Port G analog switch mode selection
RI_ASMR5_PG_0              EQU  0x00000001 ; Bit 0
RI_ASMR5_PG_1              EQU  0x00000002 ; Bit 1
RI_ASMR5_PG_2              EQU  0x00000004 ; Bit 2
RI_ASMR5_PG_3              EQU  0x00000008 ; Bit 3
RI_ASMR5_PG_4              EQU  0x00000010 ; Bit 4
RI_ASMR5_PG_5              EQU  0x00000020 ; Bit 5
RI_ASMR5_PG_6              EQU  0x00000040 ; Bit 6
RI_ASMR5_PG_7              EQU  0x00000080 ; Bit 7
RI_ASMR5_PG_8              EQU  0x00000100 ; Bit 8
RI_ASMR5_PG_9              EQU  0x00000200 ; Bit 9
RI_ASMR5_PG_10             EQU  0x00000400 ; Bit 10
RI_ASMR5_PG_11             EQU  0x00000800 ; Bit 11
RI_ASMR5_PG_12             EQU  0x00001000 ; Bit 12
RI_ASMR5_PG_13             EQU  0x00002000 ; Bit 13
RI_ASMR5_PG_14             EQU  0x00004000 ; Bit 14
RI_ASMR5_PG_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CMR5 register  *******************
RI_CMR5_PG                EQU  0x0000FFFF ; PG[15:0] Port G channel masking
RI_CMR5_PG_0              EQU  0x00000001 ; Bit 0
RI_CMR5_PG_1              EQU  0x00000002 ; Bit 1
RI_CMR5_PG_2              EQU  0x00000004 ; Bit 2
RI_CMR5_PG_3              EQU  0x00000008 ; Bit 3
RI_CMR5_PG_4              EQU  0x00000010 ; Bit 4
RI_CMR5_PG_5              EQU  0x00000020 ; Bit 5
RI_CMR5_PG_6              EQU  0x00000040 ; Bit 6
RI_CMR5_PG_7              EQU  0x00000080 ; Bit 7
RI_CMR5_PG_8              EQU  0x00000100 ; Bit 8
RI_CMR5_PG_9              EQU  0x00000200 ; Bit 9
RI_CMR5_PG_10             EQU  0x00000400 ; Bit 10
RI_CMR5_PG_11             EQU  0x00000800 ; Bit 11
RI_CMR5_PG_12             EQU  0x00001000 ; Bit 12
RI_CMR5_PG_13             EQU  0x00002000 ; Bit 13
RI_CMR5_PG_14             EQU  0x00004000 ; Bit 14
RI_CMR5_PG_15             EQU  0x00008000 ; Bit 15

;*******************  Bit definition for RI_CICR5 register  *******************
RI_CICR5_PG                EQU  0x0000FFFF ; PG[15:0] Port G channel identification for capture
RI_CICR5_PG_0              EQU  0x00000001 ; Bit 0
RI_CICR5_PG_1              EQU  0x00000002 ; Bit 1
RI_CICR5_PG_2              EQU  0x00000004 ; Bit 2
RI_CICR5_PG_3              EQU  0x00000008 ; Bit 3
RI_CICR5_PG_4              EQU  0x00000010 ; Bit 4
RI_CICR5_PG_5              EQU  0x00000020 ; Bit 5
RI_CICR5_PG_6              EQU  0x00000040 ; Bit 6
RI_CICR5_PG_7              EQU  0x00000080 ; Bit 7
RI_CICR5_PG_8              EQU  0x00000100 ; Bit 8
RI_CICR5_PG_9              EQU  0x00000200 ; Bit 9
RI_CICR5_PG_10             EQU  0x00000400 ; Bit 10
RI_CICR5_PG_11             EQU  0x00000800 ; Bit 11
RI_CICR5_PG_12             EQU  0x00001000 ; Bit 12
RI_CICR5_PG_13             EQU  0x00002000 ; Bit 13
RI_CICR5_PG_14             EQU  0x00004000 ; Bit 14
RI_CICR5_PG_15             EQU  0x00008000 ; Bit 15

	END
