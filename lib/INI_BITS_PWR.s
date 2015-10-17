;********************************************************************************
; SOUBOR : INI_BITS_PWR.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro PWR (napajeni, sleep...)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;
;                          Power Control (PWR)
;
;****************************************************************************

;*******************  Bit definition for PWR_CR register  *******************
PWR_CR_LPSDSR                    EQU  0x0001     ; Low-power deepsleep/sleep/low power run
PWR_CR_PDDS                      EQU  0x0002     ; Power Down Deepsleep
PWR_CR_CWUF                      EQU  0x0004     ; Clear Wakeup Flag
PWR_CR_CSBF                      EQU  0x0008     ; Clear Standby Flag
PWR_CR_PVDE                      EQU  0x0010     ; Power Voltage Detector Enable

PWR_CR_PLS                       EQU  0x00E0     ; PLS[2:0] bits (PVD Level Selection)
PWR_CR_PLS_0                     EQU  0x0020     ; Bit 0
PWR_CR_PLS_1                     EQU  0x0040     ; Bit 1
PWR_CR_PLS_2                     EQU  0x0080     ; Bit 2

; PVD level configuration
PWR_CR_PLS_LEV0                  EQU  0x0000     ; PVD level 0
PWR_CR_PLS_LEV1                  EQU  0x0020     ; PVD level 1
PWR_CR_PLS_LEV2                  EQU  0x0040     ; PVD level 2
PWR_CR_PLS_LEV3                  EQU  0x0060     ; PVD level 3
PWR_CR_PLS_LEV4                  EQU  0x0080     ; PVD level 4
PWR_CR_PLS_LEV5                  EQU  0x00A0     ; PVD level 5
PWR_CR_PLS_LEV6                  EQU  0x00C0     ; PVD level 6
PWR_CR_PLS_LEV7                  EQU  0x00E0     ; PVD level 7

PWR_CR_DBP                       EQU  0x0100     ; Disable Backup Domain write protection
PWR_CR_ULP                       EQU  0x0200     ; Ultra Low Power mode
PWR_CR_FWU                       EQU  0x0400     ; Fast wakeup

PWR_CR_VOS                       EQU  0x1800     ; VOS[1:0] bits (Voltage scaling range selection)
PWR_CR_VOS_0                     EQU  0x0800     ; Bit 0
PWR_CR_VOS_1                     EQU  0x1000     ; Bit 1
PWR_CR_LPRUN                     EQU  0x4000     ; Low power run mode

;******************  Bit definition for PWR_CSR register  *******************
PWR_CSR_WUF                      EQU  0x0001     ; Wakeup Flag
PWR_CSR_SBF                      EQU  0x0002     ; Standby Flag
PWR_CSR_PVDO                     EQU  0x0004     ; PVD Output
PWR_CSR_VREFINTRDYF              EQU  0x0008     ; Internal voltage reference (VREFINT) ready flag
PWR_CSR_VOSF                     EQU  0x0010     ; Voltage Scaling select flag
PWR_CSR_REGLPF                   EQU  0x0020     ; Regulator LP flag

PWR_CSR_EWUP1                    EQU  0x0100     ; Enable WKUP pin 1
PWR_CSR_EWUP2                    EQU  0x0200     ; Enable WKUP pin 2
PWR_CSR_EWUP3                    EQU  0x0400     ; Enable WKUP pin 3

	END
