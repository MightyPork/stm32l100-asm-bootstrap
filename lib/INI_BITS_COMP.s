;********************************************************************************
; SOUBOR : INI_BITS_COMP.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro COMP (analogovy komparator)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;
;                      Analog Comparators (COMP)
;
;****************************************************************************

;*****************  Bit definition for COMP_CSR register  *******************
COMP_CSR_10KPU                   EQU  0x00000001        ; 10K pull-up resistor
COMP_CSR_400KPU                  EQU  0x00000002        ; 400K pull-up resistor
COMP_CSR_10KPD                   EQU  0x00000004        ; 10K pull-down resistor
COMP_CSR_400KPD                  EQU  0x00000008        ; 400K pull-down resistor

COMP_CSR_CMP1EN                  EQU  0x00000010        ; Comparator 1 enable
COMP_CSR_SW1                     EQU  0x00000020        ; SW1 analog switch enable
COMP_CSR_CMP1OUT                 EQU  0x00000080        ; Comparator 1 output

COMP_CSR_SPEED                   EQU  0x00001000        ; Comparator 2 speed
COMP_CSR_CMP2OUT                 EQU  0x00002000        ; Comparator 2 ouput

COMP_CSR_VREFOUTEN               EQU  0x00010000        ; Comparator Vref Enable
COMP_CSR_WNDWE                   EQU  0x00020000        ; Window mode enable

COMP_CSR_INSEL                   EQU  0x001C0000        ; INSEL[2:0] Inversion input Selection
COMP_CSR_INSEL_0                 EQU  0x00040000        ; Bit 0
COMP_CSR_INSEL_1                 EQU  0x00080000        ; Bit 1
COMP_CSR_INSEL_2                 EQU  0x00100000        ; Bit 2

COMP_CSR_OUTSEL                  EQU  0x00E00000        ; OUTSEL[2:0] comparator 2 output redirection
COMP_CSR_OUTSEL_0                EQU  0x00200000        ; Bit 0
COMP_CSR_OUTSEL_1                EQU  0x00400000        ; Bit 1
COMP_CSR_OUTSEL_2                EQU  0x00800000        ; Bit 2

COMP_CSR_FCH3                    EQU  0x04000000        ; Bit 26
COMP_CSR_FCH8                    EQU  0x08000000        ; Bit 27
COMP_CSR_RCH13                   EQU  0x10000000        ; Bit 28

COMP_CSR_CAIE                    EQU  0x20000000        ; Bit 29
COMP_CSR_CAIF                    EQU  0x40000000        ; Bit 30
COMP_CSR_TSUSP                   EQU  0x80000000        ; Bit 31

	END
