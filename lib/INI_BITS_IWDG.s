;********************************************************************************
; SOUBOR : INI_BITS_IWDG.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro IWDG
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;
;                        Independent WATCHDOG (IWDG)
;
;****************************************************************************

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
