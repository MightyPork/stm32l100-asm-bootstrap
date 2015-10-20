;********************************************************************************
; SOUBOR : INI_WWDG.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro WWDG
;
;                         Window WATCHDOG (WWDG)
;
;                        Independent WATCHDOG (IWDG)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

; Window Watchdog

WWDG_CR      EQU  (_WWDG + 0x00) ; WWDG Control register,
WWDG_CFR     EQU  (_WWDG + 0x04) ; WWDG Configuration register,
WWDG_SR      EQU  (_WWDG + 0x08) ; WWDG Status register,


; Independent Watchdog

IWDG_KR      EQU  (_IWDG + 0x00) ; Key register,
IWDG_PR      EQU  (_IWDG + 0x04) ; Prescaler register,
IWDG_RLR     EQU  (_IWDG + 0x08) ; Reload register,
IWDG_SR      EQU  (_IWDG + 0x0C) ; Status register,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
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



;******************  Bit definition for IWDG_KR register  *******************
IWDG_KR_KEY                      EQU  0xFFFF            ; Key value (write only, read 0000h)

;******************  Bit definition for IWDG_PR register  *******************
IWDG_PR_PR                       EQU  0x07               ; PR[2:0] (Prescaler divider)
IWDG_PR_PR_0                     EQU  0x01               ; Bit 0
IWDG_PR_PR_1                     EQU  0x02               ; Bit 1
IWDG_PR_PR_2                     EQU  0x04               ; Bit 2

;******************  Bit definition for IWDG_RLR register  ******************
IWDG_RLR_RL                      EQU  0x0FFF            ; Watchdog counter reload value

;******************  Bit definition for IWDG_SR register  *******************
IWDG_SR_PVU                      EQU  0x01               ; Watchdog prescaler value update
IWDG_SR_RVU                      EQU  0x02               ; Watchdog counter reload value update


	END
