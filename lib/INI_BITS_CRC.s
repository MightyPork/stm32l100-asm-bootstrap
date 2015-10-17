;********************************************************************************
; SOUBOR : INI_BITS_CRC.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro CRC (checksum generator)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;
;                       CRC calculation unit (CRC)
;
;****************************************************************************

;******************  Bit definition for CRC_DR register  ********************
CRC_DR_DR                        EQU  0xFFFFFFFF        ; Data register bits

;******************  Bit definition for CRC_IDR register  *******************
CRC_IDR_IDR                      EQU  0xFF               ; General-purpose 8-bit data register bits

;*******************  Bit definition for CRC_CR register  *******************
CRC_CR_RESET                     EQU  0x00000001        ; RESET bit

	END
