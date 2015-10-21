;********************************************************************************
; FILE   : INI_USB.S
; AUTHOR : Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Control registers and bit masks for USB
;
;                     Universal Serial Bus (USB)
;
; Part of an assembler library for STM32L100, based on the STM32 CMSIS.
; Developed for educational purposes at the Department of Measure of CTU in Prague.
; See the LICENSE file for detailed terms of use.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

USB_EP0R            EQU  (_USB + 0x00)             ;USB endpoint n register
USB_EP1R            EQU  (_USB + 0x04)
USB_EP2R            EQU  (_USB + 0x08)
USB_EP3R            EQU  (_USB + 0x0C)
USB_EP4R            EQU  (_USB + 0x10)
USB_EP5R            EQU  (_USB + 0x14)
USB_EP6R            EQU  (_USB + 0x18)
USB_EP7R            EQU  (_USB + 0x1C)

USB_CNTR            EQU  (_USB + 0x40)             ;USB control register
USB_ISTR            EQU  (_USB + 0x44)             ;USB interrupt status register
USB_FNR             EQU  (_USB + 0x48)             ;USB frame number register
USB_DADDR           EQU  (_USB + 0x4C)             ;USB device address
USB_BTABLE          EQU  (_USB + 0x50)             ;Buffer descriptor table (pointer to user's buffer description table)



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


; Endpoint-specific registers
;******************  Bit definition for USB_EP0R register  ******************
USB_EP0R_EA                      EQU  0x000F       ; Endpoint Address

USB_EP0R_STAT_TX                 EQU  0x0030       ; STAT_TX[1:0] bits (Status bits, for transmission transfers)
USB_EP0R_STAT_TX_0               EQU  0x0010       ; Bit 0
USB_EP0R_STAT_TX_1               EQU  0x0020       ; Bit 1

USB_EP0R_DTOG_TX                 EQU  0x0040       ; Data Toggle, for transmission transfers
USB_EP0R_CTR_TX                  EQU  0x0080       ; Correct Transfer for transmission
USB_EP0R_EP_KIND                 EQU  0x0100       ; Endpoint Kind

USB_EP0R_EP_TYPE                 EQU  0x0600       ; EP_TYPE[1:0] bits (Endpoint type)
USB_EP0R_EP_TYPE_0               EQU  0x0200       ; Bit 0
USB_EP0R_EP_TYPE_1               EQU  0x0400       ; Bit 1

USB_EP0R_SETUP                   EQU  0x0800       ; Setup transaction completed

USB_EP0R_STAT_RX                 EQU  0x3000       ; STAT_RX[1:0] bits (Status bits, for reception transfers)
USB_EP0R_STAT_RX_0               EQU  0x1000       ; Bit 0
USB_EP0R_STAT_RX_1               EQU  0x2000       ; Bit 1

USB_EP0R_DTOG_RX                 EQU  0x4000       ; Data Toggle, for reception transfers
USB_EP0R_CTR_RX                  EQU  0x8000       ; Correct Transfer for reception

;******************  Bit definition for USB_EP1R register  ******************
USB_EP1R_EA                      EQU  0x000F       ; Endpoint Address

USB_EP1R_STAT_TX                 EQU  0x0030       ; STAT_TX[1:0] bits (Status bits, for transmission transfers)
USB_EP1R_STAT_TX_0               EQU  0x0010       ; Bit 0
USB_EP1R_STAT_TX_1               EQU  0x0020       ; Bit 1

USB_EP1R_DTOG_TX                 EQU  0x0040       ; Data Toggle, for transmission transfers
USB_EP1R_CTR_TX                  EQU  0x0080       ; Correct Transfer for transmission
USB_EP1R_EP_KIND                 EQU  0x0100       ; Endpoint Kind

USB_EP1R_EP_TYPE                 EQU  0x0600       ; EP_TYPE[1:0] bits (Endpoint type)
USB_EP1R_EP_TYPE_0               EQU  0x0200       ; Bit 0
USB_EP1R_EP_TYPE_1               EQU  0x0400       ; Bit 1

USB_EP1R_SETUP                   EQU  0x0800       ; Setup transaction completed

USB_EP1R_STAT_RX                 EQU  0x3000       ; STAT_RX[1:0] bits (Status bits, for reception transfers)
USB_EP1R_STAT_RX_0               EQU  0x1000       ; Bit 0
USB_EP1R_STAT_RX_1               EQU  0x2000       ; Bit 1

USB_EP1R_DTOG_RX                 EQU  0x4000       ; Data Toggle, for reception transfers
USB_EP1R_CTR_RX                  EQU  0x8000       ; Correct Transfer for reception

;******************  Bit definition for USB_EP2R register  ******************
USB_EP2R_EA                      EQU  0x000F       ; Endpoint Address

USB_EP2R_STAT_TX                 EQU  0x0030       ; STAT_TX[1:0] bits (Status bits, for transmission transfers)
USB_EP2R_STAT_TX_0               EQU  0x0010       ; Bit 0
USB_EP2R_STAT_TX_1               EQU  0x0020       ; Bit 1

USB_EP2R_DTOG_TX                 EQU  0x0040       ; Data Toggle, for transmission transfers
USB_EP2R_CTR_TX                  EQU  0x0080       ; Correct Transfer for transmission
USB_EP2R_EP_KIND                 EQU  0x0100       ; Endpoint Kind

USB_EP2R_EP_TYPE                 EQU  0x0600       ; EP_TYPE[1:0] bits (Endpoint type)
USB_EP2R_EP_TYPE_0               EQU  0x0200       ; Bit 0
USB_EP2R_EP_TYPE_1               EQU  0x0400       ; Bit 1

USB_EP2R_SETUP                   EQU  0x0800       ; Setup transaction completed

USB_EP2R_STAT_RX                 EQU  0x3000       ; STAT_RX[1:0] bits (Status bits, for reception transfers)
USB_EP2R_STAT_RX_0               EQU  0x1000       ; Bit 0
USB_EP2R_STAT_RX_1               EQU  0x2000       ; Bit 1

USB_EP2R_DTOG_RX                 EQU  0x4000       ; Data Toggle, for reception transfers
USB_EP2R_CTR_RX                  EQU  0x8000       ; Correct Transfer for reception

;******************  Bit definition for USB_EP3R register  ******************
USB_EP3R_EA                      EQU  0x000F       ; Endpoint Address

USB_EP3R_STAT_TX                 EQU  0x0030       ; STAT_TX[1:0] bits (Status bits, for transmission transfers)
USB_EP3R_STAT_TX_0               EQU  0x0010       ; Bit 0
USB_EP3R_STAT_TX_1               EQU  0x0020       ; Bit 1

USB_EP3R_DTOG_TX                 EQU  0x0040       ; Data Toggle, for transmission transfers
USB_EP3R_CTR_TX                  EQU  0x0080       ; Correct Transfer for transmission
USB_EP3R_EP_KIND                 EQU  0x0100       ; Endpoint Kind

USB_EP3R_EP_TYPE                 EQU  0x0600       ; EP_TYPE[1:0] bits (Endpoint type)
USB_EP3R_EP_TYPE_0               EQU  0x0200       ; Bit 0
USB_EP3R_EP_TYPE_1               EQU  0x0400       ; Bit 1

USB_EP3R_SETUP                   EQU  0x0800       ; Setup transaction completed

USB_EP3R_STAT_RX                 EQU  0x3000       ; STAT_RX[1:0] bits (Status bits, for reception transfers)
USB_EP3R_STAT_RX_0               EQU  0x1000       ; Bit 0
USB_EP3R_STAT_RX_1               EQU  0x2000       ; Bit 1

USB_EP3R_DTOG_RX                 EQU  0x4000       ; Data Toggle, for reception transfers
USB_EP3R_CTR_RX                  EQU  0x8000       ; Correct Transfer for reception

;******************  Bit definition for USB_EP4R register  ******************
USB_EP4R_EA                      EQU  0x000F       ; Endpoint Address

USB_EP4R_STAT_TX                 EQU  0x0030       ; STAT_TX[1:0] bits (Status bits, for transmission transfers)
USB_EP4R_STAT_TX_0               EQU  0x0010       ; Bit 0
USB_EP4R_STAT_TX_1               EQU  0x0020       ; Bit 1

USB_EP4R_DTOG_TX                 EQU  0x0040       ; Data Toggle, for transmission transfers
USB_EP4R_CTR_TX                  EQU  0x0080       ; Correct Transfer for transmission
USB_EP4R_EP_KIND                 EQU  0x0100       ; Endpoint Kind

USB_EP4R_EP_TYPE                 EQU  0x0600       ; EP_TYPE[1:0] bits (Endpoint type)
USB_EP4R_EP_TYPE_0               EQU  0x0200       ; Bit 0
USB_EP4R_EP_TYPE_1               EQU  0x0400       ; Bit 1

USB_EP4R_SETUP                   EQU  0x0800       ; Setup transaction completed

USB_EP4R_STAT_RX                 EQU  0x3000       ; STAT_RX[1:0] bits (Status bits, for reception transfers)
USB_EP4R_STAT_RX_0               EQU  0x1000       ; Bit 0
USB_EP4R_STAT_RX_1               EQU  0x2000       ; Bit 1

USB_EP4R_DTOG_RX                 EQU  0x4000       ; Data Toggle, for reception transfers
USB_EP4R_CTR_RX                  EQU  0x8000       ; Correct Transfer for reception

;******************  Bit definition for USB_EP5R register  ******************
USB_EP5R_EA                      EQU  0x000F       ; Endpoint Address

USB_EP5R_STAT_TX                 EQU  0x0030       ; STAT_TX[1:0] bits (Status bits, for transmission transfers)
USB_EP5R_STAT_TX_0               EQU  0x0010       ; Bit 0
USB_EP5R_STAT_TX_1               EQU  0x0020       ; Bit 1

USB_EP5R_DTOG_TX                 EQU  0x0040       ; Data Toggle, for transmission transfers
USB_EP5R_CTR_TX                  EQU  0x0080       ; Correct Transfer for transmission
USB_EP5R_EP_KIND                 EQU  0x0100       ; Endpoint Kind

USB_EP5R_EP_TYPE                 EQU  0x0600       ; EP_TYPE[1:0] bits (Endpoint type)
USB_EP5R_EP_TYPE_0               EQU  0x0200       ; Bit 0
USB_EP5R_EP_TYPE_1               EQU  0x0400       ; Bit 1

USB_EP5R_SETUP                   EQU  0x0800       ; Setup transaction completed

USB_EP5R_STAT_RX                 EQU  0x3000       ; STAT_RX[1:0] bits (Status bits, for reception transfers)
USB_EP5R_STAT_RX_0               EQU  0x1000       ; Bit 0
USB_EP5R_STAT_RX_1               EQU  0x2000       ; Bit 1

USB_EP5R_DTOG_RX                 EQU  0x4000       ; Data Toggle, for reception transfers
USB_EP5R_CTR_RX                  EQU  0x8000       ; Correct Transfer for reception

;******************  Bit definition for USB_EP6R register  ******************
USB_EP6R_EA                      EQU  0x000F       ; Endpoint Address

USB_EP6R_STAT_TX                 EQU  0x0030       ; STAT_TX[1:0] bits (Status bits, for transmission transfers)
USB_EP6R_STAT_TX_0               EQU  0x0010       ; Bit 0
USB_EP6R_STAT_TX_1               EQU  0x0020       ; Bit 1

USB_EP6R_DTOG_TX                 EQU  0x0040       ; Data Toggle, for transmission transfers
USB_EP6R_CTR_TX                  EQU  0x0080       ; Correct Transfer for transmission
USB_EP6R_EP_KIND                 EQU  0x0100       ; Endpoint Kind

USB_EP6R_EP_TYPE                 EQU  0x0600       ; EP_TYPE[1:0] bits (Endpoint type)
USB_EP6R_EP_TYPE_0               EQU  0x0200       ; Bit 0
USB_EP6R_EP_TYPE_1               EQU  0x0400       ; Bit 1

USB_EP6R_SETUP                   EQU  0x0800       ; Setup transaction completed

USB_EP6R_STAT_RX                 EQU  0x3000       ; STAT_RX[1:0] bits (Status bits, for reception transfers)
USB_EP6R_STAT_RX_0               EQU  0x1000       ; Bit 0
USB_EP6R_STAT_RX_1               EQU  0x2000       ; Bit 1

USB_EP6R_DTOG_RX                 EQU  0x4000       ; Data Toggle, for reception transfers
USB_EP6R_CTR_RX                  EQU  0x8000       ; Correct Transfer for reception

;******************  Bit definition for USB_EP7R register  ******************
USB_EP7R_EA                      EQU  0x000F       ; Endpoint Address

USB_EP7R_STAT_TX                 EQU  0x0030       ; STAT_TX[1:0] bits (Status bits, for transmission transfers)
USB_EP7R_STAT_TX_0               EQU  0x0010       ; Bit 0
USB_EP7R_STAT_TX_1               EQU  0x0020       ; Bit 1

USB_EP7R_DTOG_TX                 EQU  0x0040       ; Data Toggle, for transmission transfers
USB_EP7R_CTR_TX                  EQU  0x0080       ; Correct Transfer for transmission
USB_EP7R_EP_KIND                 EQU  0x0100       ; Endpoint Kind

USB_EP7R_EP_TYPE                 EQU  0x0600       ; EP_TYPE[1:0] bits (Endpoint type)
USB_EP7R_EP_TYPE_0               EQU  0x0200       ; Bit 0
USB_EP7R_EP_TYPE_1               EQU  0x0400       ; Bit 1

USB_EP7R_SETUP                   EQU  0x0800       ; Setup transaction completed

USB_EP7R_STAT_RX                 EQU  0x3000       ; STAT_RX[1:0] bits (Status bits, for reception transfers)
USB_EP7R_STAT_RX_0               EQU  0x1000       ; Bit 0
USB_EP7R_STAT_RX_1               EQU  0x2000       ; Bit 1

USB_EP7R_DTOG_RX                 EQU  0x4000       ; Data Toggle, for reception transfers
USB_EP7R_CTR_RX                  EQU  0x8000       ; Correct Transfer for reception

; Common registers
;******************  Bit definition for USB_CNTR register  ******************
USB_CNTR_FRES                    EQU  0x0001       ; Force USB Reset
USB_CNTR_PDWN                    EQU  0x0002       ; Power down
USB_CNTR_LP_MODE                 EQU  0x0004       ; Low-power mode
USB_CNTR_FSUSP                   EQU  0x0008       ; Force suspend
USB_CNTR_RESUME                  EQU  0x0010       ; Resume request
USB_CNTR_ESOFM                   EQU  0x0100       ; Expected Start Of Frame Interrupt Mask
USB_CNTR_SOFM                    EQU  0x0200       ; Start Of Frame Interrupt Mask
USB_CNTR_RESETM                  EQU  0x0400       ; RESET Interrupt Mask
USB_CNTR_SUSPM                   EQU  0x0800       ; Suspend mode Interrupt Mask
USB_CNTR_WKUPM                   EQU  0x1000       ; Wakeup Interrupt Mask
USB_CNTR_ERRM                    EQU  0x2000       ; Error Interrupt Mask
USB_CNTR_PMAOVRM                 EQU  0x4000       ; Packet Memory Area Over / Underrun Interrupt Mask
USB_CNTR_CTRM                    EQU  0x8000       ; Correct Transfer Interrupt Mask

;******************  Bit definition for USB_ISTR register  ******************
USB_ISTR_EP_ID                   EQU  0x000F       ; Endpoint Identifier
USB_ISTR_DIR                     EQU  0x0010       ; Direction of transaction
USB_ISTR_ESOF                    EQU  0x0100       ; Expected Start Of Frame
USB_ISTR_SOF                     EQU  0x0200       ; Start Of Frame
USB_ISTR_RESET                   EQU  0x0400       ; USB RESET request
USB_ISTR_SUSP                    EQU  0x0800       ; Suspend mode request
USB_ISTR_WKUP                    EQU  0x1000       ; Wake up
USB_ISTR_ERR                     EQU  0x2000       ; Error
USB_ISTR_PMAOVR                  EQU  0x4000       ; Packet Memory Area Over / Underrun
USB_ISTR_CTR                     EQU  0x8000       ; Correct Transfer

;******************  Bit definition for USB_FNR register  *******************
USB_FNR_FN                       EQU  0x07FF       ; Frame Number
USB_FNR_LSOF                     EQU  0x1800       ; Lost SOF
USB_FNR_LCK                      EQU  0x2000       ; Locked
USB_FNR_RXDM                     EQU  0x4000       ; Receive Data - Line Status
USB_FNR_RXDP                     EQU  0x8000       ; Receive Data + Line Status

;*****************  Bit definition for USB_DADDR register  ******************
USB_DADDR_ADD                    EQU  0x7F         ; ADD[6:0] bits (Device Address)
USB_DADDR_ADD0                   EQU  0x01         ; Bit 0
USB_DADDR_ADD1                   EQU  0x02         ; Bit 1
USB_DADDR_ADD2                   EQU  0x04         ; Bit 2
USB_DADDR_ADD3                   EQU  0x08         ; Bit 3
USB_DADDR_ADD4                   EQU  0x10         ; Bit 4
USB_DADDR_ADD5                   EQU  0x20         ; Bit 5
USB_DADDR_ADD6                   EQU  0x40         ; Bit 6

USB_DADDR_EF                     EQU  0x80         ; Enable Function

;*****************  Bit definition for USB_BTABLE register  *****************
USB_BTABLE_BTABLE                EQU  0xFFF8       ; Buffer Table

; Buffer descriptor table
;****************  Bit definition for USB_ADDR0_TX register  ****************
USB_ADDR0_TX_ADDR0_TX            EQU  0xFFFE       ; Transmission Buffer Address 0

;****************  Bit definition for USB_ADDR1_TX register  ****************
USB_ADDR1_TX_ADDR1_TX            EQU  0xFFFE       ; Transmission Buffer Address 1

;****************  Bit definition for USB_ADDR2_TX register  ****************
USB_ADDR2_TX_ADDR2_TX            EQU  0xFFFE       ; Transmission Buffer Address 2

;****************  Bit definition for USB_ADDR3_TX register  ****************
USB_ADDR3_TX_ADDR3_TX            EQU  0xFFFE       ; Transmission Buffer Address 3

;****************  Bit definition for USB_ADDR4_TX register  ****************
USB_ADDR4_TX_ADDR4_TX            EQU  0xFFFE       ; Transmission Buffer Address 4

;****************  Bit definition for USB_ADDR5_TX register  ****************
USB_ADDR5_TX_ADDR5_TX            EQU  0xFFFE       ; Transmission Buffer Address 5

;****************  Bit definition for USB_ADDR6_TX register  ****************
USB_ADDR6_TX_ADDR6_TX            EQU  0xFFFE       ; Transmission Buffer Address 6

;****************  Bit definition for USB_ADDR7_TX register  ****************
USB_ADDR7_TX_ADDR7_TX            EQU  0xFFFE       ; Transmission Buffer Address 7

;----------------------------------------------------------------------------

;****************  Bit definition for USB_COUNT0_TX register  ***************
USB_COUNT0_TX_COUNT0_TX          EQU  0x03FF       ; Transmission Byte Count 0

;****************  Bit definition for USB_COUNT1_TX register  ***************
USB_COUNT1_TX_COUNT1_TX          EQU  0x03FF       ; Transmission Byte Count 1

;****************  Bit definition for USB_COUNT2_TX register  ***************
USB_COUNT2_TX_COUNT2_TX          EQU  0x03FF       ; Transmission Byte Count 2

;****************  Bit definition for USB_COUNT3_TX register  ***************
USB_COUNT3_TX_COUNT3_TX          EQU  0x03FF       ; Transmission Byte Count 3

;****************  Bit definition for USB_COUNT4_TX register  ***************
USB_COUNT4_TX_COUNT4_TX          EQU  0x03FF       ; Transmission Byte Count 4

;****************  Bit definition for USB_COUNT5_TX register  ***************
USB_COUNT5_TX_COUNT5_TX          EQU  0x03FF       ; Transmission Byte Count 5

;****************  Bit definition for USB_COUNT6_TX register  ***************
USB_COUNT6_TX_COUNT6_TX          EQU  0x03FF       ; Transmission Byte Count 6

;****************  Bit definition for USB_COUNT7_TX register  ***************
USB_COUNT7_TX_COUNT7_TX          EQU  0x03FF       ; Transmission Byte Count 7

;----------------------------------------------------------------------------

;***************  Bit definition for USB_COUNT0_TX_0 register  **************
USB_COUNT0_TX_0_COUNT0_TX_0      EQU  0x000003FF   ; Transmission Byte Count 0 (low)

;***************  Bit definition for USB_COUNT0_TX_1 register  **************
USB_COUNT0_TX_1_COUNT0_TX_1      EQU  0x03FF0000   ; Transmission Byte Count 0 (high)

;***************  Bit definition for USB_COUNT1_TX_0 register  **************
USB_COUNT1_TX_0_COUNT1_TX_0       EQU  0x000003FF  ; Transmission Byte Count 1 (low)

;***************  Bit definition for USB_COUNT1_TX_1 register  **************
USB_COUNT1_TX_1_COUNT1_TX_1       EQU  0x03FF0000  ; Transmission Byte Count 1 (high)

;***************  Bit definition for USB_COUNT2_TX_0 register  **************
USB_COUNT2_TX_0_COUNT2_TX_0      EQU  0x000003FF   ; Transmission Byte Count 2 (low)

;***************  Bit definition for USB_COUNT2_TX_1 register  **************
USB_COUNT2_TX_1_COUNT2_TX_1      EQU  0x03FF0000   ; Transmission Byte Count 2 (high)

;***************  Bit definition for USB_COUNT3_TX_0 register  **************
USB_COUNT3_TX_0_COUNT3_TX_0      EQU  0x000003FF   ; Transmission Byte Count 3 (low)

;***************  Bit definition for USB_COUNT3_TX_1 register  **************
USB_COUNT3_TX_1_COUNT3_TX_1      EQU  0x03FF0000   ; Transmission Byte Count 3 (high)

;***************  Bit definition for USB_COUNT4_TX_0 register  **************
USB_COUNT4_TX_0_COUNT4_TX_0      EQU  0x000003FF   ; Transmission Byte Count 4 (low)

;***************  Bit definition for USB_COUNT4_TX_1 register  **************
USB_COUNT4_TX_1_COUNT4_TX_1      EQU  0x03FF0000   ; Transmission Byte Count 4 (high)

;***************  Bit definition for USB_COUNT5_TX_0 register  **************
USB_COUNT5_TX_0_COUNT5_TX_0      EQU  0x000003FF   ; Transmission Byte Count 5 (low)

;***************  Bit definition for USB_COUNT5_TX_1 register  **************
USB_COUNT5_TX_1_COUNT5_TX_1      EQU  0x03FF0000   ; Transmission Byte Count 5 (high)

;***************  Bit definition for USB_COUNT6_TX_0 register  **************
USB_COUNT6_TX_0_COUNT6_TX_0      EQU  0x000003FF   ; Transmission Byte Count 6 (low)

;***************  Bit definition for USB_COUNT6_TX_1 register  **************
USB_COUNT6_TX_1_COUNT6_TX_1      EQU  0x03FF0000   ; Transmission Byte Count 6 (high)

;***************  Bit definition for USB_COUNT7_TX_0 register  **************
USB_COUNT7_TX_0_COUNT7_TX_0      EQU  0x000003FF   ; Transmission Byte Count 7 (low)

;***************  Bit definition for USB_COUNT7_TX_1 register  **************
USB_COUNT7_TX_1_COUNT7_TX_1      EQU  0x03FF0000   ; Transmission Byte Count 7 (high)

;----------------------------------------------------------------------------

;****************  Bit definition for USB_ADDR0_RX register  ****************
USB_ADDR0_RX_ADDR0_RX            EQU  0xFFFE       ; Reception Buffer Address 0

;****************  Bit definition for USB_ADDR1_RX register  ****************
USB_ADDR1_RX_ADDR1_RX            EQU  0xFFFE       ; Reception Buffer Address 1

;****************  Bit definition for USB_ADDR2_RX register  ****************
USB_ADDR2_RX_ADDR2_RX            EQU  0xFFFE       ; Reception Buffer Address 2

;****************  Bit definition for USB_ADDR3_RX register  ****************
USB_ADDR3_RX_ADDR3_RX            EQU  0xFFFE       ; Reception Buffer Address 3

;****************  Bit definition for USB_ADDR4_RX register  ****************
USB_ADDR4_RX_ADDR4_RX            EQU  0xFFFE       ; Reception Buffer Address 4

;****************  Bit definition for USB_ADDR5_RX register  ****************
USB_ADDR5_RX_ADDR5_RX            EQU  0xFFFE       ; Reception Buffer Address 5

;****************  Bit definition for USB_ADDR6_RX register  ****************
USB_ADDR6_RX_ADDR6_RX            EQU  0xFFFE       ; Reception Buffer Address 6

;****************  Bit definition for USB_ADDR7_RX register  ****************
USB_ADDR7_RX_ADDR7_RX            EQU  0xFFFE       ; Reception Buffer Address 7

;----------------------------------------------------------------------------

;****************  Bit definition for USB_COUNT0_RX register  ***************
USB_COUNT0_RX_COUNT0_RX          EQU  0x03FF       ; Reception Byte Count

USB_COUNT0_RX_NUM_BLOCK          EQU  0x7C00       ; NUM_BLOCK[4:0] bits (Number of blocks)
USB_COUNT0_RX_NUM_BLOCK_0        EQU  0x0400       ; Bit 0
USB_COUNT0_RX_NUM_BLOCK_1        EQU  0x0800       ; Bit 1
USB_COUNT0_RX_NUM_BLOCK_2        EQU  0x1000       ; Bit 2
USB_COUNT0_RX_NUM_BLOCK_3        EQU  0x2000       ; Bit 3
USB_COUNT0_RX_NUM_BLOCK_4        EQU  0x4000       ; Bit 4

USB_COUNT0_RX_BLSIZE             EQU  0x8000       ; BLock SIZE

;****************  Bit definition for USB_COUNT1_RX register  ***************
USB_COUNT1_RX_COUNT1_RX          EQU  0x03FF       ; Reception Byte Count

USB_COUNT1_RX_NUM_BLOCK          EQU  0x7C00       ; NUM_BLOCK[4:0] bits (Number of blocks)
USB_COUNT1_RX_NUM_BLOCK_0        EQU  0x0400       ; Bit 0
USB_COUNT1_RX_NUM_BLOCK_1        EQU  0x0800       ; Bit 1
USB_COUNT1_RX_NUM_BLOCK_2        EQU  0x1000       ; Bit 2
USB_COUNT1_RX_NUM_BLOCK_3        EQU  0x2000       ; Bit 3
USB_COUNT1_RX_NUM_BLOCK_4        EQU  0x4000       ; Bit 4

USB_COUNT1_RX_BLSIZE             EQU  0x8000       ; BLock SIZE

;****************  Bit definition for USB_COUNT2_RX register  ***************
USB_COUNT2_RX_COUNT2_RX          EQU  0x03FF       ; Reception Byte Count

USB_COUNT2_RX_NUM_BLOCK          EQU  0x7C00       ; NUM_BLOCK[4:0] bits (Number of blocks)
USB_COUNT2_RX_NUM_BLOCK_0        EQU  0x0400       ; Bit 0
USB_COUNT2_RX_NUM_BLOCK_1        EQU  0x0800       ; Bit 1
USB_COUNT2_RX_NUM_BLOCK_2        EQU  0x1000       ; Bit 2
USB_COUNT2_RX_NUM_BLOCK_3        EQU  0x2000       ; Bit 3
USB_COUNT2_RX_NUM_BLOCK_4        EQU  0x4000       ; Bit 4

USB_COUNT2_RX_BLSIZE             EQU  0x8000       ; BLock SIZE

;****************  Bit definition for USB_COUNT3_RX register  ***************
USB_COUNT3_RX_COUNT3_RX          EQU  0x03FF       ; Reception Byte Count

USB_COUNT3_RX_NUM_BLOCK          EQU  0x7C00       ; NUM_BLOCK[4:0] bits (Number of blocks)
USB_COUNT3_RX_NUM_BLOCK_0        EQU  0x0400       ; Bit 0
USB_COUNT3_RX_NUM_BLOCK_1        EQU  0x0800       ; Bit 1
USB_COUNT3_RX_NUM_BLOCK_2        EQU  0x1000       ; Bit 2
USB_COUNT3_RX_NUM_BLOCK_3        EQU  0x2000       ; Bit 3
USB_COUNT3_RX_NUM_BLOCK_4        EQU  0x4000       ; Bit 4

USB_COUNT3_RX_BLSIZE             EQU  0x8000       ; BLock SIZE

;****************  Bit definition for USB_COUNT4_RX register  ***************
USB_COUNT4_RX_COUNT4_RX          EQU  0x03FF       ; Reception Byte Count

USB_COUNT4_RX_NUM_BLOCK          EQU  0x7C00       ; NUM_BLOCK[4:0] bits (Number of blocks)
USB_COUNT4_RX_NUM_BLOCK_0        EQU  0x0400       ; Bit 0
USB_COUNT4_RX_NUM_BLOCK_1        EQU  0x0800       ; Bit 1
USB_COUNT4_RX_NUM_BLOCK_2        EQU  0x1000       ; Bit 2
USB_COUNT4_RX_NUM_BLOCK_3        EQU  0x2000       ; Bit 3
USB_COUNT4_RX_NUM_BLOCK_4        EQU  0x4000       ; Bit 4

USB_COUNT4_RX_BLSIZE             EQU  0x8000       ; BLock SIZE

;****************  Bit definition for USB_COUNT5_RX register  ***************
USB_COUNT5_RX_COUNT5_RX          EQU  0x03FF       ; Reception Byte Count

USB_COUNT5_RX_NUM_BLOCK          EQU  0x7C00       ; NUM_BLOCK[4:0] bits (Number of blocks)
USB_COUNT5_RX_NUM_BLOCK_0        EQU  0x0400       ; Bit 0
USB_COUNT5_RX_NUM_BLOCK_1        EQU  0x0800       ; Bit 1
USB_COUNT5_RX_NUM_BLOCK_2        EQU  0x1000       ; Bit 2
USB_COUNT5_RX_NUM_BLOCK_3        EQU  0x2000       ; Bit 3
USB_COUNT5_RX_NUM_BLOCK_4        EQU  0x4000       ; Bit 4

USB_COUNT5_RX_BLSIZE             EQU  0x8000       ; BLock SIZE

;****************  Bit definition for USB_COUNT6_RX register  ***************
USB_COUNT6_RX_COUNT6_RX          EQU  0x03FF       ; Reception Byte Count

USB_COUNT6_RX_NUM_BLOCK          EQU  0x7C00       ; NUM_BLOCK[4:0] bits (Number of blocks)
USB_COUNT6_RX_NUM_BLOCK_0        EQU  0x0400       ; Bit 0
USB_COUNT6_RX_NUM_BLOCK_1        EQU  0x0800       ; Bit 1
USB_COUNT6_RX_NUM_BLOCK_2        EQU  0x1000       ; Bit 2
USB_COUNT6_RX_NUM_BLOCK_3        EQU  0x2000       ; Bit 3
USB_COUNT6_RX_NUM_BLOCK_4        EQU  0x4000       ; Bit 4

USB_COUNT6_RX_BLSIZE             EQU  0x8000       ; BLock SIZE

;****************  Bit definition for USB_COUNT7_RX register  ***************
USB_COUNT7_RX_COUNT7_RX          EQU  0x03FF       ; Reception Byte Count

USB_COUNT7_RX_NUM_BLOCK          EQU  0x7C00       ; NUM_BLOCK[4:0] bits (Number of blocks)
USB_COUNT7_RX_NUM_BLOCK_0        EQU  0x0400       ; Bit 0
USB_COUNT7_RX_NUM_BLOCK_1        EQU  0x0800       ; Bit 1
USB_COUNT7_RX_NUM_BLOCK_2        EQU  0x1000       ; Bit 2
USB_COUNT7_RX_NUM_BLOCK_3        EQU  0x2000       ; Bit 3
USB_COUNT7_RX_NUM_BLOCK_4        EQU  0x4000       ; Bit 4

USB_COUNT7_RX_BLSIZE             EQU  0x8000       ; BLock SIZE

;----------------------------------------------------------------------------

;***************  Bit definition for USB_COUNT0_RX_0 register  **************
USB_COUNT0_RX_0_COUNT0_RX_0      EQU  0x000003FF   ; Reception Byte Count (low)

USB_COUNT0_RX_0_NUM_BLOCK_0      EQU  0x00007C00   ; NUM_BLOCK_0[4:0] bits (Number of blocks) (low)
USB_COUNT0_RX_0_NUM_BLOCK_0_0    EQU  0x00000400   ; Bit 0
USB_COUNT0_RX_0_NUM_BLOCK_0_1    EQU  0x00000800   ; Bit 1
USB_COUNT0_RX_0_NUM_BLOCK_0_2    EQU  0x00001000   ; Bit 2
USB_COUNT0_RX_0_NUM_BLOCK_0_3    EQU  0x00002000   ; Bit 3
USB_COUNT0_RX_0_NUM_BLOCK_0_4    EQU  0x00004000   ; Bit 4

USB_COUNT0_RX_0_BLSIZE_0         EQU  0x00008000   ; BLock SIZE (low)

;***************  Bit definition for USB_COUNT0_RX_1 register  **************
USB_COUNT0_RX_1_COUNT0_RX_1      EQU  0x03FF0000   ; Reception Byte Count (high)

USB_COUNT0_RX_1_NUM_BLOCK_1      EQU  0x7C000000   ; NUM_BLOCK_1[4:0] bits (Number of blocks) (high)
USB_COUNT0_RX_1_NUM_BLOCK_1_0    EQU  0x04000000   ; Bit 1
USB_COUNT0_RX_1_NUM_BLOCK_1_1    EQU  0x08000000   ; Bit 1
USB_COUNT0_RX_1_NUM_BLOCK_1_2    EQU  0x10000000   ; Bit 2
USB_COUNT0_RX_1_NUM_BLOCK_1_3    EQU  0x20000000   ; Bit 3
USB_COUNT0_RX_1_NUM_BLOCK_1_4    EQU  0x40000000   ; Bit 4

USB_COUNT0_RX_1_BLSIZE_1         EQU  0x80000000   ; BLock SIZE (high)

;***************  Bit definition for USB_COUNT1_RX_0 register  **************
USB_COUNT1_RX_0_COUNT1_RX_0      EQU  0x000003FF   ; Reception Byte Count (low)

USB_COUNT1_RX_0_NUM_BLOCK_0      EQU  0x00007C00   ; NUM_BLOCK_0[4:0] bits (Number of blocks) (low)
USB_COUNT1_RX_0_NUM_BLOCK_0_0    EQU  0x00000400   ; Bit 0
USB_COUNT1_RX_0_NUM_BLOCK_0_1    EQU  0x00000800   ; Bit 1
USB_COUNT1_RX_0_NUM_BLOCK_0_2    EQU  0x00001000   ; Bit 2
USB_COUNT1_RX_0_NUM_BLOCK_0_3    EQU  0x00002000   ; Bit 3
USB_COUNT1_RX_0_NUM_BLOCK_0_4    EQU  0x00004000   ; Bit 4

USB_COUNT1_RX_0_BLSIZE_0         EQU  0x00008000   ; BLock SIZE (low)

;***************  Bit definition for USB_COUNT1_RX_1 register  **************
USB_COUNT1_RX_1_COUNT1_RX_1      EQU  0x03FF0000   ; Reception Byte Count (high)

USB_COUNT1_RX_1_NUM_BLOCK_1      EQU  0x7C000000   ; NUM_BLOCK_1[4:0] bits (Number of blocks) (high)
USB_COUNT1_RX_1_NUM_BLOCK_1_0    EQU  0x04000000   ; Bit 0
USB_COUNT1_RX_1_NUM_BLOCK_1_1    EQU  0x08000000   ; Bit 1
USB_COUNT1_RX_1_NUM_BLOCK_1_2    EQU  0x10000000   ; Bit 2
USB_COUNT1_RX_1_NUM_BLOCK_1_3    EQU  0x20000000   ; Bit 3
USB_COUNT1_RX_1_NUM_BLOCK_1_4    EQU  0x40000000   ; Bit 4

USB_COUNT1_RX_1_BLSIZE_1         EQU  0x80000000   ; BLock SIZE (high)

;***************  Bit definition for USB_COUNT2_RX_0 register  **************
USB_COUNT2_RX_0_COUNT2_RX_0      EQU  0x000003FF   ; Reception Byte Count (low)

USB_COUNT2_RX_0_NUM_BLOCK_0      EQU  0x00007C00   ; NUM_BLOCK_0[4:0] bits (Number of blocks) (low)
USB_COUNT2_RX_0_NUM_BLOCK_0_0    EQU  0x00000400   ; Bit 0
USB_COUNT2_RX_0_NUM_BLOCK_0_1    EQU  0x00000800   ; Bit 1
USB_COUNT2_RX_0_NUM_BLOCK_0_2    EQU  0x00001000   ; Bit 2
USB_COUNT2_RX_0_NUM_BLOCK_0_3    EQU  0x00002000   ; Bit 3
USB_COUNT2_RX_0_NUM_BLOCK_0_4    EQU  0x00004000   ; Bit 4

USB_COUNT2_RX_0_BLSIZE_0         EQU  0x00008000   ; BLock SIZE (low)

;***************  Bit definition for USB_COUNT2_RX_1 register  **************
USB_COUNT2_RX_1_COUNT2_RX_1      EQU  0x03FF0000   ; Reception Byte Count (high)

USB_COUNT2_RX_1_NUM_BLOCK_1      EQU  0x7C000000   ; NUM_BLOCK_1[4:0] bits (Number of blocks) (high)
USB_COUNT2_RX_1_NUM_BLOCK_1_0    EQU  0x04000000   ; Bit 0
USB_COUNT2_RX_1_NUM_BLOCK_1_1    EQU  0x08000000   ; Bit 1
USB_COUNT2_RX_1_NUM_BLOCK_1_2    EQU  0x10000000   ; Bit 2
USB_COUNT2_RX_1_NUM_BLOCK_1_3    EQU  0x20000000   ; Bit 3
USB_COUNT2_RX_1_NUM_BLOCK_1_4    EQU  0x40000000   ; Bit 4

USB_COUNT2_RX_1_BLSIZE_1         EQU  0x80000000   ; BLock SIZE (high)

;***************  Bit definition for USB_COUNT3_RX_0 register  **************
USB_COUNT3_RX_0_COUNT3_RX_0      EQU  0x000003FF   ; Reception Byte Count (low)

USB_COUNT3_RX_0_NUM_BLOCK_0      EQU  0x00007C00   ; NUM_BLOCK_0[4:0] bits (Number of blocks) (low)
USB_COUNT3_RX_0_NUM_BLOCK_0_0    EQU  0x00000400   ; Bit 0
USB_COUNT3_RX_0_NUM_BLOCK_0_1    EQU  0x00000800   ; Bit 1
USB_COUNT3_RX_0_NUM_BLOCK_0_2    EQU  0x00001000   ; Bit 2
USB_COUNT3_RX_0_NUM_BLOCK_0_3    EQU  0x00002000   ; Bit 3
USB_COUNT3_RX_0_NUM_BLOCK_0_4    EQU  0x00004000   ; Bit 4

USB_COUNT3_RX_0_BLSIZE_0         EQU  0x00008000   ; BLock SIZE (low)

;***************  Bit definition for USB_COUNT3_RX_1 register  **************
USB_COUNT3_RX_1_COUNT3_RX_1      EQU  0x03FF0000   ; Reception Byte Count (high)

USB_COUNT3_RX_1_NUM_BLOCK_1      EQU  0x7C000000   ; NUM_BLOCK_1[4:0] bits (Number of blocks) (high)
USB_COUNT3_RX_1_NUM_BLOCK_1_0    EQU  0x04000000   ; Bit 0
USB_COUNT3_RX_1_NUM_BLOCK_1_1    EQU  0x08000000   ; Bit 1
USB_COUNT3_RX_1_NUM_BLOCK_1_2    EQU  0x10000000   ; Bit 2
USB_COUNT3_RX_1_NUM_BLOCK_1_3    EQU  0x20000000   ; Bit 3
USB_COUNT3_RX_1_NUM_BLOCK_1_4    EQU  0x40000000   ; Bit 4

USB_COUNT3_RX_1_BLSIZE_1         EQU  0x80000000   ; BLock SIZE (high)

;***************  Bit definition for USB_COUNT4_RX_0 register  **************
USB_COUNT4_RX_0_COUNT4_RX_0      EQU  0x000003FF   ; Reception Byte Count (low)

USB_COUNT4_RX_0_NUM_BLOCK_0      EQU  0x00007C00   ; NUM_BLOCK_0[4:0] bits (Number of blocks) (low)
USB_COUNT4_RX_0_NUM_BLOCK_0_0   EQU  0x00000400    ; Bit 0
USB_COUNT4_RX_0_NUM_BLOCK_0_1   EQU  0x00000800    ; Bit 1
USB_COUNT4_RX_0_NUM_BLOCK_0_2   EQU  0x00001000    ; Bit 2
USB_COUNT4_RX_0_NUM_BLOCK_0_3   EQU  0x00002000    ; Bit 3
USB_COUNT4_RX_0_NUM_BLOCK_0_4   EQU  0x00004000    ; Bit 4

USB_COUNT4_RX_0_BLSIZE_0         EQU  0x00008000   ; BLock SIZE (low)

;***************  Bit definition for USB_COUNT4_RX_1 register  **************
USB_COUNT4_RX_1_COUNT4_RX_1      EQU  0x03FF0000   ; Reception Byte Count (high)

USB_COUNT4_RX_1_NUM_BLOCK_1      EQU  0x7C000000   ; NUM_BLOCK_1[4:0] bits (Number of blocks) (high)
USB_COUNT4_RX_1_NUM_BLOCK_1_0    EQU  0x04000000   ; Bit 0
USB_COUNT4_RX_1_NUM_BLOCK_1_1    EQU  0x08000000   ; Bit 1
USB_COUNT4_RX_1_NUM_BLOCK_1_2    EQU  0x10000000   ; Bit 2
USB_COUNT4_RX_1_NUM_BLOCK_1_3    EQU  0x20000000   ; Bit 3
USB_COUNT4_RX_1_NUM_BLOCK_1_4    EQU  0x40000000   ; Bit 4

USB_COUNT4_RX_1_BLSIZE_1         EQU  0x80000000   ; BLock SIZE (high)

;***************  Bit definition for USB_COUNT5_RX_0 register  **************
USB_COUNT5_RX_0_COUNT5_RX_0      EQU  0x000003FF   ; Reception Byte Count (low)

USB_COUNT5_RX_0_NUM_BLOCK_0      EQU  0x00007C00   ; NUM_BLOCK_0[4:0] bits (Number of blocks) (low)
USB_COUNT5_RX_0_NUM_BLOCK_0_0    EQU  0x00000400   ; Bit 0
USB_COUNT5_RX_0_NUM_BLOCK_0_1    EQU  0x00000800   ; Bit 1
USB_COUNT5_RX_0_NUM_BLOCK_0_2    EQU  0x00001000   ; Bit 2
USB_COUNT5_RX_0_NUM_BLOCK_0_3    EQU  0x00002000   ; Bit 3
USB_COUNT5_RX_0_NUM_BLOCK_0_4    EQU  0x00004000   ; Bit 4

USB_COUNT5_RX_0_BLSIZE_0         EQU  0x00008000   ; BLock SIZE (low)

;***************  Bit definition for USB_COUNT5_RX_1 register  **************
USB_COUNT5_RX_1_COUNT5_RX_1      EQU  0x03FF0000   ; Reception Byte Count (high)

USB_COUNT5_RX_1_NUM_BLOCK_1      EQU  0x7C000000   ; NUM_BLOCK_1[4:0] bits (Number of blocks) (high)
USB_COUNT5_RX_1_NUM_BLOCK_1_0    EQU  0x04000000   ; Bit 0
USB_COUNT5_RX_1_NUM_BLOCK_1_1    EQU  0x08000000   ; Bit 1
USB_COUNT5_RX_1_NUM_BLOCK_1_2    EQU  0x10000000   ; Bit 2
USB_COUNT5_RX_1_NUM_BLOCK_1_3    EQU  0x20000000   ; Bit 3
USB_COUNT5_RX_1_NUM_BLOCK_1_4    EQU  0x40000000   ; Bit 4

USB_COUNT5_RX_1_BLSIZE_1         EQU  0x80000000   ; BLock SIZE (high)

;**************  Bit definition for USB_COUNT6_RX_0  register  **************
USB_COUNT6_RX_0_COUNT6_RX_0      EQU  0x000003FF   ; Reception Byte Count (low)

USB_COUNT6_RX_0_NUM_BLOCK_0      EQU  0x00007C00   ; NUM_BLOCK_0[4:0] bits (Number of blocks) (low)
USB_COUNT6_RX_0_NUM_BLOCK_0_0    EQU  0x00000400   ; Bit 0
USB_COUNT6_RX_0_NUM_BLOCK_0_1    EQU  0x00000800   ; Bit 1
USB_COUNT6_RX_0_NUM_BLOCK_0_2    EQU  0x00001000   ; Bit 2
USB_COUNT6_RX_0_NUM_BLOCK_0_3    EQU  0x00002000   ; Bit 3
USB_COUNT6_RX_0_NUM_BLOCK_0_4    EQU  0x00004000   ; Bit 4

USB_COUNT6_RX_0_BLSIZE_0         EQU  0x00008000   ; BLock SIZE (low)

;***************  Bit definition for USB_COUNT6_RX_1 register  **************
USB_COUNT6_RX_1_COUNT6_RX_1      EQU  0x03FF0000   ; Reception Byte Count (high)

USB_COUNT6_RX_1_NUM_BLOCK_1      EQU  0x7C000000   ; NUM_BLOCK_1[4:0] bits (Number of blocks) (high)
USB_COUNT6_RX_1_NUM_BLOCK_1_0    EQU  0x04000000   ; Bit 0
USB_COUNT6_RX_1_NUM_BLOCK_1_1    EQU  0x08000000   ; Bit 1
USB_COUNT6_RX_1_NUM_BLOCK_1_2    EQU  0x10000000   ; Bit 2
USB_COUNT6_RX_1_NUM_BLOCK_1_3    EQU  0x20000000   ; Bit 3
USB_COUNT6_RX_1_NUM_BLOCK_1_4    EQU  0x40000000   ; Bit 4

USB_COUNT6_RX_1_BLSIZE_1         EQU  0x80000000   ; BLock SIZE (high)

;**************  Bit definition for USB_COUNT7_RX_0 register  ***************
USB_COUNT7_RX_0_COUNT7_RX_0      EQU  0x000003FF   ; Reception Byte Count (low)

USB_COUNT7_RX_0_NUM_BLOCK_0      EQU  0x00007C00   ; NUM_BLOCK_0[4:0] bits (Number of blocks) (low)
USB_COUNT7_RX_0_NUM_BLOCK_0_0    EQU  0x00000400   ; Bit 0
USB_COUNT7_RX_0_NUM_BLOCK_0_1    EQU  0x00000800   ; Bit 1
USB_COUNT7_RX_0_NUM_BLOCK_0_2    EQU  0x00001000   ; Bit 2
USB_COUNT7_RX_0_NUM_BLOCK_0_3    EQU  0x00002000   ; Bit 3
USB_COUNT7_RX_0_NUM_BLOCK_0_4    EQU  0x00004000   ; Bit 4

USB_COUNT7_RX_0_BLSIZE_0         EQU  0x00008000   ; BLock SIZE (low)

;**************  Bit definition for USB_COUNT7_RX_1 register  ***************
USB_COUNT7_RX_1_COUNT7_RX_1      EQU  0x03FF0000   ; Reception Byte Count (high)

USB_COUNT7_RX_1_NUM_BLOCK_1      EQU  0x7C000000   ; NUM_BLOCK_1[4:0] bits (Number of blocks) (high)
USB_COUNT7_RX_1_NUM_BLOCK_1_0    EQU  0x04000000   ; Bit 0
USB_COUNT7_RX_1_NUM_BLOCK_1_1    EQU  0x08000000   ; Bit 1
USB_COUNT7_RX_1_NUM_BLOCK_1_2    EQU  0x10000000   ; Bit 2
USB_COUNT7_RX_1_NUM_BLOCK_1_3    EQU  0x20000000   ; Bit 3
USB_COUNT7_RX_1_NUM_BLOCK_1_4    EQU  0x40000000   ; Bit 4

USB_COUNT7_RX_1_BLSIZE_1         EQU  0x80000000   ; BLock SIZE (high)

	END
