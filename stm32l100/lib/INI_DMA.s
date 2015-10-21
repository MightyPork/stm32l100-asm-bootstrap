;********************************************************************************
; FILE   : INI_DMA.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Control registers and bit masks for DMA (Direct memory access)
;
;                           DMA Controller (DMA)
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


; DMA 1

; Status registers
DMA1_ISR         EQU  (_DMA1 + 0x00) ; DMA interrupt status register,
DMA1_IFCR        EQU  (_DMA1 + 0x04) ; DMA interrupt flag clear register,

; Channel bases
_DMA1_CH1 EQU  (_DMA1 + 0x0008)
_DMA1_CH2 EQU  (_DMA1 + 0x001C)
_DMA1_CH3 EQU  (_DMA1 + 0x0030)
_DMA1_CH4 EQU  (_DMA1 + 0x0044)
_DMA1_CH5 EQU  (_DMA1 + 0x0058)
_DMA1_CH6 EQU  (_DMA1 + 0x006C)
_DMA1_CH7 EQU  (_DMA1 + 0x0080)

DMA1_CH1_CCR       EQU  (_DMA1_CH1 + 0x00) ; DMA channel x configuration register
DMA1_CH1_CNDTR     EQU  (_DMA1_CH1 + 0x04) ; DMA channel x number of data register
DMA1_CH1_CPAR      EQU  (_DMA1_CH1 + 0x08) ; DMA channel x peripheral address register
DMA1_CH1_CMAR      EQU  (_DMA1_CH1 + 0x0C) ; DMA channel x memory address register

DMA1_CH2_CCR       EQU  (_DMA1_CH2 + 0x00) ; DMA channel x configuration register
DMA1_CH2_CNDTR     EQU  (_DMA1_CH2 + 0x04) ; DMA channel x number of data register
DMA1_CH2_CPAR      EQU  (_DMA1_CH2 + 0x08) ; DMA channel x peripheral address register
DMA1_CH2_CMAR      EQU  (_DMA1_CH2 + 0x0C) ; DMA channel x memory address register

DMA1_CH3_CCR       EQU  (_DMA1_CH3 + 0x00) ; DMA channel x configuration register
DMA1_CH3_CNDTR     EQU  (_DMA1_CH3 + 0x04) ; DMA channel x number of data register
DMA1_CH3_CPAR      EQU  (_DMA1_CH3 + 0x08) ; DMA channel x peripheral address register
DMA1_CH3_CMAR      EQU  (_DMA1_CH3 + 0x0C) ; DMA channel x memory address register

DMA1_CH4_CCR       EQU  (_DMA1_CH4 + 0x00) ; DMA channel x configuration register
DMA1_CH4_CNDTR     EQU  (_DMA1_CH4 + 0x04) ; DMA channel x number of data register
DMA1_CH4_CPAR      EQU  (_DMA1_CH4 + 0x08) ; DMA channel x peripheral address register
DMA1_CH4_CMAR      EQU  (_DMA1_CH4 + 0x0C) ; DMA channel x memory address register

DMA1_CH5_CCR       EQU  (_DMA1_CH5 + 0x00) ; DMA channel x configuration register
DMA1_CH5_CNDTR     EQU  (_DMA1_CH5 + 0x04) ; DMA channel x number of data register
DMA1_CH5_CPAR      EQU  (_DMA1_CH5 + 0x08) ; DMA channel x peripheral address register
DMA1_CH5_CMAR      EQU  (_DMA1_CH5 + 0x0C) ; DMA channel x memory address register

DMA1_CH6_CCR       EQU  (_DMA1_CH6 + 0x00) ; DMA channel x configuration register
DMA1_CH6_CNDTR     EQU  (_DMA1_CH6 + 0x04) ; DMA channel x number of data register
DMA1_CH6_CPAR      EQU  (_DMA1_CH6 + 0x08) ; DMA channel x peripheral address register
DMA1_CH6_CMAR      EQU  (_DMA1_CH6 + 0x0C) ; DMA channel x memory address register

DMA1_CH7_CCR       EQU  (_DMA1_CH7 + 0x00) ; DMA channel x configuration register
DMA1_CH7_CNDTR     EQU  (_DMA1_CH7 + 0x04) ; DMA channel x number of data register
DMA1_CH7_CPAR      EQU  (_DMA1_CH7 + 0x08) ; DMA channel x peripheral address register
DMA1_CH7_CMAR      EQU  (_DMA1_CH7 + 0x0C) ; DMA channel x memory address register


; DMA 2

; Status registers
DMA2_ISR         EQU  (_DMA2 + 0x00) ; DMA interrupt status register,
DMA2_IFCR        EQU  (_DMA2 + 0x04) ; DMA interrupt flag clear register,

; Channel bases
_DMA2_CH1 EQU  (_DMA2 + 0x0008)
_DMA2_CH2 EQU  (_DMA2 + 0x001C)
_DMA2_CH3 EQU  (_DMA2 + 0x0030)
_DMA2_CH4 EQU  (_DMA2 + 0x0044)
_DMA2_CH5 EQU  (_DMA2 + 0x0058)

DMA2_CH1_CCR       EQU  (_DMA2_CH1 + 0x00) ; DMA channel x configuration register
DMA2_CH1_CNDTR     EQU  (_DMA2_CH1 + 0x04) ; DMA channel x number of data register
DMA2_CH1_CPAR      EQU  (_DMA2_CH1 + 0x08) ; DMA channel x peripheral address register
DMA2_CH1_CMAR      EQU  (_DMA2_CH1 + 0x0C) ; DMA channel x memory address register

DMA2_CH2_CCR       EQU  (_DMA2_CH2 + 0x00) ; DMA channel x configuration register
DMA2_CH2_CNDTR     EQU  (_DMA2_CH2 + 0x04) ; DMA channel x number of data register
DMA2_CH2_CPAR      EQU  (_DMA2_CH2 + 0x08) ; DMA channel x peripheral address register
DMA2_CH2_CMAR      EQU  (_DMA2_CH2 + 0x0C) ; DMA channel x memory address register

DMA2_CH3_CCR       EQU  (_DMA2_CH3 + 0x00) ; DMA channel x configuration register
DMA2_CH3_CNDTR     EQU  (_DMA2_CH3 + 0x04) ; DMA channel x number of data register
DMA2_CH3_CPAR      EQU  (_DMA2_CH3 + 0x08) ; DMA channel x peripheral address register
DMA2_CH3_CMAR      EQU  (_DMA2_CH3 + 0x0C) ; DMA channel x memory address register

DMA2_CH4_CCR       EQU  (_DMA2_CH4 + 0x00) ; DMA channel x configuration register
DMA2_CH4_CNDTR     EQU  (_DMA2_CH4 + 0x04) ; DMA channel x number of data register
DMA2_CH4_CPAR      EQU  (_DMA2_CH4 + 0x08) ; DMA channel x peripheral address register
DMA2_CH4_CMAR      EQU  (_DMA2_CH4 + 0x0C) ; DMA channel x memory address register

DMA2_CH5_CCR       EQU  (_DMA2_CH5 + 0x00) ; DMA channel x configuration register
DMA2_CH5_CNDTR     EQU  (_DMA2_CH5 + 0x04) ; DMA channel x number of data register
DMA2_CH5_CPAR      EQU  (_DMA2_CH5 + 0x08) ; DMA channel x peripheral address register
DMA2_CH5_CMAR      EQU  (_DMA2_CH5 + 0x0C) ; DMA channel x memory address register



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;******************  Bit definition for DMA_ISR register  *******************
DMA_ISR_GIF1                     EQU  0x00000001        ; Channel 1 Global interrupt flag
DMA_ISR_TCIF1                    EQU  0x00000002        ; Channel 1 Transfer Complete flag
DMA_ISR_HTIF1                    EQU  0x00000004        ; Channel 1 Half Transfer flag
DMA_ISR_TEIF1                    EQU  0x00000008        ; Channel 1 Transfer Error flag
DMA_ISR_GIF2                     EQU  0x00000010        ; Channel 2 Global interrupt flag
DMA_ISR_TCIF2                    EQU  0x00000020        ; Channel 2 Transfer Complete flag
DMA_ISR_HTIF2                    EQU  0x00000040        ; Channel 2 Half Transfer flag
DMA_ISR_TEIF2                    EQU  0x00000080        ; Channel 2 Transfer Error flag
DMA_ISR_GIF3                     EQU  0x00000100        ; Channel 3 Global interrupt flag
DMA_ISR_TCIF3                    EQU  0x00000200        ; Channel 3 Transfer Complete flag
DMA_ISR_HTIF3                    EQU  0x00000400        ; Channel 3 Half Transfer flag
DMA_ISR_TEIF3                    EQU  0x00000800        ; Channel 3 Transfer Error flag
DMA_ISR_GIF4                     EQU  0x00001000        ; Channel 4 Global interrupt flag
DMA_ISR_TCIF4                    EQU  0x00002000        ; Channel 4 Transfer Complete flag
DMA_ISR_HTIF4                    EQU  0x00004000        ; Channel 4 Half Transfer flag
DMA_ISR_TEIF4                    EQU  0x00008000        ; Channel 4 Transfer Error flag
DMA_ISR_GIF5                     EQU  0x00010000        ; Channel 5 Global interrupt flag
DMA_ISR_TCIF5                    EQU  0x00020000        ; Channel 5 Transfer Complete flag
DMA_ISR_HTIF5                    EQU  0x00040000        ; Channel 5 Half Transfer flag
DMA_ISR_TEIF5                    EQU  0x00080000        ; Channel 5 Transfer Error flag
DMA_ISR_GIF6                     EQU  0x00100000        ; Channel 6 Global interrupt flag
DMA_ISR_TCIF6                    EQU  0x00200000        ; Channel 6 Transfer Complete flag
DMA_ISR_HTIF6                    EQU  0x00400000        ; Channel 6 Half Transfer flag
DMA_ISR_TEIF6                    EQU  0x00800000        ; Channel 6 Transfer Error flag
DMA_ISR_GIF7                     EQU  0x01000000        ; Channel 7 Global interrupt flag
DMA_ISR_TCIF7                    EQU  0x02000000        ; Channel 7 Transfer Complete flag
DMA_ISR_HTIF7                    EQU  0x04000000        ; Channel 7 Half Transfer flag
DMA_ISR_TEIF7                    EQU  0x08000000        ; Channel 7 Transfer Error flag

;******************  Bit definition for DMA_IFCR register  ******************
DMA_IFCR_CGIF1                   EQU  0x00000001        ; Channel 1 Global interrupt clearr
DMA_IFCR_CTCIF1                  EQU  0x00000002        ; Channel 1 Transfer Complete clear
DMA_IFCR_CHTIF1                  EQU  0x00000004        ; Channel 1 Half Transfer clear
DMA_IFCR_CTEIF1                  EQU  0x00000008        ; Channel 1 Transfer Error clear
DMA_IFCR_CGIF2                   EQU  0x00000010        ; Channel 2 Global interrupt clear
DMA_IFCR_CTCIF2                  EQU  0x00000020        ; Channel 2 Transfer Complete clear
DMA_IFCR_CHTIF2                  EQU  0x00000040        ; Channel 2 Half Transfer clear
DMA_IFCR_CTEIF2                  EQU  0x00000080        ; Channel 2 Transfer Error clear
DMA_IFCR_CGIF3                   EQU  0x00000100        ; Channel 3 Global interrupt clear
DMA_IFCR_CTCIF3                  EQU  0x00000200        ; Channel 3 Transfer Complete clear
DMA_IFCR_CHTIF3                  EQU  0x00000400        ; Channel 3 Half Transfer clear
DMA_IFCR_CTEIF3                  EQU  0x00000800        ; Channel 3 Transfer Error clear
DMA_IFCR_CGIF4                   EQU  0x00001000        ; Channel 4 Global interrupt clear
DMA_IFCR_CTCIF4                  EQU  0x00002000        ; Channel 4 Transfer Complete clear
DMA_IFCR_CHTIF4                  EQU  0x00004000        ; Channel 4 Half Transfer clear
DMA_IFCR_CTEIF4                  EQU  0x00008000        ; Channel 4 Transfer Error clear
DMA_IFCR_CGIF5                   EQU  0x00010000        ; Channel 5 Global interrupt clear
DMA_IFCR_CTCIF5                  EQU  0x00020000        ; Channel 5 Transfer Complete clear
DMA_IFCR_CHTIF5                  EQU  0x00040000        ; Channel 5 Half Transfer clear
DMA_IFCR_CTEIF5                  EQU  0x00080000        ; Channel 5 Transfer Error clear
DMA_IFCR_CGIF6                   EQU  0x00100000        ; Channel 6 Global interrupt clear
DMA_IFCR_CTCIF6                  EQU  0x00200000        ; Channel 6 Transfer Complete clear
DMA_IFCR_CHTIF6                  EQU  0x00400000        ; Channel 6 Half Transfer clear
DMA_IFCR_CTEIF6                  EQU  0x00800000        ; Channel 6 Transfer Error clear
DMA_IFCR_CGIF7                   EQU  0x01000000        ; Channel 7 Global interrupt clear
DMA_IFCR_CTCIF7                  EQU  0x02000000        ; Channel 7 Transfer Complete clear
DMA_IFCR_CHTIF7                  EQU  0x04000000        ; Channel 7 Half Transfer clear
DMA_IFCR_CTEIF7                  EQU  0x08000000        ; Channel 7 Transfer Error clear

;******************  Bit definition for DMA_CCR1 register  ******************
DMA_CCR1_EN                      EQU  0x0001            ; Channel enable
DMA_CCR1_TCIE                    EQU  0x0002            ; Transfer complete interrupt enable
DMA_CCR1_HTIE                    EQU  0x0004            ; Half Transfer interrupt enable
DMA_CCR1_TEIE                    EQU  0x0008            ; Transfer error interrupt enable
DMA_CCR1_DIR                     EQU  0x0010            ; Data transfer direction
DMA_CCR1_CIRC                    EQU  0x0020            ; Circular mode
DMA_CCR1_PINC                    EQU  0x0040            ; Peripheral increment mode
DMA_CCR1_MINC                    EQU  0x0080            ; Memory increment mode

DMA_CCR1_PSIZE                   EQU  0x0300            ; PSIZE[1:0] bits (Peripheral size)
DMA_CCR1_PSIZE_0                 EQU  0x0100            ; Bit 0
DMA_CCR1_PSIZE_1                 EQU  0x0200            ; Bit 1

DMA_CCR1_MSIZE                   EQU  0x0C00            ; MSIZE[1:0] bits (Memory size)
DMA_CCR1_MSIZE_0                 EQU  0x0400            ; Bit 0
DMA_CCR1_MSIZE_1                 EQU  0x0800            ; Bit 1

DMA_CCR1_PL                      EQU  0x3000            ; PL[1:0] bits(Channel Priority level)
DMA_CCR1_PL_0                    EQU  0x1000            ; Bit 0
DMA_CCR1_PL_1                    EQU  0x2000            ; Bit 1

DMA_CCR1_MEM2MEM                 EQU  0x4000            ; Memory to memory mode

;******************  Bit definition for DMA_CCR2 register  ******************
DMA_CCR2_EN                      EQU  0x0001            ; Channel enable
DMA_CCR2_TCIE                    EQU  0x0002            ; ransfer complete interrupt enable
DMA_CCR2_HTIE                    EQU  0x0004            ; Half Transfer interrupt enable
DMA_CCR2_TEIE                    EQU  0x0008            ; Transfer error interrupt enable
DMA_CCR2_DIR                     EQU  0x0010            ; Data transfer direction
DMA_CCR2_CIRC                    EQU  0x0020            ; Circular mode
DMA_CCR2_PINC                    EQU  0x0040            ; Peripheral increment mode
DMA_CCR2_MINC                    EQU  0x0080            ; Memory increment mode

DMA_CCR2_PSIZE                   EQU  0x0300            ; PSIZE[1:0] bits (Peripheral size)
DMA_CCR2_PSIZE_0                 EQU  0x0100            ; Bit 0
DMA_CCR2_PSIZE_1                 EQU  0x0200            ; Bit 1

DMA_CCR2_MSIZE                   EQU  0x0C00            ; MSIZE[1:0] bits (Memory size)
DMA_CCR2_MSIZE_0                 EQU  0x0400            ; Bit 0
DMA_CCR2_MSIZE_1                 EQU  0x0800            ; Bit 1

DMA_CCR2_PL                      EQU  0x3000            ; PL[1:0] bits (Channel Priority level)
DMA_CCR2_PL_0                    EQU  0x1000            ; Bit 0
DMA_CCR2_PL_1                    EQU  0x2000            ; Bit 1

DMA_CCR2_MEM2MEM                 EQU  0x4000            ; Memory to memory mode

;******************  Bit definition for DMA_CCR3 register  ******************
DMA_CCR3_EN                      EQU  0x0001            ; Channel enable
DMA_CCR3_TCIE                    EQU  0x0002            ; Transfer complete interrupt enable
DMA_CCR3_HTIE                    EQU  0x0004            ; Half Transfer interrupt enable
DMA_CCR3_TEIE                    EQU  0x0008            ; Transfer error interrupt enable
DMA_CCR3_DIR                     EQU  0x0010            ; Data transfer direction
DMA_CCR3_CIRC                    EQU  0x0020            ; Circular mode
DMA_CCR3_PINC                    EQU  0x0040            ; Peripheral increment mode
DMA_CCR3_MINC                    EQU  0x0080            ; Memory increment mode

DMA_CCR3_PSIZE                   EQU  0x0300            ; PSIZE[1:0] bits (Peripheral size)
DMA_CCR3_PSIZE_0                 EQU  0x0100            ; Bit 0
DMA_CCR3_PSIZE_1                 EQU  0x0200            ; Bit 1

DMA_CCR3_MSIZE                   EQU  0x0C00            ; MSIZE[1:0] bits (Memory size)
DMA_CCR3_MSIZE_0                 EQU  0x0400            ; Bit 0
DMA_CCR3_MSIZE_1                 EQU  0x0800            ; Bit 1

DMA_CCR3_PL                      EQU  0x3000            ; PL[1:0] bits (Channel Priority level)
DMA_CCR3_PL_0                    EQU  0x1000            ; Bit 0
DMA_CCR3_PL_1                    EQU  0x2000            ; Bit 1

DMA_CCR3_MEM2MEM                 EQU  0x4000            ; Memory to memory mode

; ******************  Bit definition for DMA_CCR4 register  ******************
DMA_CCR4_EN                      EQU  0x0001            ; Channel enable
DMA_CCR4_TCIE                    EQU  0x0002            ; Transfer complete interrupt enable
DMA_CCR4_HTIE                    EQU  0x0004            ; Half Transfer interrupt enable
DMA_CCR4_TEIE                    EQU  0x0008            ; Transfer error interrupt enable
DMA_CCR4_DIR                     EQU  0x0010            ; Data transfer direction
DMA_CCR4_CIRC                    EQU  0x0020            ; Circular mode
DMA_CCR4_PINC                    EQU  0x0040            ; Peripheral increment mode
DMA_CCR4_MINC                    EQU  0x0080            ; Memory increment mode

DMA_CCR4_PSIZE                   EQU  0x0300            ; PSIZE[1:0] bits (Peripheral size)
DMA_CCR4_PSIZE_0                 EQU  0x0100            ; Bit 0
DMA_CCR4_PSIZE_1                 EQU  0x0200            ; Bit 1

DMA_CCR4_MSIZE                   EQU  0x0C00            ; MSIZE[1:0] bits (Memory size)
DMA_CCR4_MSIZE_0                 EQU  0x0400            ; Bit 0
DMA_CCR4_MSIZE_1                 EQU  0x0800            ; Bit 1

DMA_CCR4_PL                      EQU  0x3000            ; PL[1:0] bits (Channel Priority level)
DMA_CCR4_PL_0                    EQU  0x1000            ; Bit 0
DMA_CCR4_PL_1                    EQU  0x2000            ; Bit 1

DMA_CCR4_MEM2MEM                 EQU  0x4000            ; Memory to memory mode

;*****************  Bit definition for DMA_CCR5 register  ******************
DMA_CCR5_EN                      EQU  0x0001            ; Channel enable
DMA_CCR5_TCIE                    EQU  0x0002            ; Transfer complete interrupt enable
DMA_CCR5_HTIE                    EQU  0x0004            ; Half Transfer interrupt enable
DMA_CCR5_TEIE                    EQU  0x0008            ; Transfer error interrupt enable
DMA_CCR5_DIR                     EQU  0x0010            ; Data transfer direction
DMA_CCR5_CIRC                    EQU  0x0020            ; Circular mode
DMA_CCR5_PINC                    EQU  0x0040            ; Peripheral increment mode
DMA_CCR5_MINC                    EQU  0x0080            ; Memory increment mode

DMA_CCR5_PSIZE                   EQU  0x0300            ; PSIZE[1:0] bits (Peripheral size)
DMA_CCR5_PSIZE_0                 EQU  0x0100            ; Bit 0
DMA_CCR5_PSIZE_1                 EQU  0x0200            ; Bit 1

DMA_CCR5_MSIZE                   EQU  0x0C00            ; MSIZE[1:0] bits (Memory size)
DMA_CCR5_MSIZE_0                 EQU  0x0400            ; Bit 0
DMA_CCR5_MSIZE_1                 EQU  0x0800            ; Bit 1

DMA_CCR5_PL                      EQU  0x3000            ; PL[1:0] bits (Channel Priority level)
DMA_CCR5_PL_0                    EQU  0x1000            ; Bit 0
DMA_CCR5_PL_1                    EQU  0x2000            ; Bit 1

DMA_CCR5_MEM2MEM                 EQU  0x4000            ; Memory to memory mode enable

;******************  Bit definition for DMA_CCR6 register  ******************
DMA_CCR6_EN                      EQU  0x0001            ; Channel enable
DMA_CCR6_TCIE                    EQU  0x0002            ; Transfer complete interrupt enable
DMA_CCR6_HTIE                    EQU  0x0004            ; Half Transfer interrupt enable
DMA_CCR6_TEIE                    EQU  0x0008            ; Transfer error interrupt enable
DMA_CCR6_DIR                     EQU  0x0010            ; Data transfer direction
DMA_CCR6_CIRC                    EQU  0x0020            ; Circular mode
DMA_CCR6_PINC                    EQU  0x0040            ; Peripheral increment mode
DMA_CCR6_MINC                    EQU  0x0080            ; Memory increment mode

DMA_CCR6_PSIZE                   EQU  0x0300            ; PSIZE[1:0] bits (Peripheral size)
DMA_CCR6_PSIZE_0                 EQU  0x0100            ; Bit 0
DMA_CCR6_PSIZE_1                 EQU  0x0200            ; Bit 1

DMA_CCR6_MSIZE                   EQU  0x0C00            ; MSIZE[1:0] bits (Memory size)
DMA_CCR6_MSIZE_0                 EQU  0x0400            ; Bit 0
DMA_CCR6_MSIZE_1                 EQU  0x0800            ; Bit 1

DMA_CCR6_PL                      EQU  0x3000            ; PL[1:0] bits (Channel Priority level)
DMA_CCR6_PL_0                    EQU  0x1000            ; Bit 0
DMA_CCR6_PL_1                    EQU  0x2000            ; Bit 1

DMA_CCR6_MEM2MEM                 EQU  0x4000            ; Memory to memory mode

;******************  Bit definition for DMA_CCR7 register  ******************
DMA_CCR7_EN                      EQU  0x0001            ; Channel enable
DMA_CCR7_TCIE                    EQU  0x0002            ; Transfer complete interrupt enable
DMA_CCR7_HTIE                    EQU  0x0004            ; Half Transfer interrupt enable
DMA_CCR7_TEIE                    EQU  0x0008            ; Transfer error interrupt enable
DMA_CCR7_DIR                     EQU  0x0010            ; Data transfer direction
DMA_CCR7_CIRC                    EQU  0x0020            ; Circular mode
DMA_CCR7_PINC                    EQU  0x0040            ; Peripheral increment mode
DMA_CCR7_MINC                    EQU  0x0080            ; Memory increment mode

DMA_CCR7_PSIZE                   EQU  0x0300            ; PSIZE[1:0] bits (Peripheral size)
DMA_CCR7_PSIZE_0                 EQU  0x0100            ; Bit 0
DMA_CCR7_PSIZE_1                 EQU  0x0200            ; Bit 1

DMA_CCR7_MSIZE                   EQU  0x0C00            ; MSIZE[1:0] bits (Memory size)
DMA_CCR7_MSIZE_0                 EQU  0x0400            ; Bit 0
DMA_CCR7_MSIZE_1                 EQU  0x0800            ; Bit 1

DMA_CCR7_PL                      EQU  0x3000            ; PL[1:0] bits (Channel Priority level)
DMA_CCR7_PL_0                    EQU  0x1000            ; Bit 0
DMA_CCR7_PL_1                    EQU  0x2000            ; Bit 1

DMA_CCR7_MEM2MEM                 EQU  0x4000            ; Memory to memory mode enable

;*****************  Bit definition for DMA_CNDTR1 register  *****************
DMA_CNDTR1_NDT                   EQU  0xFFFF            ; Number of data to Transfer

;*****************  Bit definition for DMA_CNDTR2 register  *****************
DMA_CNDTR2_NDT                   EQU  0xFFFF            ; Number of data to Transfer

;*****************  Bit definition for DMA_CNDTR3 register  *****************
DMA_CNDTR3_NDT                   EQU  0xFFFF            ; Number of data to Transfer

;*****************  Bit definition for DMA_CNDTR4 register  *****************
DMA_CNDTR4_NDT                   EQU  0xFFFF            ; Number of data to Transfer

;*****************  Bit definition for DMA_CNDTR5 register  *****************
DMA_CNDTR5_NDT                   EQU  0xFFFF            ; Number of data to Transfer

;*****************  Bit definition for DMA_CNDTR6 register  *****************
DMA_CNDTR6_NDT                   EQU  0xFFFF            ; Number of data to Transfer

;*****************  Bit definition for DMA_CNDTR7 register  *****************
DMA_CNDTR7_NDT                   EQU  0xFFFF            ; Number of data to Transfer

;*****************  Bit definition for DMA_CPAR1 register  ******************
DMA_CPAR1_PA                     EQU  0xFFFFFFFF        ; Peripheral Address

;*****************  Bit definition for DMA_CPAR2 register  ******************
DMA_CPAR2_PA                     EQU  0xFFFFFFFF        ; Peripheral Address

;*****************  Bit definition for DMA_CPAR3 register  ******************
DMA_CPAR3_PA                     EQU  0xFFFFFFFF        ; Peripheral Address


;*****************  Bit definition for DMA_CPAR4 register  ******************
DMA_CPAR4_PA                     EQU  0xFFFFFFFF        ; Peripheral Address

;*****************  Bit definition for DMA_CPAR5 register  ******************
DMA_CPAR5_PA                     EQU  0xFFFFFFFF        ; Peripheral Address

;*****************  Bit definition for DMA_CPAR6 register  ******************
DMA_CPAR6_PA                     EQU  0xFFFFFFFF        ; Peripheral Address


;*****************  Bit definition for DMA_CPAR7 register  ******************
DMA_CPAR7_PA                     EQU  0xFFFFFFFF        ; Peripheral Address

;*****************  Bit definition for DMA_CMAR1 register  ******************
DMA_CMAR1_MA                     EQU  0xFFFFFFFF        ; Memory Address

;*****************  Bit definition for DMA_CMAR2 register  ******************
DMA_CMAR2_MA                     EQU  0xFFFFFFFF        ; Memory Address

;*****************  Bit definition for DMA_CMAR3 register  ******************
DMA_CMAR3_MA                     EQU  0xFFFFFFFF        ; Memory Address


;*****************  Bit definition for DMA_CMAR4 register  ******************
DMA_CMAR4_MA                     EQU  0xFFFFFFFF        ; Memory Address

;*****************  Bit definition for DMA_CMAR5 register  ******************
DMA_CMAR5_MA                     EQU  0xFFFFFFFF        ; Memory Address

;*****************  Bit definition for DMA_CMAR6 register  ******************
DMA_CMAR6_MA                     EQU  0xFFFFFFFF        ; Memory Address

;*****************  Bit definition for DMA_CMAR7 register  ******************
DMA_CMAR7_MA                     EQU  0xFFFFFFFF        ; Memory Address

	END
