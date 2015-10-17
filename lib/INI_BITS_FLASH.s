;********************************************************************************
; SOUBOR : INI_BITS_FLASH.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro FLASH
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;
;                FLASH, DATA EEPROM and Option Bytes Registers
;                     EQU  (FLASH, DATA_EEPROM, OB)
;
;****************************************************************************

;******************  Bit definition for FLASH_ACR register  *****************
FLASH_ACR_LATENCY                EQU  0x00000001        ; Latency
FLASH_ACR_PRFTEN                 EQU  0x00000002        ; Prefetch Buffer Enable
FLASH_ACR_ACC64                  EQU  0x00000004        ; Access 64 bits
FLASH_ACR_SLEEP_PD               EQU  0x00000008        ; Flash mode during sleep mode
FLASH_ACR_RUN_PD                 EQU  0x00000010        ; Flash mode during RUN mode

;******************  Bit definition for FLASH_PECR register  *****************
FLASH_PECR_PELOCK                 EQU  0x00000001        ; FLASH_PECR and Flash data Lock
FLASH_PECR_PRGLOCK                EQU  0x00000002        ; Program matrix Lock
FLASH_PECR_OPTLOCK                EQU  0x00000004        ; Option byte matrix Lock
FLASH_PECR_PROG                   EQU  0x00000008        ; Program matrix selection
FLASH_PECR_DATA                   EQU  0x00000010        ; Data matrix selection
FLASH_PECR_FTDW                   EQU  0x00000100        ; Fixed Time Data write for Word/Half Word/Byte programming
FLASH_PECR_ERASE                  EQU  0x00000200        ; Page erasing mode
FLASH_PECR_FPRG                   EQU  0x00000400        ; Fast Page/Half Page programming mode
FLASH_PECR_PARALLBANK             EQU  0x00008000        ; Parallel Bank mode
FLASH_PECR_EOPIE                  EQU  0x00010000        ; End of programming interrupt
FLASH_PECR_ERRIE                  EQU  0x00020000        ; Error interrupt
FLASH_PECR_OBL_LAUNCH             EQU  0x00040000        ; Launch the option byte loading

;*****************  Bit definition for FLASH_PDKEYR register  *****************
FLASH_PDKEYR_PDKEYR              EQU  0xFFFFFFFF       ; FLASH_PEC and data matrix Key

;*****************  Bit definition for FLASH_PEKEYR register  *****************
FLASH_PEKEYR_PEKEYR              EQU  0xFFFFFFFF       ; FLASH_PEC and data matrix Key

;*****************  Bit definition for FLASH_PRGKEYR register  *****************
FLASH_PRGKEYR_PRGKEYR            EQU  0xFFFFFFFF        ; Program matrix Key

;*****************  Bit definition for FLASH_OPTKEYR register  *****************
FLASH_OPTKEYR_OPTKEYR            EQU  0xFFFFFFFF        ; Option bytes matrix Key

;*****************  Bit definition for FLASH_SR register  ******************
FLASH_SR_BSY                     EQU  0x00000001        ; Busy
FLASH_SR_EOP                     EQU  0x00000002        ; End Of Programming
FLASH_SR_ENHV                    EQU  0x00000004        ; End of high voltage
FLASH_SR_READY                   EQU  0x00000008        ; Flash ready after low power mode

FLASH_SR_WRPERR                  EQU  0x00000100        ; Write protected error
FLASH_SR_PGAERR                  EQU  0x00000200        ; Programming Alignment Error
FLASH_SR_SIZERR                  EQU  0x00000400        ; Size error
FLASH_SR_OPTVERR                 EQU  0x00000800        ; Option validity error
FLASH_SR_OPTVERRUSR              EQU  0x00001000        ; Option User validity error
FLASH_SR_RDERR                   EQU  0x00002000        ; Read protected error

;*****************  Bit definition for FLASH_OBR register  ******************
FLASH_OBR_RDPRT                  EQU  0x000000AA        ; Read Protection
FLASH_OBR_SPRMOD                 EQU  0x00000100        ; Selection of protection mode of WPRi bits  (available only in STM32L1xx Medium-density Plus devices)
FLASH_OBR_BOR_LEV                EQU  0x000F0000        ; BOR_LEV[3:0] Brown Out Reset Threshold Level
FLASH_OBR_IWDG_SW                EQU  0x00100000        ; IWDG_SW
FLASH_OBR_nRST_STOP              EQU  0x00200000        ; nRST_STOP
FLASH_OBR_nRST_STDBY             EQU  0x00400000        ; nRST_STDBY
FLASH_OBR_BFB2                   EQU  0x00800000        ; BFB2(available only in STM32L1xx High-density devices)

;*****************  Bit definition for FLASH_WRPR register  *****************
FLASH_WRPR_WRP                   EQU  0xFFFFFFFF        ; Write Protection bits

;*****************  Bit definition for FLASH_WRPR1 register  ****************
FLASH_WRPR1_WRP                  EQU  0xFFFFFFFF        ; Write Protection bits (available only in STM32L1xx  Medium-density Plus and High-density devices)

;*****************  Bit definition for FLASH_WRPR2 register  ****************
FLASH_WRPR2_WRP                  EQU  0xFFFFFFFF        ; Write Protection bits (available only in STM32L1xx High-density devices)

	END
