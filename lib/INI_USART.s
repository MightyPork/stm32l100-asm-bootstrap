;********************************************************************************
; FILE   : INI_USART.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Control registers and bit masks for USART
;
;      Universal Synchronous Asynchronous Receiver Transmitter (USART)
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

; USART 1

USART1_SR        EQU  (_USART1 + 0x00) ; USART1 Status register,
USART1_DR        EQU  (_USART1 + 0x04) ; USART1 Data register,
USART1_BRR       EQU  (_USART1 + 0x08) ; USART1 Baud rate register,
USART1_CR1       EQU  (_USART1 + 0x0C) ; USART1 Control register 1,
USART1_CR2       EQU  (_USART1 + 0x10) ; USART1 Control register 2,
USART1_CR3       EQU  (_USART1 + 0x14) ; USART1 Control register 3,
USART1_GTPR      EQU  (_USART1 + 0x18) ; USART1 Guard time and prescaler register,

; USART 2

USART2_SR      EQU  (_USART2 + 0x00) ; USART2 Status register,
USART2_DR      EQU  (_USART2 + 0x04) ; USART2 Data register,
USART2_BRR     EQU  (_USART2 + 0x08) ; USART2 Baud rate register,
USART2_CR1     EQU  (_USART2 + 0x0C) ; USART2 Control register 1,
USART2_CR2     EQU  (_USART2 + 0x10) ; USART2 Control register 2,
USART2_CR3     EQU  (_USART2 + 0x14) ; USART2 Control register 3,
USART2_GTPR    EQU  (_USART2 + 0x18) ; USART2 Guard time and prescaler register,

; USART 3

USART3_SR      EQU  (_USART3 + 0x00) ; USART3 Status register,
USART3_DR      EQU  (_USART3 + 0x04) ; USART3 Data register,
USART3_BRR     EQU  (_USART3 + 0x08) ; USART3 Baud rate register,
USART3_CR1     EQU  (_USART3 + 0x0C) ; USART3 Control register 1,
USART3_CR2     EQU  (_USART3 + 0x10) ; USART3 Control register 2,
USART3_CR3     EQU  (_USART3 + 0x14) ; USART3 Control register 3,
USART3_GTPR    EQU  (_USART3 + 0x18) ; USART3 Guard time and prescaler register,

; USART 4

UART4_SR       EQU  (_UART4 + 0x00) ; UART4 Status register,
UART4_DR       EQU  (_UART4 + 0x04) ; UART4 Data register,
UART4_BRR      EQU  (_UART4 + 0x08) ; UART4 Baud rate register,
UART4_CR1      EQU  (_UART4 + 0x0C) ; UART4 Control register 1,
UART4_CR2      EQU  (_UART4 + 0x10) ; UART4 Control register 2,
UART4_CR3      EQU  (_UART4 + 0x14) ; UART4 Control register 3,
UART4_GTPR     EQU  (_UART4 + 0x18) ; UART4 Guard time and prescaler register,

; USART 5

UART5_SR       EQU  (_UART5 + 0x00) ; UART5 Status register,
UART5_DR       EQU  (_UART5 + 0x04) ; UART5 Data register,
UART5_BRR      EQU  (_UART5 + 0x08) ; UART5 Baud rate register,
UART5_CR1      EQU  (_UART5 + 0x0C) ; UART5 Control register 1,
UART5_CR2      EQU  (_UART5 + 0x10) ; UART5 Control register 2,
UART5_CR3      EQU  (_UART5 + 0x14) ; UART5 Control register 3,
UART5_GTPR     EQU  (_UART5 + 0x18) ; UART5 Guard time and prescaler register,



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for USART_SR register  ******************
USART_SR_PE                      EQU  0x0001            ; Parity Error
USART_SR_FE                      EQU  0x0002            ; Framing Error
USART_SR_NE                      EQU  0x0004            ; Noise Error Flag
USART_SR_ORE                     EQU  0x0008            ; OverRun Error
USART_SR_IDLE                    EQU  0x0010            ; IDLE line detected
USART_SR_RXNE                    EQU  0x0020            ; Read Data Register Not Empty
USART_SR_TC                      EQU  0x0040            ; Transmission Complete
USART_SR_TXE                     EQU  0x0080            ; Transmit Data Register Empty
USART_SR_LBD                     EQU  0x0100            ; LIN Break Detection Flag
USART_SR_CTS                     EQU  0x0200            ; CTS Flag

;******************  Bit definition for USART_DR register  ******************
USART_DR_DR                      EQU  0x01FF            ; Data value

;*****************  Bit definition for USART_BRR register  ******************
USART_BRR_DIV_FRACTION           EQU  0x000F            ; Fraction of USARTDIV
USART_BRR_DIV_MANTISSA           EQU  0xFFF0            ; Mantissa of USARTDIV

;*****************  Bit definition for USART_CR1 register  ******************
USART_CR1_SBK                    EQU  0x0001            ; Send Break
USART_CR1_RWU                    EQU  0x0002            ; Receiver wakeup
USART_CR1_RE                     EQU  0x0004            ; Receiver Enable
USART_CR1_TE                     EQU  0x0008            ; Transmitter Enable
USART_CR1_IDLEIE                 EQU  0x0010            ; IDLE Interrupt Enable
USART_CR1_RXNEIE                 EQU  0x0020            ; RXNE Interrupt Enable
USART_CR1_TCIE                   EQU  0x0040            ; Transmission Complete Interrupt Enable
USART_CR1_TXEIE                  EQU  0x0080            ; PE Interrupt Enable
USART_CR1_PEIE                   EQU  0x0100            ; PE Interrupt Enable
USART_CR1_PS                     EQU  0x0200            ; Parity Selection
USART_CR1_PCE                    EQU  0x0400            ; Parity Control Enable
USART_CR1_WAKE                   EQU  0x0800            ; Wakeup method
USART_CR1_M                      EQU  0x1000            ; Word length
USART_CR1_UE                     EQU  0x2000            ; USART Enable
USART_CR1_OVER8                  EQU  0x8000            ; Oversampling by 8-bit mode

;*****************  Bit definition for USART_CR2 register  ******************
USART_CR2_ADD                    EQU  0x000F            ; Address of the USART node
USART_CR2_LBDL                   EQU  0x0020            ; LIN Break Detection Length
USART_CR2_LBDIE                  EQU  0x0040            ; LIN Break Detection Interrupt Enable
USART_CR2_LBCL                   EQU  0x0100            ; Last Bit Clock pulse
USART_CR2_CPHA                   EQU  0x0200            ; Clock Phase
USART_CR2_CPOL                   EQU  0x0400            ; Clock Polarity
USART_CR2_CLKEN                  EQU  0x0800            ; Clock Enable

USART_CR2_STOP                   EQU  0x3000            ; STOP[1:0] bits (STOP bits)
USART_CR2_STOP_0                 EQU  0x1000            ; Bit 0
USART_CR2_STOP_1                 EQU  0x2000            ; Bit 1

USART_CR2_LINEN                  EQU  0x4000            ; LIN mode enable

;*****************  Bit definition for USART_CR3 register  ******************
USART_CR3_EIE                    EQU  0x0001            ; Error Interrupt Enable
USART_CR3_IREN                   EQU  0x0002            ; IrDA mode Enable
USART_CR3_IRLP                   EQU  0x0004            ; IrDA Low-Power
USART_CR3_HDSEL                  EQU  0x0008            ; Half-Duplex Selection
USART_CR3_NACK                   EQU  0x0010            ; Smartcard NACK enable
USART_CR3_SCEN                   EQU  0x0020            ; Smartcard mode enable
USART_CR3_DMAR                   EQU  0x0040            ; DMA Enable Receiver
USART_CR3_DMAT                   EQU  0x0080            ; DMA Enable Transmitter
USART_CR3_RTSE                   EQU  0x0100            ; RTS Enable
USART_CR3_CTSE                   EQU  0x0200            ; CTS Enable
USART_CR3_CTSIE                  EQU  0x0400            ; CTS Interrupt Enable
USART_CR3_ONEBIT                 EQU  0x0800            ; One sample bit method enable

;*****************  Bit definition for USART_GTPR register  *****************
USART_GTPR_PSC                   EQU  0x00FF            ; PSC[7:0] bits (Prescaler value)
USART_GTPR_PSC_0                 EQU  0x0001            ; Bit 0
USART_GTPR_PSC_1                 EQU  0x0002            ; Bit 1
USART_GTPR_PSC_2                 EQU  0x0004            ; Bit 2
USART_GTPR_PSC_3                 EQU  0x0008            ; Bit 3
USART_GTPR_PSC_4                 EQU  0x0010            ; Bit 4
USART_GTPR_PSC_5                 EQU  0x0020            ; Bit 5
USART_GTPR_PSC_6                 EQU  0x0040            ; Bit 6
USART_GTPR_PSC_7                 EQU  0x0080            ; Bit 7

USART_GTPR_GT                    EQU  0xFF00            ; Guard time value

	END
