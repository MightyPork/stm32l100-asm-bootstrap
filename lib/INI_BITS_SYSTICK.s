;********************************************************************************
; SOUBOR : INI_BITS_SYSTICK.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro SYSTICK (casovac pro RTOS)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;
;                        SystemTick (SysTick)
;
;****************************************************************************

;****************  Bit definition for SysTick_CSR register  ****************
SysTick_CSR_ENABLE              EQU  0x00000001        ; Counter enable
SysTick_CSR_TICKINT             EQU  0x00000002        ; Enable interrupt when counter reaches zero
SysTick_CSR_CLKSOURCE           EQU  0x00000004        ; Clock source (0 - external, 1 - core clock)

SysTick_CSR_CLKSOURCE_CORE      EQU  0x00000004        ; Clock source - core clock
SysTick_CSR_CLKSOURCE_DIV8      EQU  0x00000000        ; Clock source - core clock / 8

SysTick_CSR_COUNTFLAG           EQU  0x00010000        ; Count Flag (only if interrupt is disabled)

;****************  Bit definition for SysTick_LOAD register  ****************
SysTick_RELOAD_MASK               EQU  0x00FFFFFF        ; Value to load into the SysTick Current Value Register when the counter reaches 0

;****************  Bit definition for SysTick_VAL register  *****************
SysTick_VAL_MASK                EQU  0x00FFFFFF        ; Current value at the time the register is accessed

;****************  Bit definition for SysTick_CALIB register  ***************
SysTick_CALIB_TENMS             EQU  0x00FFFFFF        ; Reload value to use for 10ms timing
SysTick_CALIB_SKEW              EQU  0x40000000        ; Calibration value is not exactly 10 ms
SysTick_CALIB_NOREF             EQU  0x80000000        ; The reference clock is not provided

	END
