;********************************************************************************
; SOUBOR : INI_I2C.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro I2C
;
;                   Inter-integrated Circuit Interface (I2C)
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************


; I2C 1

I2C1_CR1       EQU  (_I2C1 + 0x00) ; I2C1 Control register 1,
I2C1_CR2       EQU  (_I2C1 + 0x04) ; I2C1 Control register 2,
I2C1_OAR1      EQU  (_I2C1 + 0x08) ; I2C1 Own address register 1,
I2C1_OAR2      EQU  (_I2C1 + 0x0C) ; I2C1 Own address register 2,
I2C1_DR        EQU  (_I2C1 + 0x10) ; I2C1 Data register,
I2C1_SR1       EQU  (_I2C1 + 0x14) ; I2C1 Status register 1,
I2C1_SR2       EQU  (_I2C1 + 0x18) ; I2C1 Status register 2,
I2C1_CCR       EQU  (_I2C1 + 0x1C) ; I2C1 Clock control register,
I2C1_TRISE     EQU  (_I2C1 + 0x20) ; I2C1 TRISE register,

; I2C 2

I2C2_CR1       EQU  (_I2C2 + 0x00) ; I2C2 Control register 1,
I2C2_CR2       EQU  (_I2C2 + 0x04) ; I2C2 Control register 2,
I2C2_OAR1      EQU  (_I2C2 + 0x08) ; I2C2 Own address register 1,
I2C2_OAR2      EQU  (_I2C2 + 0x0C) ; I2C2 Own address register 2,
I2C2_DR        EQU  (_I2C2 + 0x10) ; I2C2 Data register,
I2C2_SR1       EQU  (_I2C2 + 0x14) ; I2C2 Status register 1,
I2C2_SR2       EQU  (_I2C2 + 0x18) ; I2C2 Status register 2,
I2C2_CCR       EQU  (_I2C2 + 0x1C) ; I2C2 Clock control register,
I2C2_TRISE     EQU  (_I2C2 + 0x20) ; I2C2 TRISE register,


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for I2C_CR1 register  *******************
I2C_CR1_PE                       EQU  0x0001            ; Peripheral Enable
I2C_CR1_SMBUS                    EQU  0x0002            ; SMBus Mode
I2C_CR1_SMBTYPE                  EQU  0x0008            ; SMBus Type
I2C_CR1_ENARP                    EQU  0x0010            ; ARP Enable
I2C_CR1_ENPEC                    EQU  0x0020            ; PEC Enable
I2C_CR1_ENGC                     EQU  0x0040            ; General Call Enable
I2C_CR1_NOSTRETCH                EQU  0x0080            ; Clock Stretching Disable (Slave mode)
I2C_CR1_START                    EQU  0x0100            ; Start Generation
I2C_CR1_STOP                     EQU  0x0200            ; Stop Generation
I2C_CR1_ACK                      EQU  0x0400            ; Acknowledge Enable
I2C_CR1_POS                      EQU  0x0800            ; Acknowledge/PEC Position (for data reception)
I2C_CR1_PEC                      EQU  0x1000            ; Packet Error Checking
I2C_CR1_ALERT                    EQU  0x2000            ; SMBus Alert
I2C_CR1_SWRST                    EQU  0x8000            ; Software Reset

;******************  Bit definition for I2C_CR2 register  *******************
I2C_CR2_FREQ                     EQU  0x003F            ; FREQ[5:0] bits (Peripheral Clock Frequency)
I2C_CR2_FREQ_0                   EQU  0x0001            ; Bit 0
I2C_CR2_FREQ_1                   EQU  0x0002            ; Bit 1
I2C_CR2_FREQ_2                   EQU  0x0004            ; Bit 2
I2C_CR2_FREQ_3                   EQU  0x0008            ; Bit 3
I2C_CR2_FREQ_4                   EQU  0x0010            ; Bit 4
I2C_CR2_FREQ_5                   EQU  0x0020            ; Bit 5

I2C_CR2_ITERREN                  EQU  0x0100            ; Error Interrupt Enable
I2C_CR2_ITEVTEN                  EQU  0x0200            ; Event Interrupt Enable
I2C_CR2_ITBUFEN                  EQU  0x0400            ; Buffer Interrupt Enable
I2C_CR2_DMAEN                    EQU  0x0800            ; DMA Requests Enable
I2C_CR2_LAST                     EQU  0x1000            ; DMA Last Transfer

;******************  Bit definition for I2C_OAR1 register  ******************
I2C_OAR1_ADD1_7                  EQU  0x00FE            ; Interface Address
I2C_OAR1_ADD8_9                  EQU  0x0300            ; Interface Address

I2C_OAR1_ADD0                    EQU  0x0001            ; Bit 0
I2C_OAR1_ADD1                    EQU  0x0002            ; Bit 1
I2C_OAR1_ADD2                    EQU  0x0004            ; Bit 2
I2C_OAR1_ADD3                    EQU  0x0008            ; Bit 3
I2C_OAR1_ADD4                    EQU  0x0010            ; Bit 4
I2C_OAR1_ADD5                    EQU  0x0020            ; Bit 5
I2C_OAR1_ADD6                    EQU  0x0040            ; Bit 6
I2C_OAR1_ADD7                    EQU  0x0080            ; Bit 7
I2C_OAR1_ADD8                    EQU  0x0100            ; Bit 8
I2C_OAR1_ADD9                    EQU  0x0200            ; Bit 9

I2C_OAR1_ADDMODE                 EQU  0x8000            ; Addressing Mode (Slave mode)

;******************  Bit definition for I2C_OAR2 register  ******************
I2C_OAR2_ENDUAL                  EQU  0x01               ; Dual addressing mode enable
I2C_OAR2_ADD2                    EQU  0xFE               ; Interface address

;*******************  Bit definition for I2C_DR register  *******************
I2C_DR_DR                        EQU  0xFF               ; 8-bit Data Register

;******************  Bit definition for I2C_SR1 register  *******************
I2C_SR1_SB                       EQU  0x0001            ; Start Bit (Master mode)
I2C_SR1_ADDR                     EQU  0x0002            ; Address sent (master mode)/matched (slave mode)
I2C_SR1_BTF                      EQU  0x0004            ; Byte Transfer Finished
I2C_SR1_ADD10                    EQU  0x0008            ; 10-bit header sent (Master mode)
I2C_SR1_STOPF                    EQU  0x0010            ; Stop detection (Slave mode)
I2C_SR1_RXNE                     EQU  0x0040            ; Data Register not Empty (receivers)
I2C_SR1_TXE                      EQU  0x0080            ; Data Register Empty (transmitters)
I2C_SR1_BERR                     EQU  0x0100            ; Bus Error
I2C_SR1_ARLO                     EQU  0x0200            ; Arbitration Lost (master mode)
I2C_SR1_AF                       EQU  0x0400            ; Acknowledge Failure
I2C_SR1_OVR                      EQU  0x0800            ; Overrun/Underrun
I2C_SR1_PECERR                   EQU  0x1000            ; PEC Error in reception
I2C_SR1_TIMEOUT                  EQU  0x4000            ; Timeout or Tlow Error
I2C_SR1_SMBALERT                 EQU  0x8000            ; SMBus Alert

;******************  Bit definition for I2C_SR2 register  *******************
I2C_SR2_MSL                      EQU  0x0001            ; Master/Slave
I2C_SR2_BUSY                     EQU  0x0002            ; Bus Busy
I2C_SR2_TRA                      EQU  0x0004            ; Transmitter/Receiver
I2C_SR2_GENCALL                  EQU  0x0010            ; General Call Address (Slave mode)
I2C_SR2_SMBDEFAULT               EQU  0x0020            ; SMBus Device Default Address (Slave mode)
I2C_SR2_SMBHOST                  EQU  0x0040            ; SMBus Host Header (Slave mode)
I2C_SR2_DUALF                    EQU  0x0080            ; Dual Flag (Slave mode)
I2C_SR2_PEC                      EQU  0xFF00            ; Packet Error Checking Register

;******************  Bit definition for I2C_CCR register  *******************
I2C_CCR_CCR                      EQU  0x0FFF            ; Clock Control Register in Fast/Standard mode (Master mode)
I2C_CCR_DUTY                     EQU  0x4000            ; Fast Mode Duty Cycle
I2C_CCR_FS                       EQU  0x8000            ; I2C Master Mode Selection

;*****************  Bit definition for I2C_TRISE register  ******************
I2C_TRISE_TRISE                  EQU  0x3F               ; Maximum Rise Time in Fast/Standard mode (Master mode)

	END
