;********************************************************************************
; SOUBOR : INI_BITS_SPI.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro SPI
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;
;                     Serial Peripheral Interface (SPI)
;
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
