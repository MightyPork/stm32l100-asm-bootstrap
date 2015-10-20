;********************************************************************************
; SOUBOR : INI_CRC.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro CRC (checksum generator)
;
;                       CRC calculation unit (CRC)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

; CRC module

CRC_DR           EQU  (_CRC + 0x00) ; CRC Data register,
CRC_IDR          EQU  (_CRC + 0x04) ; CRC Independent data register,
CRC_CR           EQU  (_CRC + 0x08) ; CRC Control register,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for CRC_DR register  ********************

CRC_DR_DR                        EQU  0xFFFFFFFF        ; Data register bits

;******************  Bit definition for CRC_IDR register  *******************

CRC_IDR_IDR                      EQU  0xFF               ; General-purpose 8-bit data register bits

;*******************  Bit definition for CRC_CR register  *******************

CRC_CR_RESET                     EQU  0x00000001        ; RESET bit

	END