;********************************************************************************
; SOUBOR : INI_SPI.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro SPI
;
;                     Serial Peripheral Interface (SPI)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

; SPI 1

SPI1_CR1      EQU  (_SPI1 + 0x00) ; SPI1 control register 1 (not used in I2S mode),
SPI1_CR2      EQU  (_SPI1 + 0x04) ; SPI1 control register 2,
SPI1_SR       EQU  (_SPI1 + 0x08) ; SPI1 status register,
SPI1_DR       EQU  (_SPI1 + 0x0C) ; SPI1 data register,
SPI1_CRCPR    EQU  (_SPI1 + 0x10) ; SPI1 CRC polynomial register (not used in I2S mode),
SPI1_RXCRCR   EQU  (_SPI1 + 0x14) ; SPI1 RX CRC register (not used in I2S mode),
SPI1_TXCRCR   EQU  (_SPI1 + 0x18) ; SPI1 TX CRC register (not used in I2S mode),
SPI1_I2SCFGR  EQU  (_SPI1 + 0x1C) ; SPI1_I2S configuration register,
SPI1_I2SPR    EQU  (_SPI1 + 0x20) ; SPI1_I2S prescaler register,

; SPI 2

SPI2_CR1     EQU  (_SPI2 + 0x00) ; SPI2 control register 1 (not used in I2S mode),
SPI2_CR2     EQU  (_SPI2 + 0x04) ; SPI2 control register 2,
SPI2_SR      EQU  (_SPI2 + 0x08) ; SPI2 status register,
SPI2_DR      EQU  (_SPI2 + 0x0C) ; SPI2 data register,
SPI2_CRCPR   EQU  (_SPI2 + 0x10) ; SPI2 CRC polynomial register (not used in I2S mode),
SPI2_RXCRCR  EQU  (_SPI2 + 0x14) ; SPI2 RX CRC register (not used in I2S mode),
SPI2_TXCRCR  EQU  (_SPI2 + 0x18) ; SPI2 TX CRC register (not used in I2S mode),
SPI2_I2SCFGR EQU  (_SPI2 + 0x1C) ; SPI2_I2S configuration register,
SPI2_I2SPR   EQU  (_SPI2 + 0x20) ; SPI2_I2S prescaler register,

; SPI 3

SPI3_CR1       EQU  (_SPI3 + 0x00) ; SPI3 control register 1 (not used in I2S mode),
SPI3_CR2       EQU  (_SPI3 + 0x04) ; SPI3 control register 2,
SPI3_SR        EQU  (_SPI3 + 0x08) ; SPI3 status register,
SPI3_DR        EQU  (_SPI3 + 0x0C) ; SPI3 data register,
SPI3_CRCPR     EQU  (_SPI3 + 0x10) ; SPI3 CRC polynomial register (not used in I2S mode),
SPI3_RXCRCR    EQU  (_SPI3 + 0x14) ; SPI3 RX CRC register (not used in I2S mode),
SPI3_TXCRCR    EQU  (_SPI3 + 0x18) ; SPI3 TX CRC register (not used in I2S mode),
SPI3_I2SCFGR   EQU  (_SPI3 + 0x1C) ; SPI3_I2S configuration register,
SPI3_I2SPR     EQU  (_SPI3 + 0x20) ; SPI3_I2S prescaler register,



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for SPI_CR1 register  *******************
SPI_CR1_CPHA                     EQU  0x0001            ; Clock Phase
SPI_CR1_CPOL                     EQU  0x0002            ; Clock Polarity
SPI_CR1_MSTR                     EQU  0x0004            ; Master Selection

SPI_CR1_BR                       EQU  0x0038            ; BR[2:0] bits (Baud Rate Control)
SPI_CR1_BR_0                     EQU  0x0008            ; Bit 0
SPI_CR1_BR_1                     EQU  0x0010            ; Bit 1
SPI_CR1_BR_2                     EQU  0x0020            ; Bit 2

SPI_CR1_SPE                      EQU  0x0040            ; SPI Enable
SPI_CR1_LSBFIRST                 EQU  0x0080            ; Frame Format
SPI_CR1_SSI                      EQU  0x0100            ; Internal slave select
SPI_CR1_SSM                      EQU  0x0200            ; Software slave management
SPI_CR1_RXONLY                   EQU  0x0400            ; Receive only
SPI_CR1_DFF                      EQU  0x0800            ; Data Frame Format
SPI_CR1_CRCNEXT                  EQU  0x1000            ; Transmit CRC next
SPI_CR1_CRCEN                    EQU  0x2000            ; Hardware CRC calculation enable
SPI_CR1_BIDIOE                   EQU  0x4000            ; Output enable in bidirectional mode
SPI_CR1_BIDIMODE                 EQU  0x8000            ; Bidirectional data mode enable

;******************  Bit definition for SPI_CR2 register  *******************
SPI_CR2_RXDMAEN                  EQU  0x01               ; Rx Buffer DMA Enable
SPI_CR2_TXDMAEN                  EQU  0x02               ; Tx Buffer DMA Enable
SPI_CR2_SSOE                     EQU  0x04               ; SS Output Enable
SPI_CR2_FRF                      EQU  0x08               ; Frame format
SPI_CR2_ERRIE                    EQU  0x20               ; Error Interrupt Enable
SPI_CR2_RXNEIE                   EQU  0x40               ; RX buffer Not Empty Interrupt Enable
SPI_CR2_TXEIE                    EQU  0x80               ; Tx buffer Empty Interrupt Enable

;*******************  Bit definition for SPI_SR register  *******************
SPI_SR_RXNE                      EQU  0x01               ; Receive buffer Not Empty
SPI_SR_TXE                       EQU  0x02               ; Transmit buffer Empty
SPI_SR_CHSIDE                    EQU  0x04               ; Channel side
SPI_SR_UDR                       EQU  0x08               ; Underrun flag
SPI_SR_CRCERR                    EQU  0x10               ; CRC Error flag
SPI_SR_MODF                      EQU  0x20               ; Mode fault
SPI_SR_OVR                       EQU  0x40               ; Overrun flag
SPI_SR_BSY                       EQU  0x80               ; Busy flag

;*******************  Bit definition for SPI_DR register  *******************
SPI_DR_DR                        EQU  0xFFFF            ; Data Register

;******************  Bit definition for SPI_CRCPR register  *****************
SPI_CRCPR_CRCPOLY                EQU  0xFFFF            ; CRC polynomial register

;*****************  Bit definition for SPI_RXCRCR register  *****************
SPI_RXCRCR_RXCRC                 EQU  0xFFFF            ; Rx CRC Register

;*****************  Bit definition for SPI_TXCRCR register  *****************
SPI_TXCRCR_TXCRC                 EQU  0xFFFF            ; Tx CRC Register

;*****************  Bit definition for SPI_I2SCFGR register  ****************
SPI_I2SCFGR_CHLEN                EQU  0x0001            ; Channel length (number of bits per audio channel)

SPI_I2SCFGR_DATLEN               EQU  0x0006            ; DATLEN[1:0] bits (Data length to be transferred)
SPI_I2SCFGR_DATLEN_0             EQU  0x0002            ; Bit 0
SPI_I2SCFGR_DATLEN_1             EQU  0x0004            ; Bit 1

SPI_I2SCFGR_CKPOL                EQU  0x0008            ; steady state clock polarity

SPI_I2SCFGR_I2SSTD               EQU  0x0030            ; I2SSTD[1:0] bits (I2S standard selection)
SPI_I2SCFGR_I2SSTD_0             EQU  0x0010            ; Bit 0
SPI_I2SCFGR_I2SSTD_1             EQU  0x0020            ; Bit 1

SPI_I2SCFGR_PCMSYNC              EQU  0x0080            ; PCM frame synchronization

SPI_I2SCFGR_I2SCFG               EQU  0x0300            ; I2SCFG[1:0] bits (I2S configuration mode)
SPI_I2SCFGR_I2SCFG_0             EQU  0x0100            ; Bit 0
SPI_I2SCFGR_I2SCFG_1             EQU  0x0200            ; Bit 1

SPI_I2SCFGR_I2SE                 EQU  0x0400            ; I2S Enable
SPI_I2SCFGR_I2SMOD               EQU  0x0800            ; I2S mode selection

;*****************  Bit definition for SPI_I2SPR register  ******************
SPI_I2SPR_I2SDIV                 EQU  0x00FF            ; I2S Linear prescaler
SPI_I2SPR_ODD                    EQU  0x0100            ; Odd factor for the prescaler
SPI_I2SPR_MCKOE                  EQU  0x0200            ; Master Clock Output Enable

	END
