;********************************************************************************
; SOUBOR : INI_BITS_SYSCFG.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro SYSCFG (EXTI routing atd.)
;
;                       System Configuration (SYSCFG)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

; Syscfg

SYSCFG_MEMRMP    EQU  (_SYSCFG + 0x00) ; SYSCFG memory remap register,
SYSCFG_PMC       EQU  (_SYSCFG + 0x04) ; SYSCFG peripheral mode configuration register,
SYSCFG_EXTICR1   EQU  (_SYSCFG + 0x08) ; SYSCFG external interrupt configuration registers,
SYSCFG_EXTICR2   EQU  (_SYSCFG + 0x0C) ; SYSCFG external interrupt configuration registers,
SYSCFG_EXTICR3   EQU  (_SYSCFG + 0x10) ; SYSCFG external interrupt configuration registers,
SYSCFG_EXTICR4   EQU  (_SYSCFG + 0x14) ; SYSCFG external interrupt configuration registers,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;****************  Bit definition for SYSCFG_MEMRMP register  ***************
SYSCFG_MEMRMP_MEM_MODE       EQU  0x00000003 ; SYSCFG_Memory Remap Config
SYSCFG_MEMRMP_MEM_MODE_0     EQU  0x00000001 ; Bit 0
SYSCFG_MEMRMP_MEM_MODE_1     EQU  0x00000002 ; Bit 1
SYSCFG_MEMRMP_BOOT_MODE      EQU  0x00000300 ; Boot mode Config
SYSCFG_MEMRMP_BOOT_MODE_0    EQU  0x00000100 ; Bit 0
SYSCFG_MEMRMP_BOOT_MODE_1    EQU  0x00000200 ; Bit 1

;****************  Bit definition for SYSCFG_PMC register  ******************
SYSCFG_PMC_USB_PU            EQU  0x00000001 ; SYSCFG PMC

;****************  Bit definition for SYSCFG_EXTICR1 register  **************
SYSCFG_EXTICR1_EXTI0         EQU  0x000F ; EXTI 0 configuration
SYSCFG_EXTICR1_EXTI1         EQU  0x00F0 ; EXTI 1 configuration
SYSCFG_EXTICR1_EXTI2         EQU  0x0F00 ; EXTI 2 configuration
SYSCFG_EXTICR1_EXTI3         EQU  0xF000 ; EXTI 3 configuration


;  EXTI0 configuration

SYSCFG_EXTICR1_EXTI0_PA      EQU  0x0000 ; PA[0] pin
SYSCFG_EXTICR1_EXTI0_PB      EQU  0x0001 ; PB[0] pin
SYSCFG_EXTICR1_EXTI0_PC      EQU  0x0002 ; PC[0] pin
SYSCFG_EXTICR1_EXTI0_PD      EQU  0x0003 ; PD[0] pin
SYSCFG_EXTICR1_EXTI0_PE      EQU  0x0004 ; PE[0] pin
SYSCFG_EXTICR1_EXTI0_PH      EQU  0x0005 ; PH[0] pin
SYSCFG_EXTICR1_EXTI0_PF      EQU  0x0006 ; PF[0] pin
SYSCFG_EXTICR1_EXTI0_PG      EQU  0x0007 ; PG[0] pin


;  EXTI1 configuration

SYSCFG_EXTICR1_EXTI1_PA      EQU  0x0000 ; PA[1] pin
SYSCFG_EXTICR1_EXTI1_PB      EQU  0x0010 ; PB[1] pin
SYSCFG_EXTICR1_EXTI1_PC      EQU  0x0020 ; PC[1] pin
SYSCFG_EXTICR1_EXTI1_PD      EQU  0x0030 ; PD[1] pin
SYSCFG_EXTICR1_EXTI1_PE      EQU  0x0040 ; PE[1] pin
SYSCFG_EXTICR1_EXTI1_PH      EQU  0x0050 ; PH[1] pin
SYSCFG_EXTICR1_EXTI1_PF      EQU  0x0060 ; PF[1] pin
SYSCFG_EXTICR1_EXTI1_PG      EQU  0x0070 ; PG[1] pin


;  EXTI2 configuration

SYSCFG_EXTICR1_EXTI2_PA      EQU  0x0000 ; PA[2] pin
SYSCFG_EXTICR1_EXTI2_PB      EQU  0x0100 ; PB[2] pin
SYSCFG_EXTICR1_EXTI2_PC      EQU  0x0200 ; PC[2] pin
SYSCFG_EXTICR1_EXTI2_PD      EQU  0x0300 ; PD[2] pin
SYSCFG_EXTICR1_EXTI2_PE      EQU  0x0400 ; PE[2] pin
SYSCFG_EXTICR1_EXTI2_PH      EQU  0x0500 ; PH[2] pin
SYSCFG_EXTICR1_EXTI2_PF      EQU  0x0600 ; PF[2] pin
SYSCFG_EXTICR1_EXTI2_PG      EQU  0x0700 ; PG[2] pin


;  EXTI3 configuration

SYSCFG_EXTICR1_EXTI3_PA      EQU  0x0000 ; PA[3] pin
SYSCFG_EXTICR1_EXTI3_PB      EQU  0x1000 ; PB[3] pin
SYSCFG_EXTICR1_EXTI3_PC      EQU  0x2000 ; PC[3] pin
SYSCFG_EXTICR1_EXTI3_PD      EQU  0x3000 ; PD[3] pin
SYSCFG_EXTICR1_EXTI3_PE      EQU  0x4000 ; PE[3] pin
SYSCFG_EXTICR1_EXTI3_PF      EQU  0x3000 ; PF[3] pin
SYSCFG_EXTICR1_EXTI3_PG      EQU  0x4000 ; PG[3] pin

;****************  Bit definition for SYSCFG_EXTICR2 register  ****************
SYSCFG_EXTICR2_EXTI4         EQU  0x000F ; EXTI 4 configuration
SYSCFG_EXTICR2_EXTI5         EQU  0x00F0 ; EXTI 5 configuration
SYSCFG_EXTICR2_EXTI6         EQU  0x0F00 ; EXTI 6 configuration
SYSCFG_EXTICR2_EXTI7         EQU  0xF000 ; EXTI 7 configuration


;  EXTI4 configuration

SYSCFG_EXTICR2_EXTI4_PA      EQU  0x0000 ; PA[4] pin
SYSCFG_EXTICR2_EXTI4_PB      EQU  0x0001 ; PB[4] pin
SYSCFG_EXTICR2_EXTI4_PC      EQU  0x0002 ; PC[4] pin
SYSCFG_EXTICR2_EXTI4_PD      EQU  0x0003 ; PD[4] pin
SYSCFG_EXTICR2_EXTI4_PE      EQU  0x0004 ; PE[4] pin
SYSCFG_EXTICR2_EXTI4_PF      EQU  0x0006 ; PF[4] pin
SYSCFG_EXTICR2_EXTI4_PG      EQU  0x0007 ; PG[4] pin


;  EXTI5 configuration

SYSCFG_EXTICR2_EXTI5_PA      EQU  0x0000 ; PA[5] pin
SYSCFG_EXTICR2_EXTI5_PB      EQU  0x0010 ; PB[5] pin
SYSCFG_EXTICR2_EXTI5_PC      EQU  0x0020 ; PC[5] pin
SYSCFG_EXTICR2_EXTI5_PD      EQU  0x0030 ; PD[5] pin
SYSCFG_EXTICR2_EXTI5_PE      EQU  0x0040 ; PE[5] pin
SYSCFG_EXTICR2_EXTI5_PF      EQU  0x0060 ; PF[5] pin
SYSCFG_EXTICR2_EXTI5_PG      EQU  0x0070 ; PG[5] pin


;  EXTI6 configuration

SYSCFG_EXTICR2_EXTI6_PA      EQU  0x0000 ; PA[6] pin
SYSCFG_EXTICR2_EXTI6_PB      EQU  0x0100 ; PB[6] pin
SYSCFG_EXTICR2_EXTI6_PC      EQU  0x0200 ; PC[6] pin
SYSCFG_EXTICR2_EXTI6_PD      EQU  0x0300 ; PD[6] pin
SYSCFG_EXTICR2_EXTI6_PE      EQU  0x0400 ; PE[6] pin
SYSCFG_EXTICR2_EXTI6_PF      EQU  0x0600 ; PF[6] pin
SYSCFG_EXTICR2_EXTI6_PG      EQU  0x0700 ; PG[6] pin


;  EXTI7 configuration

SYSCFG_EXTICR2_EXTI7_PA      EQU  0x0000 ; PA[7] pin
SYSCFG_EXTICR2_EXTI7_PB      EQU  0x1000 ; PB[7] pin
SYSCFG_EXTICR2_EXTI7_PC      EQU  0x2000 ; PC[7] pin
SYSCFG_EXTICR2_EXTI7_PD      EQU  0x3000 ; PD[7] pin
SYSCFG_EXTICR2_EXTI7_PE      EQU  0x4000 ; PE[7] pin
SYSCFG_EXTICR2_EXTI7_PF      EQU  0x6000 ; PF[7] pin
SYSCFG_EXTICR2_EXTI7_PG      EQU  0x7000 ; PG[7] pin

;****************  Bit definition for SYSCFG_EXTICR3 register  ****************
SYSCFG_EXTICR3_EXTI8         EQU  0x000F ; EXTI 8 configuration
SYSCFG_EXTICR3_EXTI9         EQU  0x00F0 ; EXTI 9 configuration
SYSCFG_EXTICR3_EXTI10        EQU  0x0F00 ; EXTI 10 configuration
SYSCFG_EXTICR3_EXTI11        EQU  0xF000 ; EXTI 11 configuration


;  EXTI8 configuration

SYSCFG_EXTICR3_EXTI8_PA      EQU  0x0000 ; PA[8] pin
SYSCFG_EXTICR3_EXTI8_PB      EQU  0x0001 ; PB[8] pin
SYSCFG_EXTICR3_EXTI8_PC      EQU  0x0002 ; PC[8] pin
SYSCFG_EXTICR3_EXTI8_PD      EQU  0x0003 ; PD[8] pin
SYSCFG_EXTICR3_EXTI8_PE      EQU  0x0004 ; PE[8] pin
SYSCFG_EXTICR3_EXTI8_PF      EQU  0x0006 ; PF[8] pin
SYSCFG_EXTICR3_EXTI8_PG      EQU  0x0007 ; PG[8] pin


;  EXTI9 configuration

SYSCFG_EXTICR3_EXTI9_PA      EQU  0x0000 ; PA[9] pin
SYSCFG_EXTICR3_EXTI9_PB      EQU  0x0010 ; PB[9] pin
SYSCFG_EXTICR3_EXTI9_PC      EQU  0x0020 ; PC[9] pin
SYSCFG_EXTICR3_EXTI9_PD      EQU  0x0030 ; PD[9] pin
SYSCFG_EXTICR3_EXTI9_PE      EQU  0x0040 ; PE[9] pin
SYSCFG_EXTICR3_EXTI9_PF      EQU  0x0060 ; PF[9] pin
SYSCFG_EXTICR3_EXTI9_PG      EQU  0x0070 ; PG[9] pin


;  EXTI10 configuration

SYSCFG_EXTICR3_EXTI10_PA     EQU  0x0000 ; PA[10] pin
SYSCFG_EXTICR3_EXTI10_PB     EQU  0x0100 ; PB[10] pin
SYSCFG_EXTICR3_EXTI10_PC     EQU  0x0200 ; PC[10] pin
SYSCFG_EXTICR3_EXTI10_PD     EQU  0x0300 ; PD[10] pin
SYSCFG_EXTICR3_EXTI10_PE     EQU  0x0400 ; PE[10] pin
SYSCFG_EXTICR3_EXTI10_PF     EQU  0x0600 ; PF[10] pin
SYSCFG_EXTICR3_EXTI10_PG     EQU  0x0700 ; PG[10] pin


;  EXTI11 configuration

SYSCFG_EXTICR3_EXTI11_PA     EQU  0x0000 ; PA[11] pin
SYSCFG_EXTICR3_EXTI11_PB     EQU  0x1000 ; PB[11] pin
SYSCFG_EXTICR3_EXTI11_PC     EQU  0x2000 ; PC[11] pin
SYSCFG_EXTICR3_EXTI11_PD     EQU  0x3000 ; PD[11] pin
SYSCFG_EXTICR3_EXTI11_PE     EQU  0x4000 ; PE[11] pin
SYSCFG_EXTICR3_EXTI11_PF     EQU  0x6000 ; PF[11] pin
SYSCFG_EXTICR3_EXTI11_PG     EQU  0x7000 ; PG[11] pin

;****************  Bit definition for SYSCFG_EXTICR4 register  ****************
SYSCFG_EXTICR4_EXTI12        EQU  0x000F ; EXTI 12 configuration
SYSCFG_EXTICR4_EXTI13        EQU  0x00F0 ; EXTI 13 configuration
SYSCFG_EXTICR4_EXTI14        EQU  0x0F00 ; EXTI 14 configuration
SYSCFG_EXTICR4_EXTI15        EQU  0xF000 ; EXTI 15 configuration


;  EXTI12 configuration

SYSCFG_EXTICR4_EXTI12_PA     EQU  0x0000 ; PA[12] pin
SYSCFG_EXTICR4_EXTI12_PB     EQU  0x0001 ; PB[12] pin
SYSCFG_EXTICR4_EXTI12_PC     EQU  0x0002 ; PC[12] pin
SYSCFG_EXTICR4_EXTI12_PD     EQU  0x0003 ; PD[12] pin
SYSCFG_EXTICR4_EXTI12_PE     EQU  0x0004 ; PE[12] pin
SYSCFG_EXTICR4_EXTI12_PF     EQU  0x0006 ; PF[12] pin
SYSCFG_EXTICR4_EXTI12_PG     EQU  0x0007 ; PG[12] pin


;  EXTI13 configuration

SYSCFG_EXTICR4_EXTI13_PA     EQU  0x0000 ; PA[13] pin
SYSCFG_EXTICR4_EXTI13_PB     EQU  0x0010 ; PB[13] pin
SYSCFG_EXTICR4_EXTI13_PC     EQU  0x0020 ; PC[13] pin
SYSCFG_EXTICR4_EXTI13_PD     EQU  0x0030 ; PD[13] pin
SYSCFG_EXTICR4_EXTI13_PE     EQU  0x0040 ; PE[13] pin
SYSCFG_EXTICR4_EXTI13_PF     EQU  0x0060 ; PF[13] pin
SYSCFG_EXTICR4_EXTI13_PG     EQU  0x0070 ; PG[13] pin


;  EXTI14 configuration

SYSCFG_EXTICR4_EXTI14_PA     EQU  0x0000 ; PA[14] pin
SYSCFG_EXTICR4_EXTI14_PB     EQU  0x0100 ; PB[14] pin
SYSCFG_EXTICR4_EXTI14_PC     EQU  0x0200 ; PC[14] pin
SYSCFG_EXTICR4_EXTI14_PD     EQU  0x0300 ; PD[14] pin
SYSCFG_EXTICR4_EXTI14_PE     EQU  0x0400 ; PE[14] pin
SYSCFG_EXTICR4_EXTI14_PF     EQU  0x0600 ; PF[14] pin
SYSCFG_EXTICR4_EXTI14_PG     EQU  0x0700 ; PG[14] pin


;  EXTI15 configuration

SYSCFG_EXTICR4_EXTI15_PA     EQU  0x0000 ; PA[15] pin
SYSCFG_EXTICR4_EXTI15_PB     EQU  0x1000 ; PB[15] pin
SYSCFG_EXTICR4_EXTI15_PC     EQU  0x2000 ; PC[15] pin
SYSCFG_EXTICR4_EXTI15_PD     EQU  0x3000 ; PD[15] pin
SYSCFG_EXTICR4_EXTI15_PE     EQU  0x4000 ; PE[15] pin
SYSCFG_EXTICR4_EXTI15_PF     EQU  0x6000 ; PF[15] pin
SYSCFG_EXTICR4_EXTI15_PG     EQU  0x7000 ; PG[15] pin

	END
