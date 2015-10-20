;********************************************************************************
; SOUBOR : INI_FSMC.S
; AUTOR  : Petr Dousa, Ondrej Hruska
; DATUM  : 10/2015
; POPIS  : Bitove masky ridicich registru pro FSMC (ext. memory communication)
;
;                       Flexible Static Memory Controller
;
; Toto je soucast knihovny pro STM32L100 vyvijene na Katedre mereni FEL CVUT.
;********************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************

FSMC_BCR1        EQU  (_FSCM + 0x0000) ; SRAM/NOR-Flash chip-select control registers
FSMC_BCR2        EQU  (_FSCM + 0x0008) ;
FSMC_BCR3        EQU  (_FSCM + 0x0010) ;
FSMC_BCR4        EQU  (_FSCM + 0x0018) ;

FSMC_BTR1        EQU  (_FSCM + 0x0004) ; SRAM/NOR-Flash chip-select timing registers
FSMC_BTR2        EQU  (_FSCM + 0x000C) ;
FSMC_BTR3        EQU  (_FSCM + 0x0014) ;
FSMC_BTR4        EQU  (_FSCM + 0x001C) ;

FSMC_BWTR1       EQU  (_FSCM + 0x0104) ; SRAM/NOR-Flash write timing registers
FSMC_BWTR2       EQU  (_FSCM + 0x010C) ;
FSMC_BWTR3       EQU  (_FSCM + 0x0114) ;
FSMC_BWTR4       EQU  (_FSCM + 0x011C) ;


;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************

;*****************  Bit definition for FSMC_BCR1 register  ******************
FSMC_BCR1_MBKEN                  EQU  0x00000001        ; Memory bank enable bit
FSMC_BCR1_MUXEN                  EQU  0x00000002        ; Address/data multiplexing enable bit

FSMC_BCR1_MTYP                   EQU  0x0000000C        ; MTYP[1:0] bits (Memory type)
FSMC_BCR1_MTYP_0                 EQU  0x00000004        ; Bit 0
FSMC_BCR1_MTYP_1                 EQU  0x00000008        ; Bit 1

FSMC_BCR1_MWID                   EQU  0x00000030        ; MWID[1:0] bits (Memory data bus width)
FSMC_BCR1_MWID_0                 EQU  0x00000010        ; Bit 0
FSMC_BCR1_MWID_1                 EQU  0x00000020        ; Bit 1

FSMC_BCR1_FACCEN                 EQU  0x00000040        ; Flash access enable
FSMC_BCR1_BURSTEN                EQU  0x00000100        ; Burst enable bit
FSMC_BCR1_WAITPOL                EQU  0x00000200        ; Wait signal polarity bit
FSMC_BCR1_WRAPMOD                EQU  0x00000400        ; Wrapped burst mode support
FSMC_BCR1_WAITCFG                EQU  0x00000800        ; Wait timing configuration
FSMC_BCR1_WREN                   EQU  0x00001000        ; Write enable bit
FSMC_BCR1_WAITEN                 EQU  0x00002000        ; Wait enable bit
FSMC_BCR1_EXTMOD                 EQU  0x00004000        ; Extended mode enable
FSMC_BCR1_ASYNCWAIT              EQU  0x00008000       ; Asynchronous wait
FSMC_BCR1_CBURSTRW               EQU  0x00080000        ; Write burst enable

;*****************  Bit definition for FSMC_BCR2 register  ******************
FSMC_BCR2_MBKEN                  EQU  0x00000001        ; Memory bank enable bit
FSMC_BCR2_MUXEN                  EQU  0x00000002        ; Address/data multiplexing enable bit

FSMC_BCR2_MTYP                   EQU  0x0000000C        ; MTYP[1:0] bits (Memory type)
FSMC_BCR2_MTYP_0                 EQU  0x00000004        ; Bit 0
FSMC_BCR2_MTYP_1                 EQU  0x00000008        ; Bit 1

FSMC_BCR2_MWID                   EQU  0x00000030        ; MWID[1:0] bits (Memory data bus width)
FSMC_BCR2_MWID_0                 EQU  0x00000010        ; Bit 0
FSMC_BCR2_MWID_1                 EQU  0x00000020        ; Bit 1

FSMC_BCR2_FACCEN                 EQU  0x00000040        ; Flash access enable
FSMC_BCR2_BURSTEN                EQU  0x00000100        ; Burst enable bit
FSMC_BCR2_WAITPOL                EQU  0x00000200        ; Wait signal polarity bit
FSMC_BCR2_WRAPMOD                EQU  0x00000400        ; Wrapped burst mode support
FSMC_BCR2_WAITCFG                EQU  0x00000800        ; Wait timing configuration
FSMC_BCR2_WREN                   EQU  0x00001000        ; Write enable bit
FSMC_BCR2_WAITEN                 EQU  0x00002000        ; Wait enable bit
FSMC_BCR2_EXTMOD                 EQU  0x00004000        ; Extended mode enable
FSMC_BCR2_ASYNCWAIT              EQU  0x00008000       ; Asynchronous wait
FSMC_BCR2_CBURSTRW               EQU  0x00080000        ; Write burst enable

;*****************  Bit definition for FSMC_BCR3 register  ******************
FSMC_BCR3_MBKEN                  EQU  0x00000001        ; Memory bank enable bit
FSMC_BCR3_MUXEN                  EQU  0x00000002        ; Address/data multiplexing enable bit

FSMC_BCR3_MTYP                   EQU  0x0000000C        ; MTYP[1:0] bits (Memory type)
FSMC_BCR3_MTYP_0                 EQU  0x00000004        ; Bit 0
FSMC_BCR3_MTYP_1                 EQU  0x00000008        ; Bit 1

FSMC_BCR3_MWID                   EQU  0x00000030        ; MWID[1:0] bits (Memory data bus width)
FSMC_BCR3_MWID_0                 EQU  0x00000010        ; Bit 0
FSMC_BCR3_MWID_1                 EQU  0x00000020        ; Bit 1

FSMC_BCR3_FACCEN                 EQU  0x00000040        ; Flash access enable
FSMC_BCR3_BURSTEN                EQU  0x00000100        ; Burst enable bit
FSMC_BCR3_WAITPOL                EQU  0x00000200        ; Wait signal polarity bit.
FSMC_BCR3_WRAPMOD                EQU  0x00000400        ; Wrapped burst mode support
FSMC_BCR3_WAITCFG                EQU  0x00000800        ; Wait timing configuration
FSMC_BCR3_WREN                   EQU  0x00001000        ; Write enable bit
FSMC_BCR3_WAITEN                 EQU  0x00002000        ; Wait enable bit
FSMC_BCR3_EXTMOD                 EQU  0x00004000        ; Extended mode enable
FSMC_BCR3_ASYNCWAIT              EQU  0x00008000       ; Asynchronous wait
FSMC_BCR3_CBURSTRW               EQU  0x00080000        ; Write burst enable

;*****************  Bit definition for FSMC_BCR4 register  ******************
FSMC_BCR4_MBKEN                  EQU  0x00000001        ; Memory bank enable bit
FSMC_BCR4_MUXEN                  EQU  0x00000002        ; Address/data multiplexing enable bit

FSMC_BCR4_MTYP                   EQU  0x0000000C        ; MTYP[1:0] bits (Memory type)
FSMC_BCR4_MTYP_0                 EQU  0x00000004        ; Bit 0
FSMC_BCR4_MTYP_1                 EQU  0x00000008        ; Bit 1

FSMC_BCR4_MWID                   EQU  0x00000030        ; MWID[1:0] bits (Memory data bus width)
FSMC_BCR4_MWID_0                 EQU  0x00000010        ; Bit 0
FSMC_BCR4_MWID_1                 EQU  0x00000020        ; Bit 1

FSMC_BCR4_FACCEN                 EQU  0x00000040        ; Flash access enable
FSMC_BCR4_BURSTEN                EQU  0x00000100        ; Burst enable bit
FSMC_BCR4_WAITPOL                EQU  0x00000200        ; Wait signal polarity bit
FSMC_BCR4_WRAPMOD                EQU  0x00000400        ; Wrapped burst mode support
FSMC_BCR4_WAITCFG                EQU  0x00000800        ; Wait timing configuration
FSMC_BCR4_WREN                   EQU  0x00001000        ; Write enable bit
FSMC_BCR4_WAITEN                 EQU  0x00002000        ; Wait enable bit
FSMC_BCR4_EXTMOD                 EQU  0x00004000        ; Extended mode enable
FSMC_BCR4_ASYNCWAIT              EQU  0x00008000       ; Asynchronous wait
FSMC_BCR4_CBURSTRW               EQU  0x00080000        ; Write burst enable

;*****************  Bit definition for FSMC_BTR1 register  *****************
FSMC_BTR1_ADDSET                 EQU  0x0000000F        ; ADDSET[3:0] bits (Address setup phase duration)
FSMC_BTR1_ADDSET_0               EQU  0x00000001        ; Bit 0
FSMC_BTR1_ADDSET_1               EQU  0x00000002        ; Bit 1
FSMC_BTR1_ADDSET_2               EQU  0x00000004        ; Bit 2
FSMC_BTR1_ADDSET_3               EQU  0x00000008        ; Bit 3

FSMC_BTR1_ADDHLD                 EQU  0x000000F0        ; ADDHLD[3:0] bits (Address-hold phase duration)
FSMC_BTR1_ADDHLD_0               EQU  0x00000010        ; Bit 0
FSMC_BTR1_ADDHLD_1               EQU  0x00000020        ; Bit 1
FSMC_BTR1_ADDHLD_2               EQU  0x00000040        ; Bit 2
FSMC_BTR1_ADDHLD_3               EQU  0x00000080        ; Bit 3

FSMC_BTR1_DATAST                 EQU  0x0000FF00        ; DATAST [3:0] bits (Data-phase duration)
FSMC_BTR1_DATAST_0               EQU  0x00000100        ; Bit 0
FSMC_BTR1_DATAST_1               EQU  0x00000200        ; Bit 1
FSMC_BTR1_DATAST_2               EQU  0x00000400        ; Bit 2
FSMC_BTR1_DATAST_3               EQU  0x00000800        ; Bit 3

FSMC_BTR1_BUSTURN                EQU  0x000F0000        ; BUSTURN[3:0] bits (Bus turnaround phase duration)
FSMC_BTR1_BUSTURN_0              EQU  0x00010000        ; Bit 0
FSMC_BTR1_BUSTURN_1              EQU  0x00020000        ; Bit 1
FSMC_BTR1_BUSTURN_2              EQU  0x00040000        ; Bit 2
FSMC_BTR1_BUSTURN_3              EQU  0x00080000        ; Bit 3

FSMC_BTR1_CLKDIV                 EQU  0x00F00000        ; CLKDIV[3:0] bits (Clock divide ratio)
FSMC_BTR1_CLKDIV_0               EQU  0x00100000        ; Bit 0
FSMC_BTR1_CLKDIV_1               EQU  0x00200000        ; Bit 1
FSMC_BTR1_CLKDIV_2               EQU  0x00400000        ; Bit 2
FSMC_BTR1_CLKDIV_3               EQU  0x00800000        ; Bit 3

FSMC_BTR1_DATLAT                 EQU  0x0F000000        ; DATLA[3:0] bits (Data latency)
FSMC_BTR1_DATLAT_0               EQU  0x01000000        ; Bit 0
FSMC_BTR1_DATLAT_1               EQU  0x02000000        ; Bit 1
FSMC_BTR1_DATLAT_2               EQU  0x04000000        ; Bit 2
FSMC_BTR1_DATLAT_3               EQU  0x08000000        ; Bit 3

FSMC_BTR1_ACCMOD                 EQU  0x30000000        ; ACCMOD[1:0] bits (Access mode)
FSMC_BTR1_ACCMOD_0               EQU  0x10000000        ; Bit 0
FSMC_BTR1_ACCMOD_1               EQU  0x20000000        ; Bit 1

;*****************  Bit definition for FSMC_BTR2 register  ******************
FSMC_BTR2_ADDSET                 EQU  0x0000000F        ; ADDSET[3:0] bits (Address setup phase duration)
FSMC_BTR2_ADDSET_0               EQU  0x00000001        ; Bit 0
FSMC_BTR2_ADDSET_1               EQU  0x00000002        ; Bit 1
FSMC_BTR2_ADDSET_2               EQU  0x00000004        ; Bit 2
FSMC_BTR2_ADDSET_3               EQU  0x00000008        ; Bit 3

FSMC_BTR2_ADDHLD                 EQU  0x000000F0        ; ADDHLD[3:0] bits (Address-hold phase duration)
FSMC_BTR2_ADDHLD_0               EQU  0x00000010        ; Bit 0
FSMC_BTR2_ADDHLD_1               EQU  0x00000020        ; Bit 1
FSMC_BTR2_ADDHLD_2               EQU  0x00000040        ; Bit 2
FSMC_BTR2_ADDHLD_3               EQU  0x00000080        ; Bit 3

FSMC_BTR2_DATAST                 EQU  0x0000FF00        ; DATAST [3:0] bits (Data-phase duration)
FSMC_BTR2_DATAST_0               EQU  0x00000100        ; Bit 0
FSMC_BTR2_DATAST_1               EQU  0x00000200        ; Bit 1
FSMC_BTR2_DATAST_2               EQU  0x00000400        ; Bit 2
FSMC_BTR2_DATAST_3               EQU  0x00000800        ; Bit 3

FSMC_BTR2_BUSTURN                EQU  0x000F0000        ; BUSTURN[3:0] bits (Bus turnaround phase duration)
FSMC_BTR2_BUSTURN_0              EQU  0x00010000        ; Bit 0
FSMC_BTR2_BUSTURN_1              EQU  0x00020000        ; Bit 1
FSMC_BTR2_BUSTURN_2              EQU  0x00040000        ; Bit 2
FSMC_BTR2_BUSTURN_3              EQU  0x00080000        ; Bit 3

FSMC_BTR2_CLKDIV                 EQU  0x00F00000        ; CLKDIV[3:0] bits (Clock divide ratio)
FSMC_BTR2_CLKDIV_0               EQU  0x00100000        ; Bit 0
FSMC_BTR2_CLKDIV_1               EQU  0x00200000        ; Bit 1
FSMC_BTR2_CLKDIV_2               EQU  0x00400000        ; Bit 2
FSMC_BTR2_CLKDIV_3               EQU  0x00800000        ; Bit 3

FSMC_BTR2_DATLAT                 EQU  0x0F000000        ; DATLA[3:0] bits (Data latency)
FSMC_BTR2_DATLAT_0               EQU  0x01000000        ; Bit 0
FSMC_BTR2_DATLAT_1               EQU  0x02000000        ; Bit 1
FSMC_BTR2_DATLAT_2               EQU  0x04000000        ; Bit 2
FSMC_BTR2_DATLAT_3               EQU  0x08000000        ; Bit 3

FSMC_BTR2_ACCMOD                 EQU  0x30000000        ; ACCMOD[1:0] bits (Access mode)
FSMC_BTR2_ACCMOD_0               EQU  0x10000000        ; Bit 0
FSMC_BTR2_ACCMOD_1               EQU  0x20000000        ; Bit 1

;******************  Bit definition for FSMC_BTR3 register  ******************
FSMC_BTR3_ADDSET                 EQU  0x0000000F        ; ADDSET[3:0] bits (Address setup phase duration)
FSMC_BTR3_ADDSET_0               EQU  0x00000001        ; Bit 0
FSMC_BTR3_ADDSET_1               EQU  0x00000002        ; Bit 1
FSMC_BTR3_ADDSET_2               EQU  0x00000004        ; Bit 2
FSMC_BTR3_ADDSET_3               EQU  0x00000008        ; Bit 3

FSMC_BTR3_ADDHLD                 EQU  0x000000F0        ; ADDHLD[3:0] bits (Address-hold phase duration)
FSMC_BTR3_ADDHLD_0               EQU  0x00000010        ; Bit 0
FSMC_BTR3_ADDHLD_1               EQU  0x00000020        ; Bit 1
FSMC_BTR3_ADDHLD_2               EQU  0x00000040        ; Bit 2
FSMC_BTR3_ADDHLD_3               EQU  0x00000080        ; Bit 3

FSMC_BTR3_DATAST                 EQU  0x0000FF00        ; DATAST [3:0] bits (Data-phase duration)
FSMC_BTR3_DATAST_0               EQU  0x00000100        ; Bit 0
FSMC_BTR3_DATAST_1               EQU  0x00000200        ; Bit 1
FSMC_BTR3_DATAST_2               EQU  0x00000400        ; Bit 2
FSMC_BTR3_DATAST_3               EQU  0x00000800        ; Bit 3

FSMC_BTR3_BUSTURN                EQU  0x000F0000        ; BUSTURN[3:0] bits (Bus turnaround phase duration)
FSMC_BTR3_BUSTURN_0              EQU  0x00010000        ; Bit 0
FSMC_BTR3_BUSTURN_1              EQU  0x00020000        ; Bit 1
FSMC_BTR3_BUSTURN_2              EQU  0x00040000        ; Bit 2
FSMC_BTR3_BUSTURN_3              EQU  0x00080000        ; Bit 3

FSMC_BTR3_CLKDIV                 EQU  0x00F00000        ; CLKDIV[3:0] bits (Clock divide ratio)
FSMC_BTR3_CLKDIV_0               EQU  0x00100000        ; Bit 0
FSMC_BTR3_CLKDIV_1               EQU  0x00200000        ; Bit 1
FSMC_BTR3_CLKDIV_2               EQU  0x00400000        ; Bit 2
FSMC_BTR3_CLKDIV_3               EQU  0x00800000        ; Bit 3

FSMC_BTR3_DATLAT                 EQU  0x0F000000        ; DATLA[3:0] bits (Data latency)
FSMC_BTR3_DATLAT_0               EQU  0x01000000        ; Bit 0
FSMC_BTR3_DATLAT_1               EQU  0x02000000        ; Bit 1
FSMC_BTR3_DATLAT_2               EQU  0x04000000        ; Bit 2
FSMC_BTR3_DATLAT_3               EQU  0x08000000        ; Bit 3

FSMC_BTR3_ACCMOD                 EQU  0x30000000        ; ACCMOD[1:0] bits (Access mode)
FSMC_BTR3_ACCMOD_0               EQU  0x10000000        ; Bit 0
FSMC_BTR3_ACCMOD_1               EQU  0x20000000        ; Bit 1

;*****************  Bit definition for FSMC_BTR4 register  ******************
FSMC_BTR4_ADDSET                 EQU  0x0000000F        ; ADDSET[3:0] bits (Address setup phase duration)
FSMC_BTR4_ADDSET_0               EQU  0x00000001        ; Bit 0
FSMC_BTR4_ADDSET_1               EQU  0x00000002        ; Bit 1
FSMC_BTR4_ADDSET_2               EQU  0x00000004        ; Bit 2
FSMC_BTR4_ADDSET_3               EQU  0x00000008        ; Bit 3

FSMC_BTR4_ADDHLD                 EQU  0x000000F0        ; ADDHLD[3:0] bits (Address-hold phase duration)
FSMC_BTR4_ADDHLD_0               EQU  0x00000010        ; Bit 0
FSMC_BTR4_ADDHLD_1               EQU  0x00000020        ; Bit 1
FSMC_BTR4_ADDHLD_2               EQU  0x00000040        ; Bit 2
FSMC_BTR4_ADDHLD_3               EQU  0x00000080        ; Bit 3

FSMC_BTR4_DATAST                 EQU  0x0000FF00        ; DATAST [3:0] bits (Data-phase duration)
FSMC_BTR4_DATAST_0               EQU  0x00000100        ; Bit 0
FSMC_BTR4_DATAST_1               EQU  0x00000200        ; Bit 1
FSMC_BTR4_DATAST_2               EQU  0x00000400        ; Bit 2
FSMC_BTR4_DATAST_3               EQU  0x00000800        ; Bit 3

FSMC_BTR4_BUSTURN                EQU  0x000F0000        ; BUSTURN[3:0] bits (Bus turnaround phase duration)
FSMC_BTR4_BUSTURN_0              EQU  0x00010000        ; Bit 0
FSMC_BTR4_BUSTURN_1              EQU  0x00020000        ; Bit 1
FSMC_BTR4_BUSTURN_2              EQU  0x00040000        ; Bit 2
FSMC_BTR4_BUSTURN_3              EQU  0x00080000        ; Bit 3

FSMC_BTR4_CLKDIV                 EQU  0x00F00000        ; CLKDIV[3:0] bits (Clock divide ratio)
FSMC_BTR4_CLKDIV_0               EQU  0x00100000        ; Bit 0
FSMC_BTR4_CLKDIV_1               EQU  0x00200000        ; Bit 1
FSMC_BTR4_CLKDIV_2               EQU  0x00400000        ; Bit 2
FSMC_BTR4_CLKDIV_3               EQU  0x00800000        ; Bit 3

FSMC_BTR4_DATLAT                 EQU  0x0F000000        ; DATLA[3:0] bits (Data latency)
FSMC_BTR4_DATLAT_0               EQU  0x01000000        ; Bit 0
FSMC_BTR4_DATLAT_1               EQU  0x02000000        ; Bit 1
FSMC_BTR4_DATLAT_2               EQU  0x04000000        ; Bit 2
FSMC_BTR4_DATLAT_3               EQU  0x08000000        ; Bit 3

FSMC_BTR4_ACCMOD                 EQU  0x30000000        ; ACCMOD[1:0] bits (Access mode)
FSMC_BTR4_ACCMOD_0               EQU  0x10000000        ; Bit 0
FSMC_BTR4_ACCMOD_1               EQU  0x20000000        ; Bit 1

;*****************  Bit definition for FSMC_BWTR1 register  *****************
FSMC_BWTR1_ADDSET                EQU  0x0000000F        ; ADDSET[3:0] bits (Address setup phase duration)
FSMC_BWTR1_ADDSET_0              EQU  0x00000001        ; Bit 0
FSMC_BWTR1_ADDSET_1              EQU  0x00000002        ; Bit 1
FSMC_BWTR1_ADDSET_2              EQU  0x00000004        ; Bit 2
FSMC_BWTR1_ADDSET_3              EQU  0x00000008        ; Bit 3

FSMC_BWTR1_ADDHLD                EQU  0x000000F0        ; ADDHLD[3:0] bits (Address-hold phase duration)
FSMC_BWTR1_ADDHLD_0              EQU  0x00000010        ; Bit 0
FSMC_BWTR1_ADDHLD_1              EQU  0x00000020        ; Bit 1
FSMC_BWTR1_ADDHLD_2              EQU  0x00000040        ; Bit 2
FSMC_BWTR1_ADDHLD_3              EQU  0x00000080        ; Bit 3

FSMC_BWTR1_DATAST                EQU  0x0000FF00        ; DATAST [3:0] bits (Data-phase duration)
FSMC_BWTR1_DATAST_0              EQU  0x00000100        ; Bit 0
FSMC_BWTR1_DATAST_1              EQU  0x00000200        ; Bit 1
FSMC_BWTR1_DATAST_2              EQU  0x00000400        ; Bit 2
FSMC_BWTR1_DATAST_3              EQU  0x00000800        ; Bit 3

FSMC_BWTR1_CLKDIV                EQU  0x00F00000        ; CLKDIV[3:0] bits (Clock divide ratio)
FSMC_BWTR1_CLKDIV_0              EQU  0x00100000        ; Bit 0
FSMC_BWTR1_CLKDIV_1              EQU  0x00200000        ; Bit 1
FSMC_BWTR1_CLKDIV_2              EQU  0x00400000        ; Bit 2
FSMC_BWTR1_CLKDIV_3              EQU  0x00800000        ; Bit 3

FSMC_BWTR1_DATLAT                EQU  0x0F000000        ; DATLA[3:0] bits (Data latency)
FSMC_BWTR1_DATLAT_0              EQU  0x01000000        ; Bit 0
FSMC_BWTR1_DATLAT_1              EQU  0x02000000        ; Bit 1
FSMC_BWTR1_DATLAT_2              EQU  0x04000000        ; Bit 2
FSMC_BWTR1_DATLAT_3              EQU  0x08000000        ; Bit 3

FSMC_BWTR1_ACCMOD                EQU  0x30000000        ; ACCMOD[1:0] bits (Access mode)
FSMC_BWTR1_ACCMOD_0              EQU  0x10000000        ; Bit 0
FSMC_BWTR1_ACCMOD_1              EQU  0x20000000        ; Bit 1

;*****************  Bit definition for FSMC_BWTR2 register  *****************
FSMC_BWTR2_ADDSET                EQU  0x0000000F        ; ADDSET[3:0] bits (Address setup phase duration)
FSMC_BWTR2_ADDSET_0              EQU  0x00000001        ; Bit 0
FSMC_BWTR2_ADDSET_1              EQU  0x00000002        ; Bit 1
FSMC_BWTR2_ADDSET_2              EQU  0x00000004        ; Bit 2
FSMC_BWTR2_ADDSET_3              EQU  0x00000008        ; Bit 3

FSMC_BWTR2_ADDHLD                EQU  0x000000F0        ; ADDHLD[3:0] bits (Address-hold phase duration)
FSMC_BWTR2_ADDHLD_0              EQU  0x00000010        ; Bit 0
FSMC_BWTR2_ADDHLD_1              EQU  0x00000020        ; Bit 1
FSMC_BWTR2_ADDHLD_2              EQU  0x00000040        ; Bit 2
FSMC_BWTR2_ADDHLD_3              EQU  0x00000080        ; Bit 3

FSMC_BWTR2_DATAST                EQU  0x0000FF00        ; DATAST [3:0] bits (Data-phase duration)
FSMC_BWTR2_DATAST_0              EQU  0x00000100        ; Bit 0
FSMC_BWTR2_DATAST_1              EQU  0x00000200        ; Bit 1
FSMC_BWTR2_DATAST_2              EQU  0x00000400        ; Bit 2
FSMC_BWTR2_DATAST_3              EQU  0x00000800        ; Bit 3

FSMC_BWTR2_CLKDIV                EQU  0x00F00000        ; CLKDIV[3:0] bits (Clock divide ratio)
FSMC_BWTR2_CLKDIV_0              EQU  0x00100000        ; Bit 0
FSMC_BWTR2_CLKDIV_1              EQU  0x00200000        ; Bit 1
FSMC_BWTR2_CLKDIV_2              EQU  0x00400000        ; Bit 2
FSMC_BWTR2_CLKDIV_3              EQU  0x00800000        ; Bit 3

FSMC_BWTR2_DATLAT                EQU  0x0F000000        ; DATLA[3:0] bits (Data latency)
FSMC_BWTR2_DATLAT_0              EQU  0x01000000        ; Bit 0
FSMC_BWTR2_DATLAT_1              EQU  0x02000000        ; Bit 1
FSMC_BWTR2_DATLAT_2              EQU  0x04000000        ; Bit 2
FSMC_BWTR2_DATLAT_3              EQU  0x08000000        ; Bit 3

FSMC_BWTR2_ACCMOD                EQU  0x30000000        ; ACCMOD[1:0] bits (Access mode)
FSMC_BWTR2_ACCMOD_0              EQU  0x10000000        ; Bit 0
FSMC_BWTR2_ACCMOD_1              EQU  0x20000000        ; Bit 1

;*****************  Bit definition for FSMC_BWTR3 register  *****************
FSMC_BWTR3_ADDSET                EQU  0x0000000F        ; ADDSET[3:0] bits (Address setup phase duration)
FSMC_BWTR3_ADDSET_0              EQU  0x00000001        ; Bit 0
FSMC_BWTR3_ADDSET_1              EQU  0x00000002        ; Bit 1
FSMC_BWTR3_ADDSET_2              EQU  0x00000004        ; Bit 2
FSMC_BWTR3_ADDSET_3              EQU  0x00000008        ; Bit 3

FSMC_BWTR3_ADDHLD                EQU  0x000000F0        ; ADDHLD[3:0] bits (Address-hold phase duration)
FSMC_BWTR3_ADDHLD_0              EQU  0x00000010        ; Bit 0
FSMC_BWTR3_ADDHLD_1              EQU  0x00000020        ; Bit 1
FSMC_BWTR3_ADDHLD_2              EQU  0x00000040        ; Bit 2
FSMC_BWTR3_ADDHLD_3              EQU  0x00000080        ; Bit 3

FSMC_BWTR3_DATAST                EQU  0x0000FF00        ; DATAST [3:0] bits (Data-phase duration)
FSMC_BWTR3_DATAST_0              EQU  0x00000100        ; Bit 0
FSMC_BWTR3_DATAST_1              EQU  0x00000200        ; Bit 1
FSMC_BWTR3_DATAST_2              EQU  0x00000400        ; Bit 2
FSMC_BWTR3_DATAST_3              EQU  0x00000800        ; Bit 3

FSMC_BWTR3_CLKDIV                EQU  0x00F00000        ; CLKDIV[3:0] bits (Clock divide ratio)
FSMC_BWTR3_CLKDIV_0              EQU  0x00100000        ; Bit 0
FSMC_BWTR3_CLKDIV_1              EQU  0x00200000        ; Bit 1
FSMC_BWTR3_CLKDIV_2              EQU  0x00400000        ; Bit 2
FSMC_BWTR3_CLKDIV_3              EQU  0x00800000        ; Bit 3

FSMC_BWTR3_DATLAT                EQU  0x0F000000        ; DATLA[3:0] bits (Data latency)
FSMC_BWTR3_DATLAT_0              EQU  0x01000000        ; Bit 0
FSMC_BWTR3_DATLAT_1              EQU  0x02000000        ; Bit 1
FSMC_BWTR3_DATLAT_2              EQU  0x04000000        ; Bit 2
FSMC_BWTR3_DATLAT_3              EQU  0x08000000        ; Bit 3

FSMC_BWTR3_ACCMOD                EQU  0x30000000        ; ACCMOD[1:0] bits (Access mode)
FSMC_BWTR3_ACCMOD_0              EQU  0x10000000        ; Bit 0
FSMC_BWTR3_ACCMOD_1              EQU  0x20000000        ; Bit 1

;*****************  Bit definition for FSMC_BWTR4 register  *****************
FSMC_BWTR4_ADDSET                EQU  0x0000000F        ; ADDSET[3:0] bits (Address setup phase duration)
FSMC_BWTR4_ADDSET_0              EQU  0x00000001        ; Bit 0
FSMC_BWTR4_ADDSET_1              EQU  0x00000002        ; Bit 1
FSMC_BWTR4_ADDSET_2              EQU  0x00000004        ; Bit 2
FSMC_BWTR4_ADDSET_3              EQU  0x00000008        ; Bit 3

FSMC_BWTR4_ADDHLD                EQU  0x000000F0        ; ADDHLD[3:0] bits (Address-hold phase duration)
FSMC_BWTR4_ADDHLD_0              EQU  0x00000010        ; Bit 0
FSMC_BWTR4_ADDHLD_1              EQU  0x00000020        ; Bit 1
FSMC_BWTR4_ADDHLD_2              EQU  0x00000040        ; Bit 2
FSMC_BWTR4_ADDHLD_3              EQU  0x00000080        ; Bit 3

FSMC_BWTR4_DATAST                EQU  0x0000FF00        ; DATAST [3:0] bits (Data-phase duration)
FSMC_BWTR4_DATAST_0              EQU  0x00000100        ; Bit 0
FSMC_BWTR4_DATAST_1              EQU  0x00000200        ; Bit 1
FSMC_BWTR4_DATAST_2              EQU  0x00000400        ; Bit 2
FSMC_BWTR4_DATAST_3              EQU  0x00000800        ; Bit 3

FSMC_BWTR4_CLKDIV                EQU  0x00F00000        ; CLKDIV[3:0] bits (Clock divide ratio)
FSMC_BWTR4_CLKDIV_0              EQU  0x00100000        ; Bit 0
FSMC_BWTR4_CLKDIV_1              EQU  0x00200000        ; Bit 1
FSMC_BWTR4_CLKDIV_2              EQU  0x00400000        ; Bit 2
FSMC_BWTR4_CLKDIV_3              EQU  0x00800000        ; Bit 3

FSMC_BWTR4_DATLAT                EQU  0x0F000000        ; DATLA[3:0] bits (Data latency)
FSMC_BWTR4_DATLAT_0              EQU  0x01000000        ; Bit 0
FSMC_BWTR4_DATLAT_1              EQU  0x02000000        ; Bit 1
FSMC_BWTR4_DATLAT_2              EQU  0x04000000        ; Bit 2
FSMC_BWTR4_DATLAT_3              EQU  0x08000000        ; Bit 3

FSMC_BWTR4_ACCMOD                EQU  0x30000000        ; ACCMOD[1:0] bits (Access mode)
FSMC_BWTR4_ACCMOD_0              EQU  0x10000000        ; Bit 0
FSMC_BWTR4_ACCMOD_1              EQU  0x20000000        ; Bit 1

	END
