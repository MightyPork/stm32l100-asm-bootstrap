;********************************************************************************
; SOUBOR : INI_BITS_SDIO.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro SDIO
;
;                          SD host Interface
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

; SD host

SDIO_POWER    EQU  (_SDIO + 0x00) ; SDIO power control register,
SDIO_CLKCR    EQU  (_SDIO + 0x04) ; SDI clock control register,
SDIO_ARG      EQU  (_SDIO + 0x08) ; SDIO argument register,
SDIO_CMD      EQU  (_SDIO + 0x0C) ; SDIO command register,
SDIO_RESPCMD  EQU  (_SDIO + 0x10) ; SDIO command response register,
SDIO_RESP1    EQU  (_SDIO + 0x14) ; SDIO response 1 register,
SDIO_RESP2    EQU  (_SDIO + 0x18) ; SDIO response 2 register,
SDIO_RESP3    EQU  (_SDIO + 0x1C) ; SDIO response 3 register,
SDIO_RESP4    EQU  (_SDIO + 0x20) ; SDIO response 4 register,
SDIO_DTIMER   EQU  (_SDIO + 0x24) ; SDIO data timer register,
SDIO_DLEN     EQU  (_SDIO + 0x28) ; SDIO data length register,
SDIO_DCTRL    EQU  (_SDIO + 0x2C) ; SDIO data control register,
SDIO_DCOUNT   EQU  (_SDIO + 0x30) ; SDIO data counter register,
SDIO_STA      EQU  (_SDIO + 0x34) ; SDIO status register,
SDIO_ICR      EQU  (_SDIO + 0x38) ; SDIO interrupt clear register,
SDIO_MASK     EQU  (_SDIO + 0x3C) ; SDIO mask register,
SDIO_FIFOCNT  EQU  (_SDIO + 0x48) ; SDIO FIFO counter register,
SDIO_FIFO     EQU  (_SDIO + 0x80) ; SDIO data FIFO register,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;*****************  Bit definition for SDIO_POWER register  *****************
SDIO_POWER_PWRCTRL               EQU  0x03               ; PWRCTRL[1:0] bits (Power supply control bits)
SDIO_POWER_PWRCTRL_0             EQU  0x01               ; Bit 0
SDIO_POWER_PWRCTRL_1             EQU  0x02               ; Bit 1

;*****************  Bit definition for SDIO_CLKCR register  *****************
SDIO_CLKCR_CLKDIV                EQU  0x00FF            ; Clock divide factor
SDIO_CLKCR_CLKEN                 EQU  0x0100            ; Clock enable bit
SDIO_CLKCR_PWRSAV                EQU  0x0200            ; Power saving configuration bit
SDIO_CLKCR_BYPASS                EQU  0x0400            ; Clock divider bypass enable bit

SDIO_CLKCR_WIDBUS                EQU  0x1800            ; WIDBUS[1:0] bits (Wide bus mode enable bit)
SDIO_CLKCR_WIDBUS_0              EQU  0x0800            ; Bit 0
SDIO_CLKCR_WIDBUS_1              EQU  0x1000            ; Bit 1

SDIO_CLKCR_NEGEDGE               EQU  0x2000            ; SDIO_CK dephasing selection bit
SDIO_CLKCR_HWFC_EN               EQU  0x4000            ; HW Flow Control enable

;******************  Bit definition for SDIO_ARG register  ******************
SDIO_ARG_CMDARG                  EQU  0xFFFFFFFF            ; Command argument

;******************  Bit definition for SDIO_CMD register  ******************
SDIO_CMD_CMDINDEX                EQU  0x003F            ; Command Index

SDIO_CMD_WAITRESP                EQU  0x00C0            ; WAITRESP[1:0] bits (Wait for response bits)
SDIO_CMD_WAITRESP_0              EQU  0x0040            ; Bit 0
SDIO_CMD_WAITRESP_1              EQU  0x0080            ; Bit 1

SDIO_CMD_WAITINT                 EQU  0x0100            ; CPSM Waits for Interrupt Request
SDIO_CMD_WAITPEND                EQU  0x0200            ; CPSM Waits for ends of data transfer (CmdPend internal signal)
SDIO_CMD_CPSMEN                  EQU  0x0400            ; Command path state machine (CPSM) Enable bit
SDIO_CMD_SDIOSUSPEND             EQU  0x0800            ; SD I/O suspend command
SDIO_CMD_ENCMDCOMPL              EQU  0x1000            ; Enable CMD completion
SDIO_CMD_NIEN                    EQU  0x2000            ; Not Interrupt Enable
SDIO_CMD_CEATACMD                EQU  0x4000            ; CE-ATA command

;****************  Bit definition for SDIO_RESPCMD register  ****************
SDIO_RESPCMD_RESPCMD             EQU  0x3F               ; Response command index

;*****************  Bit definition for SDIO_RESP0 register  *****************
SDIO_RESP0_CARDSTATUS0           EQU  0xFFFFFFFF        ; Card Status

;*****************  Bit definition for SDIO_RESP1 register  *****************
SDIO_RESP1_CARDSTATUS1           EQU  0xFFFFFFFF        ; Card Status

;*****************  Bit definition for SDIO_RESP2 register  *****************
SDIO_RESP2_CARDSTATUS2           EQU  0xFFFFFFFF        ; Card Status

;*****************  Bit definition for SDIO_RESP3 register  *****************
SDIO_RESP3_CARDSTATUS3           EQU  0xFFFFFFFF        ; Card Status

;*****************  Bit definition for SDIO_RESP4 register  *****************
SDIO_RESP4_CARDSTATUS4           EQU  0xFFFFFFFF        ; Card Status

;*****************  Bit definition for SDIO_DTIMER register  ****************
SDIO_DTIMER_DATATIME             EQU  0xFFFFFFFF        ; Data timeout period.

;*****************  Bit definition for SDIO_DLEN register  ******************
SDIO_DLEN_DATALENGTH             EQU  0x01FFFFFF        ; Data length value

;*****************  Bit definition for SDIO_DCTRL register  *****************
SDIO_DCTRL_DTEN                  EQU  0x0001            ; Data transfer enabled bit
SDIO_DCTRL_DTDIR                 EQU  0x0002            ; Data transfer direction selection
SDIO_DCTRL_DTMODE                EQU  0x0004            ; Data transfer mode selection
SDIO_DCTRL_DMAEN                 EQU  0x0008            ; DMA enabled bit

SDIO_DCTRL_DBLOCKSIZE            EQU  0x00F0            ; DBLOCKSIZE[3:0] bits (Data block size)
SDIO_DCTRL_DBLOCKSIZE_0          EQU  0x0010            ; Bit 0
SDIO_DCTRL_DBLOCKSIZE_1          EQU  0x0020            ; Bit 1
SDIO_DCTRL_DBLOCKSIZE_2          EQU  0x0040            ; Bit 2
SDIO_DCTRL_DBLOCKSIZE_3          EQU  0x0080            ; Bit 3

SDIO_DCTRL_RWSTART               EQU  0x0100            ; Read wait start
SDIO_DCTRL_RWSTOP                EQU  0x0200            ; Read wait stop
SDIO_DCTRL_RWMOD                 EQU  0x0400            ; Read wait mode
SDIO_DCTRL_SDIOEN                EQU  0x0800            ; SD I/O enable functions

;*****************  Bit definition for SDIO_DCOUNT register  ****************
SDIO_DCOUNT_DATACOUNT            EQU  0x01FFFFFF        ; Data count value

;*****************  Bit definition for SDIO_STA register  *******************
SDIO_STA_CCRCFAIL                EQU  0x00000001        ; Command response received (CRC check failed)
SDIO_STA_DCRCFAIL                EQU  0x00000002        ; Data block sent/received (CRC check failed)
SDIO_STA_CTIMEOUT                EQU  0x00000004        ; Command response timeout
SDIO_STA_DTIMEOUT                EQU  0x00000008        ; Data timeout
SDIO_STA_TXUNDERR                EQU  0x00000010        ; Transmit FIFO underrun error
SDIO_STA_RXOVERR                 EQU  0x00000020        ; Received FIFO overrun error
SDIO_STA_CMDREND                 EQU  0x00000040        ; Command response received (CRC check passed)
SDIO_STA_CMDSENT                 EQU  0x00000080        ; Command sent (no response required)
SDIO_STA_DATAEND                 EQU  0x00000100        ; Data end (data counter, SDIDCOUNT, is zero)
SDIO_STA_STBITERR                EQU  0x00000200        ; Start bit not detected on all data signals in wide bus mode
SDIO_STA_DBCKEND                 EQU  0x00000400        ; Data block sent/received (CRC check passed)
SDIO_STA_CMDACT                  EQU  0x00000800        ; Command transfer in progress
SDIO_STA_TXACT                   EQU  0x00001000        ; Data transmit in progress
SDIO_STA_RXACT                   EQU  0x00002000        ; Data receive in progress
SDIO_STA_TXFIFOHE                EQU  0x00004000        ; Transmit FIFO Half Empty: at least 8 words can be written into the FIFO
SDIO_STA_RXFIFOHF                EQU  0x00008000        ; Receive FIFO Half Full: there are at least 8 words in the FIFO
SDIO_STA_TXFIFOF                 EQU  0x00010000        ; Transmit FIFO full
SDIO_STA_RXFIFOF                 EQU  0x00020000        ; Receive FIFO full
SDIO_STA_TXFIFOE                 EQU  0x00040000        ; Transmit FIFO empty
SDIO_STA_RXFIFOE                 EQU  0x00080000        ; Receive FIFO empty
SDIO_STA_TXDAVL                  EQU  0x00100000        ; Data available in transmit FIFO
SDIO_STA_RXDAVL                  EQU  0x00200000        ; Data available in receive FIFO
SDIO_STA_SDIOIT                  EQU  0x00400000        ; SDIO interrupt received
SDIO_STA_CEATAEND                EQU  0x00800000        ; CE-ATA command completion signal received for CMD61

;******************  Bit definition for SDIO_ICR register  ******************
SDIO_ICR_CCRCFAILC               EQU  0x00000001        ; CCRCFAIL flag clear bit
SDIO_ICR_DCRCFAILC               EQU  0x00000002        ; DCRCFAIL flag clear bit
SDIO_ICR_CTIMEOUTC               EQU  0x00000004        ; CTIMEOUT flag clear bit
SDIO_ICR_DTIMEOUTC               EQU  0x00000008        ; DTIMEOUT flag clear bit
SDIO_ICR_TXUNDERRC               EQU  0x00000010        ; TXUNDERR flag clear bit
SDIO_ICR_RXOVERRC                EQU  0x00000020        ; RXOVERR flag clear bit
SDIO_ICR_CMDRENDC                EQU  0x00000040        ; CMDREND flag clear bit
SDIO_ICR_CMDSENTC                EQU  0x00000080        ; CMDSENT flag clear bit
SDIO_ICR_DATAENDC                EQU  0x00000100        ; DATAEND flag clear bit
SDIO_ICR_STBITERRC               EQU  0x00000200        ; STBITERR flag clear bit
SDIO_ICR_DBCKENDC                EQU  0x00000400        ; DBCKEND flag clear bit
SDIO_ICR_SDIOITC                 EQU  0x00400000        ; SDIOIT flag clear bit
SDIO_ICR_CEATAENDC               EQU  0x00800000        ; CEATAEND flag clear bit

;*****************  Bit definition for SDIO_MASK register  ******************
SDIO_MASK_CCRCFAILIE             EQU  0x00000001        ; Command CRC Fail Interrupt Enable
SDIO_MASK_DCRCFAILIE             EQU  0x00000002        ; Data CRC Fail Interrupt Enable
SDIO_MASK_CTIMEOUTIE             EQU  0x00000004        ; Command TimeOut Interrupt Enable
SDIO_MASK_DTIMEOUTIE             EQU  0x00000008        ; Data TimeOut Interrupt Enable
SDIO_MASK_TXUNDERRIE             EQU  0x00000010        ; Tx FIFO UnderRun Error Interrupt Enable
SDIO_MASK_RXOVERRIE              EQU  0x00000020        ; Rx FIFO OverRun Error Interrupt Enable
SDIO_MASK_CMDRENDIE              EQU  0x00000040        ; Command Response Received Interrupt Enable
SDIO_MASK_CMDSENTIE              EQU  0x00000080        ; Command Sent Interrupt Enable
SDIO_MASK_DATAENDIE              EQU  0x00000100        ; Data End Interrupt Enable
SDIO_MASK_STBITERRIE             EQU  0x00000200        ; Start Bit Error Interrupt Enable
SDIO_MASK_DBCKENDIE              EQU  0x00000400        ; Data Block End Interrupt Enable
SDIO_MASK_CMDACTIE               EQU  0x00000800        ; Command Acting Interrupt Enable
SDIO_MASK_TXACTIE                EQU  0x00001000        ; Data Transmit Acting Interrupt Enable
SDIO_MASK_RXACTIE                EQU  0x00002000        ; Data receive acting interrupt enabled
SDIO_MASK_TXFIFOHEIE             EQU  0x00004000        ; Tx FIFO Half Empty interrupt Enable
SDIO_MASK_RXFIFOHFIE             EQU  0x00008000        ; Rx FIFO Half Full interrupt Enable
SDIO_MASK_TXFIFOFIE              EQU  0x00010000        ; Tx FIFO Full interrupt Enable
SDIO_MASK_RXFIFOFIE              EQU  0x00020000        ; Rx FIFO Full interrupt Enable
SDIO_MASK_TXFIFOEIE              EQU  0x00040000        ; Tx FIFO Empty interrupt Enable
SDIO_MASK_RXFIFOEIE              EQU  0x00080000        ; Rx FIFO Empty interrupt Enable
SDIO_MASK_TXDAVLIE               EQU  0x00100000        ; Data available in Tx FIFO interrupt Enable
SDIO_MASK_RXDAVLIE               EQU  0x00200000        ; Data available in Rx FIFO interrupt Enable
SDIO_MASK_SDIOITIE               EQU  0x00400000        ; SDIO Mode Interrupt Received interrupt Enable
SDIO_MASK_CEATAENDIE             EQU  0x00800000        ; CE-ATA command completion signal received Interrupt Enable

;****************  Bit definition for SDIO_FIFOCNT register  ****************
SDIO_FIFOCNT_FIFOCOUNT           EQU  0x00FFFFFF        ; Remaining number of words to be written to or read from the FIFO

;*****************  Bit definition for SDIO_FIFO register  ******************
SDIO_FIFO_FIFODATA               EQU  0xFFFFFFFF        ; Receive and transmit FIFO data

	END
