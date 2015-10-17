;********************************************************************************
; SOUBOR : INI_BITS_WWDG.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro WWDG
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;
;                         Window WATCHDOG (WWDG)
;
;****************************************************************************

;******************  Bit definition for WWDG_CR register  *******************
WWDG_CR_T                        EQU  0x7F               ; T[6:0] bits (7-Bit counter (MSB to LSB))
WWDG_CR_T0                       EQU  0x01               ; Bit 0
WWDG_CR_T1                       EQU  0x02               ; Bit 1
WWDG_CR_T2                       EQU  0x04               ; Bit 2
WWDG_CR_T3                       EQU  0x08               ; Bit 3
WWDG_CR_T4                       EQU  0x10               ; Bit 4
WWDG_CR_T5                       EQU  0x20               ; Bit 5
WWDG_CR_T6                       EQU  0x40               ; Bit 6

WWDG_CR_WDGA                     EQU  0x80               ; Activation bit

;******************  Bit definition for WWDG_CFR register  ******************
WWDG_CFR_W                       EQU  0x007F            ; W[6:0] bits (7-bit window value)
WWDG_CFR_W0                      EQU  0x0001            ; Bit 0
WWDG_CFR_W1                      EQU  0x0002            ; Bit 1
WWDG_CFR_W2                      EQU  0x0004            ; Bit 2
WWDG_CFR_W3                      EQU  0x0008            ; Bit 3
WWDG_CFR_W4                      EQU  0x0010            ; Bit 4
WWDG_CFR_W5                      EQU  0x0020            ; Bit 5
WWDG_CFR_W6                      EQU  0x0040            ; Bit 6

WWDG_CFR_WDGTB                   EQU  0x0180            ; WDGTB[1:0] bits (Timer Base)
WWDG_CFR_WDGTB0                  EQU  0x0080            ; Bit 0
WWDG_CFR_WDGTB1                  EQU  0x0100            ; Bit 1

WWDG_CFR_EWI                     EQU  0x0200            ; Early Wakeup Interrupt

;******************  Bit definition for WWDG_SR register  *******************
WWDG_SR_EWIF                     EQU  0x01               ; Early Wakeup Interrupt Flag

	END
