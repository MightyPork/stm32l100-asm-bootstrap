;********************************************************************************
; FILE   : INI_RTC.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Control registers and bit masks for RTC (real time clock circuit)
;
;                           Real-Time Clock (RTC)
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


; RTC

RTC_TR              EQU  (_RTC + 0x00) ; RTC time register,
RTC_DR              EQU  (_RTC + 0x04) ; RTC date register,
RTC_CR              EQU  (_RTC + 0x08) ; RTC control register,
RTC_ISR             EQU  (_RTC + 0x0C) ; RTC initialization and status register,
RTC_PRER            EQU  (_RTC + 0x10) ; RTC prescaler register,
RTC_WUTR            EQU  (_RTC + 0x14) ; RTC wakeup timer register,
RTC_CALIBR          EQU  (_RTC + 0x18) ; RTC calibration register,
RTC_ALRMAR          EQU  (_RTC + 0x1C) ; RTC alarm A register,
RTC_ALRMBR          EQU  (_RTC + 0x20) ; RTC alarm B register,
RTC_WPR             EQU  (_RTC + 0x24) ; RTC write protection register,
RTC_SSR             EQU  (_RTC + 0x28) ; RTC sub second register,
RTC_SHIFTR          EQU  (_RTC + 0x2C) ; RTC shift control register,
RTC_TSTR            EQU  (_RTC + 0x30) ; RTC time stamp time register,
RTC_TSDR            EQU  (_RTC + 0x34) ; RTC time stamp date register,
RTC_TSSSR           EQU  (_RTC + 0x38) ; RTC time-stamp sub second register,
RTC_CALR            EQU  (_RTC + 0x3C) ; RRTC calibration register,
RTC_TAFCR           EQU  (_RTC + 0x40) ; RTC tamper and alternate function configuration register,
RTC_ALRMASSR        EQU  (_RTC + 0x44) ; RTC alarm A sub second register,
RTC_ALRMBSSR        EQU  (_RTC + 0x48) ; RTC alarm B sub second register,
RTC_BKP0R_REG       EQU  (_RTC + 0x50) ; RTC backup register 0,
RTC_BKP1R_REG       EQU  (_RTC + 0x54) ; RTC backup register 1,
RTC_BKP2R_REG       EQU  (_RTC + 0x58) ; RTC backup register 2,
RTC_BKP3R_REG       EQU  (_RTC + 0x5C) ; RTC backup register 3,
RTC_BKP4R_REG       EQU  (_RTC + 0x60) ; RTC backup register 4,
RTC_BKP5R_REG       EQU  (_RTC + 0x64) ; RTC backup register 5,
RTC_BKP6R_REG       EQU  (_RTC + 0x68) ; RTC backup register 6,
RTC_BKP7R_REG       EQU  (_RTC + 0x6C) ; RTC backup register 7,
RTC_BKP8R_REG       EQU  (_RTC + 0x70) ; RTC backup register 8,
RTC_BKP9R_REG       EQU  (_RTC + 0x74) ; RTC backup register 9,
RTC_BKP10R_REG      EQU  (_RTC + 0x78) ; RTC backup register 10,
RTC_BKP11R_REG      EQU  (_RTC + 0x7C) ; RTC backup register 11,
RTC_BKP12R_REG      EQU  (_RTC + 0x80) ; RTC backup register 12,
RTC_BKP13R_REG      EQU  (_RTC + 0x84) ; RTC backup register 13,
RTC_BKP14R_REG      EQU  (_RTC + 0x88) ; RTC backup register 14,
RTC_BKP15R_REG      EQU  (_RTC + 0x8C) ; RTC backup register 15,
RTC_BKP16R_REG      EQU  (_RTC + 0x90) ; RTC backup register 16,
RTC_BKP17R_REG      EQU  (_RTC + 0x94) ; RTC backup register 17,
RTC_BKP18R_REG      EQU  (_RTC + 0x98) ; RTC backup register 18,
RTC_BKP19R_REG      EQU  (_RTC + 0x9C) ; RTC backup register 19,
RTC_BKP20R_REG      EQU  (_RTC + 0xA0) ; RTC backup register 20,
RTC_BKP21R_REG      EQU  (_RTC + 0xA4) ; RTC backup register 21,
RTC_BKP22R_REG      EQU  (_RTC + 0xA8) ; RTC backup register 22,
RTC_BKP23R_REG      EQU  (_RTC + 0xAC) ; RTC backup register 23,
RTC_BKP24R_REG      EQU  (_RTC + 0xB0) ; RTC backup register 24,
RTC_BKP25R_REG      EQU  (_RTC + 0xB4) ; RTC backup register 25,
RTC_BKP26R_REG      EQU  (_RTC + 0xB8) ; RTC backup register 26,
RTC_BKP27R_REG      EQU  (_RTC + 0xBC) ; RTC backup register 27,
RTC_BKP28R_REG      EQU  (_RTC + 0xC0) ; RTC backup register 28,
RTC_BKP29R_REG      EQU  (_RTC + 0xC4) ; RTC backup register 29,
RTC_BKP30R_REG      EQU  (_RTC + 0xC8) ; RTC backup register 30,
RTC_BKP31R_REG      EQU  (_RTC + 0xCC) ; RTC backup register 31,



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;*******************  Bits definition for RTC_TR register  ******************
RTC_TR_PM                         EQU  0x00400000
RTC_TR_HT                         EQU  0x00300000
RTC_TR_HT_0                       EQU  0x00100000
RTC_TR_HT_1                       EQU  0x00200000
RTC_TR_HU                         EQU  0x000F0000
RTC_TR_HU_0                       EQU  0x00010000
RTC_TR_HU_1                       EQU  0x00020000
RTC_TR_HU_2                       EQU  0x00040000
RTC_TR_HU_3                       EQU  0x00080000
RTC_TR_MNT                        EQU  0x00007000
RTC_TR_MNT_0                      EQU  0x00001000
RTC_TR_MNT_1                      EQU  0x00002000
RTC_TR_MNT_2                      EQU  0x00004000
RTC_TR_MNU                        EQU  0x00000F00
RTC_TR_MNU_0                      EQU  0x00000100
RTC_TR_MNU_1                      EQU  0x00000200
RTC_TR_MNU_2                      EQU  0x00000400
RTC_TR_MNU_3                      EQU  0x00000800
RTC_TR_ST                         EQU  0x00000070
RTC_TR_ST_0                       EQU  0x00000010
RTC_TR_ST_1                       EQU  0x00000020
RTC_TR_ST_2                       EQU  0x00000040
RTC_TR_SU                         EQU  0x0000000F
RTC_TR_SU_0                       EQU  0x00000001
RTC_TR_SU_1                       EQU  0x00000002
RTC_TR_SU_2                       EQU  0x00000004
RTC_TR_SU_3                       EQU  0x00000008

;*******************  Bits definition for RTC_DR register  ******************
RTC_DR_YT                         EQU  0x00F00000
RTC_DR_YT_0                       EQU  0x00100000
RTC_DR_YT_1                       EQU  0x00200000
RTC_DR_YT_2                       EQU  0x00400000
RTC_DR_YT_3                       EQU  0x00800000
RTC_DR_YU                         EQU  0x000F0000
RTC_DR_YU_0                       EQU  0x00010000
RTC_DR_YU_1                       EQU  0x00020000
RTC_DR_YU_2                       EQU  0x00040000
RTC_DR_YU_3                       EQU  0x00080000
RTC_DR_WDU                        EQU  0x0000E000
RTC_DR_WDU_0                      EQU  0x00002000
RTC_DR_WDU_1                      EQU  0x00004000
RTC_DR_WDU_2                      EQU  0x00008000
RTC_DR_MT                         EQU  0x00001000
RTC_DR_MU                         EQU  0x00000F00
RTC_DR_MU_0                       EQU  0x00000100
RTC_DR_MU_1                       EQU  0x00000200
RTC_DR_MU_2                       EQU  0x00000400
RTC_DR_MU_3                       EQU  0x00000800
RTC_DR_DT                         EQU  0x00000030
RTC_DR_DT_0                       EQU  0x00000010
RTC_DR_DT_1                       EQU  0x00000020
RTC_DR_DU                         EQU  0x0000000F
RTC_DR_DU_0                       EQU  0x00000001
RTC_DR_DU_1                       EQU  0x00000002
RTC_DR_DU_2                       EQU  0x00000004
RTC_DR_DU_3                       EQU  0x00000008

;*******************  Bits definition for RTC_CR register  ******************
RTC_CR_COE                        EQU  0x00800000
RTC_CR_OSEL                       EQU  0x00600000
RTC_CR_OSEL_0                     EQU  0x00200000
RTC_CR_OSEL_1                     EQU  0x00400000
RTC_CR_POL                        EQU  0x00100000
RTC_CR_COSEL                      EQU  0x00080000
RTC_CR_BCK                        EQU  0x00040000
RTC_CR_SUB1H                      EQU  0x00020000
RTC_CR_ADD1H                      EQU  0x00010000
RTC_CR_TSIE                       EQU  0x00008000
RTC_CR_WUTIE                      EQU  0x00004000
RTC_CR_ALRBIE                     EQU  0x00002000
RTC_CR_ALRAIE                     EQU  0x00001000
RTC_CR_TSE                        EQU  0x00000800
RTC_CR_WUTE                       EQU  0x00000400
RTC_CR_ALRBE                      EQU  0x00000200
RTC_CR_ALRAE                      EQU  0x00000100
RTC_CR_DCE                        EQU  0x00000080
RTC_CR_FMT                        EQU  0x00000040
RTC_CR_BYPSHAD                    EQU  0x00000020
RTC_CR_REFCKON                    EQU  0x00000010
RTC_CR_TSEDGE                     EQU  0x00000008
RTC_CR_WUCKSEL                    EQU  0x00000007
RTC_CR_WUCKSEL_0                  EQU  0x00000001
RTC_CR_WUCKSEL_1                  EQU  0x00000002
RTC_CR_WUCKSEL_2                  EQU  0x00000004

;*******************  Bits definition for RTC_ISR register  *****************
RTC_ISR_RECALPF                   EQU  0x00010000
RTC_ISR_TAMP3F                    EQU  0x00008000
RTC_ISR_TAMP2F                    EQU  0x00004000
RTC_ISR_TAMP1F                    EQU  0x00002000
RTC_ISR_TSOVF                     EQU  0x00001000
RTC_ISR_TSF                       EQU  0x00000800
RTC_ISR_WUTF                      EQU  0x00000400
RTC_ISR_ALRBF                     EQU  0x00000200
RTC_ISR_ALRAF                     EQU  0x00000100
RTC_ISR_INIT                      EQU  0x00000080
RTC_ISR_INITF                     EQU  0x00000040
RTC_ISR_RSF                       EQU  0x00000020
RTC_ISR_INITS                     EQU  0x00000010
RTC_ISR_SHPF                      EQU  0x00000008
RTC_ISR_WUTWF                     EQU  0x00000004
RTC_ISR_ALRBWF                    EQU  0x00000002
RTC_ISR_ALRAWF                    EQU  0x00000001

;*******************  Bits definition for RTC_PRER register  ****************
RTC_PRER_PREDIV_A                 EQU  0x007F0000
RTC_PRER_PREDIV_S                 EQU  0x00007FFF

;*******************  Bits definition for RTC_WUTR register  ****************
RTC_WUTR_WUT                      EQU  0x0000FFFF

;*******************  Bits definition for RTC_CALIBR register  **************
RTC_CALIBR_DCS                    EQU  0x00000080
RTC_CALIBR_DC                     EQU  0x0000001F

;*******************  Bits definition for RTC_ALRMAR register  **************
RTC_ALRMAR_MSK4                   EQU  0x80000000
RTC_ALRMAR_WDSEL                  EQU  0x40000000
RTC_ALRMAR_DT                     EQU  0x30000000
RTC_ALRMAR_DT_0                   EQU  0x10000000
RTC_ALRMAR_DT_1                   EQU  0x20000000
RTC_ALRMAR_DU                     EQU  0x0F000000
RTC_ALRMAR_DU_0                   EQU  0x01000000
RTC_ALRMAR_DU_1                   EQU  0x02000000
RTC_ALRMAR_DU_2                   EQU  0x04000000
RTC_ALRMAR_DU_3                   EQU  0x08000000
RTC_ALRMAR_MSK3                   EQU  0x00800000
RTC_ALRMAR_PM                     EQU  0x00400000
RTC_ALRMAR_HT                     EQU  0x00300000
RTC_ALRMAR_HT_0                   EQU  0x00100000
RTC_ALRMAR_HT_1                   EQU  0x00200000
RTC_ALRMAR_HU                     EQU  0x000F0000
RTC_ALRMAR_HU_0                   EQU  0x00010000
RTC_ALRMAR_HU_1                   EQU  0x00020000
RTC_ALRMAR_HU_2                   EQU  0x00040000
RTC_ALRMAR_HU_3                   EQU  0x00080000
RTC_ALRMAR_MSK2                   EQU  0x00008000
RTC_ALRMAR_MNT                    EQU  0x00007000
RTC_ALRMAR_MNT_0                  EQU  0x00001000
RTC_ALRMAR_MNT_1                  EQU  0x00002000
RTC_ALRMAR_MNT_2                  EQU  0x00004000
RTC_ALRMAR_MNU                    EQU  0x00000F00
RTC_ALRMAR_MNU_0                  EQU  0x00000100
RTC_ALRMAR_MNU_1                  EQU  0x00000200
RTC_ALRMAR_MNU_2                  EQU  0x00000400
RTC_ALRMAR_MNU_3                  EQU  0x00000800
RTC_ALRMAR_MSK1                   EQU  0x00000080
RTC_ALRMAR_ST                     EQU  0x00000070
RTC_ALRMAR_ST_0                   EQU  0x00000010
RTC_ALRMAR_ST_1                   EQU  0x00000020
RTC_ALRMAR_ST_2                   EQU  0x00000040
RTC_ALRMAR_SU                     EQU  0x0000000F
RTC_ALRMAR_SU_0                   EQU  0x00000001
RTC_ALRMAR_SU_1                   EQU  0x00000002
RTC_ALRMAR_SU_2                   EQU  0x00000004
RTC_ALRMAR_SU_3                   EQU  0x00000008

;*******************  Bits definition for RTC_ALRMBR register  **************
RTC_ALRMBR_MSK4                   EQU  0x80000000
RTC_ALRMBR_WDSEL                  EQU  0x40000000
RTC_ALRMBR_DT                     EQU  0x30000000
RTC_ALRMBR_DT_0                   EQU  0x10000000
RTC_ALRMBR_DT_1                   EQU  0x20000000
RTC_ALRMBR_DU                     EQU  0x0F000000
RTC_ALRMBR_DU_0                   EQU  0x01000000
RTC_ALRMBR_DU_1                   EQU  0x02000000
RTC_ALRMBR_DU_2                   EQU  0x04000000
RTC_ALRMBR_DU_3                   EQU  0x08000000
RTC_ALRMBR_MSK3                   EQU  0x00800000
RTC_ALRMBR_PM                     EQU  0x00400000
RTC_ALRMBR_HT                     EQU  0x00300000
RTC_ALRMBR_HT_0                   EQU  0x00100000
RTC_ALRMBR_HT_1                   EQU  0x00200000
RTC_ALRMBR_HU                     EQU  0x000F0000
RTC_ALRMBR_HU_0                   EQU  0x00010000
RTC_ALRMBR_HU_1                   EQU  0x00020000
RTC_ALRMBR_HU_2                   EQU  0x00040000
RTC_ALRMBR_HU_3                   EQU  0x00080000
RTC_ALRMBR_MSK2                   EQU  0x00008000
RTC_ALRMBR_MNT                    EQU  0x00007000
RTC_ALRMBR_MNT_0                  EQU  0x00001000
RTC_ALRMBR_MNT_1                  EQU  0x00002000
RTC_ALRMBR_MNT_2                  EQU  0x00004000
RTC_ALRMBR_MNU                    EQU  0x00000F00
RTC_ALRMBR_MNU_0                  EQU  0x00000100
RTC_ALRMBR_MNU_1                  EQU  0x00000200
RTC_ALRMBR_MNU_2                  EQU  0x00000400
RTC_ALRMBR_MNU_3                  EQU  0x00000800
RTC_ALRMBR_MSK1                   EQU  0x00000080
RTC_ALRMBR_ST                     EQU  0x00000070
RTC_ALRMBR_ST_0                   EQU  0x00000010
RTC_ALRMBR_ST_1                   EQU  0x00000020
RTC_ALRMBR_ST_2                   EQU  0x00000040
RTC_ALRMBR_SU                     EQU  0x0000000F
RTC_ALRMBR_SU_0                   EQU  0x00000001
RTC_ALRMBR_SU_1                   EQU  0x00000002
RTC_ALRMBR_SU_2                   EQU  0x00000004
RTC_ALRMBR_SU_3                   EQU  0x00000008

;*******************  Bits definition for RTC_WPR register  *****************
RTC_WPR_KEY                       EQU  0x000000FF

;*******************  Bits definition for RTC_SSR register  *****************
RTC_SSR_SS                        EQU  0x0000FFFF

;*******************  Bits definition for RTC_SHIFTR register  **************
RTC_SHIFTR_SUBFS                  EQU  0x00007FFF
RTC_SHIFTR_ADD1S                  EQU  0x80000000

;*******************  Bits definition for RTC_TSTR register  ****************
RTC_TSTR_PM                       EQU  0x00400000
RTC_TSTR_HT                       EQU  0x00300000
RTC_TSTR_HT_0                     EQU  0x00100000
RTC_TSTR_HT_1                     EQU  0x00200000
RTC_TSTR_HU                       EQU  0x000F0000
RTC_TSTR_HU_0                     EQU  0x00010000
RTC_TSTR_HU_1                     EQU  0x00020000
RTC_TSTR_HU_2                     EQU  0x00040000
RTC_TSTR_HU_3                     EQU  0x00080000
RTC_TSTR_MNT                      EQU  0x00007000
RTC_TSTR_MNT_0                    EQU  0x00001000
RTC_TSTR_MNT_1                    EQU  0x00002000
RTC_TSTR_MNT_2                    EQU  0x00004000
RTC_TSTR_MNU                      EQU  0x00000F00
RTC_TSTR_MNU_0                    EQU  0x00000100
RTC_TSTR_MNU_1                    EQU  0x00000200
RTC_TSTR_MNU_2                    EQU  0x00000400
RTC_TSTR_MNU_3                    EQU  0x00000800
RTC_TSTR_ST                       EQU  0x00000070
RTC_TSTR_ST_0                     EQU  0x00000010
RTC_TSTR_ST_1                     EQU  0x00000020
RTC_TSTR_ST_2                     EQU  0x00000040
RTC_TSTR_SU                       EQU  0x0000000F
RTC_TSTR_SU_0                     EQU  0x00000001
RTC_TSTR_SU_1                     EQU  0x00000002
RTC_TSTR_SU_2                     EQU  0x00000004
RTC_TSTR_SU_3                     EQU  0x00000008

;*******************  Bits definition for RTC_TSDR register  ****************
RTC_TSDR_WDU                      EQU  0x0000E000
RTC_TSDR_WDU_0                    EQU  0x00002000
RTC_TSDR_WDU_1                    EQU  0x00004000
RTC_TSDR_WDU_2                    EQU  0x00008000
RTC_TSDR_MT                       EQU  0x00001000
RTC_TSDR_MU                       EQU  0x00000F00
RTC_TSDR_MU_0                     EQU  0x00000100
RTC_TSDR_MU_1                     EQU  0x00000200
RTC_TSDR_MU_2                     EQU  0x00000400
RTC_TSDR_MU_3                     EQU  0x00000800
RTC_TSDR_DT                       EQU  0x00000030
RTC_TSDR_DT_0                     EQU  0x00000010
RTC_TSDR_DT_1                     EQU  0x00000020
RTC_TSDR_DU                       EQU  0x0000000F
RTC_TSDR_DU_0                     EQU  0x00000001
RTC_TSDR_DU_1                     EQU  0x00000002
RTC_TSDR_DU_2                     EQU  0x00000004
RTC_TSDR_DU_3                     EQU  0x00000008

;*******************  Bits definition for RTC_TSSSR register  ***************
RTC_TSSSR_SS                      EQU  0x0000FFFF

;*******************  Bits definition for RTC_CAL register  ****************
RTC_CALR_CALP                     EQU  0x00008000
RTC_CALR_CALW8                    EQU  0x00004000
RTC_CALR_CALW16                   EQU  0x00002000
RTC_CALR_CALM                     EQU  0x000001FF
RTC_CALR_CALM_0                   EQU  0x00000001
RTC_CALR_CALM_1                   EQU  0x00000002
RTC_CALR_CALM_2                   EQU  0x00000004
RTC_CALR_CALM_3                   EQU  0x00000008
RTC_CALR_CALM_4                   EQU  0x00000010
RTC_CALR_CALM_5                   EQU  0x00000020
RTC_CALR_CALM_6                   EQU  0x00000040
RTC_CALR_CALM_7                   EQU  0x00000080
RTC_CALR_CALM_8                   EQU  0x00000100

;*******************  Bits definition for RTC_TAFCR register  ***************
RTC_TAFCR_ALARMOUTTYPE            EQU  0x00040000
RTC_TAFCR_TAMPPUDIS               EQU  0x00008000
RTC_TAFCR_TAMPPRCH                EQU  0x00006000
RTC_TAFCR_TAMPPRCH_0              EQU  0x00002000
RTC_TAFCR_TAMPPRCH_1              EQU  0x00004000
RTC_TAFCR_TAMPFLT                 EQU  0x00001800
RTC_TAFCR_TAMPFLT_0               EQU  0x00000800
RTC_TAFCR_TAMPFLT_1               EQU  0x00001000
RTC_TAFCR_TAMPFREQ                EQU  0x00000700
RTC_TAFCR_TAMPFREQ_0              EQU  0x00000100
RTC_TAFCR_TAMPFREQ_1              EQU  0x00000200
RTC_TAFCR_TAMPFREQ_2              EQU  0x00000400
RTC_TAFCR_TAMPTS                  EQU  0x00000080
RTC_TAFCR_TAMP3TRG                EQU  0x00000040
RTC_TAFCR_TAMP3E                  EQU  0x00000020
RTC_TAFCR_TAMP2TRG                EQU  0x00000010
RTC_TAFCR_TAMP2E                  EQU  0x00000008
RTC_TAFCR_TAMPIE                  EQU  0x00000004
RTC_TAFCR_TAMP1TRG                EQU  0x00000002
RTC_TAFCR_TAMP1E                  EQU  0x00000001

;*******************  Bits definition for RTC_ALRMASSR register  ************
RTC_ALRMASSR_MASKSS               EQU  0x0F000000
RTC_ALRMASSR_MASKSS_0             EQU  0x01000000
RTC_ALRMASSR_MASKSS_1             EQU  0x02000000
RTC_ALRMASSR_MASKSS_2             EQU  0x04000000
RTC_ALRMASSR_MASKSS_3             EQU  0x08000000
RTC_ALRMASSR_SS                   EQU  0x00007FFF

;*******************  Bits definition for RTC_ALRMBSSR register  ************
RTC_ALRMBSSR_MASKSS               EQU  0x0F000000
RTC_ALRMBSSR_MASKSS_0             EQU  0x01000000
RTC_ALRMBSSR_MASKSS_1             EQU  0x02000000
RTC_ALRMBSSR_MASKSS_2             EQU  0x04000000
RTC_ALRMBSSR_MASKSS_3             EQU  0x08000000
RTC_ALRMBSSR_SS                   EQU  0x00007FFF

;*******************  Bits definition for RTC_BKP0R register  ***************
RTC_BKP0R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP1R register  ***************
RTC_BKP1R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP2R register  ***************
RTC_BKP2R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP3R register  ***************
RTC_BKP3R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP4R register  ***************
RTC_BKP4R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP5R register  ***************
RTC_BKP5R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP6R register  ***************
RTC_BKP6R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP7R register  ***************
RTC_BKP7R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP8R register  ***************
RTC_BKP8R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP9R register  ***************
RTC_BKP9R                         EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP10R register  **************
RTC_BKP10R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP11R register  **************
RTC_BKP11R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP12R register  **************
RTC_BKP12R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP13R register  **************
RTC_BKP13R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP14R register  **************
RTC_BKP14R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP15R register  **************
RTC_BKP15R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP16R register  **************
RTC_BKP16R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP17R register  **************
RTC_BKP17R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP18R register  **************
RTC_BKP18R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP19R register  **************
RTC_BKP19R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP20R register  **************
RTC_BKP20R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP21R register  **************
RTC_BKP21R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP22R register  **************
RTC_BKP22R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP23R register  **************
RTC_BKP23R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP24R register  **************
RTC_BKP24R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP25R register  **************
RTC_BKP25R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP26R register  **************
RTC_BKP26R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP27R register  **************
RTC_BKP27R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP28R register  **************
RTC_BKP28R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP29R register  **************
RTC_BKP29R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP30R register  **************
RTC_BKP30R                        EQU  0xFFFFFFFF

;*******************  Bits definition for RTC_BKP31R register  **************
RTC_BKP31R                        EQU  0xFFFFFFFF

	END
