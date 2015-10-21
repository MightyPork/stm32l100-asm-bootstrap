;****************************************************************************
; FILE   : INI_SCB.S
; AUTHOR : Petr Dousa, Ondrej Hruska
; DATE   : 10/2015
; DESCR  : Control registers and bit masks for SCB

;                          System Control Block (SCB)
;
; Part of an assembler library for STM32L100, based on the STM32 CMSIS.
; Developed for educational purposes at the Department of Measure of CTU in Prague.
; See the LICENSE file for detailed terms of use.
;****************************************************************************


;****************************************************************************
;*
;*                               REGISTERS
;*
;****************************************************************************


SCB_CPUID          EQU  (_SCB + 0x000)             ; (R/ )  CPUID Base Register
SCB_ICSR           EQU  (_SCB + 0x004)             ; (R/W)  Interrupt Control and State Register
SCB_VTOR           EQU  (_SCB + 0x008)             ; (R/W)  Vector Table Offset Register
SCB_AIRCR          EQU  (_SCB + 0x00C)             ; (R/W)  Application Interrupt and Reset Control Register
SCB_SCR            EQU  (_SCB + 0x010)             ; (R/W)  System Control Register
SCB_CCR            EQU  (_SCB + 0x014)             ; (R/W)  Configuration Control Register
SCB_SHPR1          EQU  (_SCB + 0x018)             ; (R/W)  System Handler Priority Register 1 (4-7)
SCB_SHPR2          EQU  (_SCB + 0x01C)             ; (R/W)  System Handler Priority Register 2 (8-11)
SCB_SHPR3          EQU  (_SCB + 0x020)             ; (R/W)  System Handler Priority Register 3 (12-15)
SCB_SHCSR          EQU  (_SCB + 0x024)             ; (R/W)  System Handler Control and State Register
SCB_CFSR           EQU  (_SCB + 0x028)             ; (R/W)  Configurable Fault Status Register
SCB_HFSR           EQU  (_SCB + 0x02C)             ; (R/W)  HardFault Status Register
SCB_DFSR           EQU  (_SCB + 0x030)             ; (R/W)  Debug Fault Status Register
SCB_MMFAR          EQU  (_SCB + 0x034)             ; (R/W)  MemManage Fault Address Register
SCB_BFAR           EQU  (_SCB + 0x038)             ; (R/W)  BusFault Address Register
SCB_AFSR           EQU  (_SCB + 0x03C)             ; (R/W)  Auxiliary Fault Status Register
; skipped Feature Registers
SCB_CPACR          EQU  (_SCB + 0x088)             ; (R/W)  Coprocessor Access Control Register



;****************************************************************************
;*
;*                       BIT MASKS AND DEFINITIONS
;*
;****************************************************************************


;*****************  Bit definition for SCB_CPUID register  ******************

SCB_CPUID_REVISION               EQU  0x0000000F   ; Implementation defined revision number
SCB_CPUID_PARTNO                 EQU  0x0000FFF0   ; Number of processor within family
SCB_CPUID_Constant               EQU  0x000F0000   ; Reads as 0x0F
SCB_CPUID_VARIANT                EQU  0x00F00000   ; Implementation defined variant number
SCB_CPUID_IMPLEMENTER            EQU  0xFF000000   ; Implementer code. ARM is 0x41


;******************  Bit definition for SCB_ICSR register  ******************

SCB_ICSR_VECTACTIVE              EQU  0x000001FF   ; Active ISR number field
SCB_ICSR_RETTOBASE               EQU  0x00000800   ; All active exceptions minus the IPSR_current_exception yields the empty set
SCB_ICSR_VECTPENDING             EQU  0x003FF000   ; Pending ISR number field
SCB_ICSR_ISRPENDING              EQU  0x00400000   ; Interrupt pending flag
SCB_ICSR_ISRPREEMPT              EQU  0x00800000   ; It indicates that a pending interrupt becomes active in the next running cycle
SCB_ICSR_PENDSTCLR               EQU  0x02000000   ; Clear pending SysTick bit
SCB_ICSR_PENDSTSET               EQU  0x04000000   ; Set pending SysTick bit
SCB_ICSR_PENDSVCLR               EQU  0x08000000   ; Clear pending pendSV bit
SCB_ICSR_PENDSVSET               EQU  0x10000000   ; Set pending pendSV bit
SCB_ICSR_NMIPENDSET              EQU  0x80000000   ; Set pending NMI bit


;******************  Bit definition for SCB_VTOR register  ******************

SCB_VTOR_TBLOFF                  EQU  0x1FFFFF80   ; Vector table base offset field
SCB_VTOR_TBLBASE                 EQU  0x20000000   ; Table base in code(0) or RAM(1)


; *****************  Bit definition for SCB_AIRCR register  ******************

SCB_AIRCR_VECTKEY                EQU  0x05FA0000   ; Value required to enable write to this register
SCB_AIRCR_VECTRESET              EQU  0x00000001   ; System Reset bit
SCB_AIRCR_VECTCLRACTIVE          EQU  0x00000002   ; Clear active vector bit
SCB_AIRCR_SYSRESETREQ            EQU  0x00000004   ; Requests chip control logic to generate a reset

SCB_AIRCR_PRIGROUP               EQU  0x00000700   ; PRIGROUP[2:0] bits (Priority group)
SCB_AIRCR_PRIGROUP_0             EQU  0x00000100   ; Bit 0
SCB_AIRCR_PRIGROUP_1             EQU  0x00000200   ; Bit 1
SCB_AIRCR_PRIGROUP_2             EQU  0x00000400   ; Bit 2

; prority group configuration
SCB_AIRCR_PRIGROUP0              EQU  0x00000000   ; Priority group=0 (7 bits of pre-emption priority, 1 bit of subpriority)
SCB_AIRCR_PRIGROUP1              EQU  0x00000100   ; Priority group=1 (6 bits of pre-emption priority, 2 bits of subpriority)
SCB_AIRCR_PRIGROUP2              EQU  0x00000200   ; Priority group=2 (5 bits of pre-emption priority, 3 bits of subpriority)
SCB_AIRCR_PRIGROUP3              EQU  0x00000300   ; Priority group=3 (4 bits of pre-emption priority, 4 bits of subpriority)
SCB_AIRCR_PRIGROUP4              EQU  0x00000400   ; Priority group=4 (3 bits of pre-emption priority, 5 bits of subpriority)
SCB_AIRCR_PRIGROUP5              EQU  0x00000500   ; Priority group=5 (2 bits of pre-emption priority, 6 bits of subpriority)
SCB_AIRCR_PRIGROUP6              EQU  0x00000600   ; Priority group=6 (1 bit of pre-emption priority, 7 bits of subpriority)
SCB_AIRCR_PRIGROUP7              EQU  0x00000700   ; Priority group=7 (no pre-emption priority, 8 bits of subpriority)

SCB_AIRCR_ENDIANESS              EQU  0x00008000   ; Data endianness bit
SCB_AIRCR_VECTKEY                EQU  0xFFFF0000   ; Register key (VECTKEY) - Reads as 0xFA05 (VECTKEYSTAT)


;******************  Bit definition for SCB_SCR register  *******************

SCB_SCR_SLEEPONEXIT              EQU  0x02         ; Sleep on exit bit
SCB_SCR_SLEEPDEEP                EQU  0x04         ; Sleep deep bit
SCB_SCR_SEVONPEND                EQU  0x10         ; Wake up from WFE


;*******************  Bit definition for SCB_CCR register  ******************

SCB_CCR_NONBASETHRDENA           EQU  0x0001       ; Thread mode can be entered from any level in Handler mode by controlled return value
SCB_CCR_USERSETMPEND             EQU  0x0002       ; Enables user code to write the Software Trigger Interrupt register to trigger (pend) a Main exception
SCB_CCR_UNALIGN_TRP              EQU  0x0008       ; Trap for unaligned access
SCB_CCR_DIV_0_TRP                EQU  0x0010       ; Trap on Divide by 0
SCB_CCR_BFHFNMIGN                EQU  0x0100       ; Handlers running at priority -1 and -2
SCB_CCR_STKALIGN                 EQU  0x0200       ; On exception entry, the SP used prior to the exception is adjusted to be 8-byte aligned


;******************  Bit definition for SCB_SHPR register *******************

SCB_SHPR_PRI_N                   EQU  0x000000FF   ; Priority of system handler 4,8, and 12. Mem Manage, reserved and Debug Monitor
SCB_SHPR_PRI_N1                  EQU  0x0000FF00   ; Priority of system handler 5,9, and 13. Bus Fault, reserved and reserved
SCB_SHPR_PRI_N2                  EQU  0x00FF0000   ; Priority of system handler 6,10, and 14. Usage Fault, reserved and PendSV
SCB_SHPR_PRI_N3                  EQU  0xFF000000   ; Priority of system handler 7,11, and 15. Reserved, SVCall and SysTick


;*****************  Bit definition for SCB_SHCSR register  ******************

SCB_SHCSR_MEMFAULTACT            EQU  0x00000001   ; MemManage is active
SCB_SHCSR_BUSFAULTACT            EQU  0x00000002   ; BusFault is active
SCB_SHCSR_USGFAULTACT            EQU  0x00000008   ; UsageFault is active
SCB_SHCSR_SVCALLACT              EQU  0x00000080   ; SVCall is active
SCB_SHCSR_MONITORACT             EQU  0x00000100   ; Monitor is active
SCB_SHCSR_PENDSVACT              EQU  0x00000400   ; PendSV is active
SCB_SHCSR_SYSTICKACT             EQU  0x00000800   ; SysTick is active
SCB_SHCSR_USGFAULTPENDED         EQU  0x00001000   ; Usage Fault is pended
SCB_SHCSR_MEMFAULTPENDED         EQU  0x00002000   ; MemManage is pended
SCB_SHCSR_BUSFAULTPENDED         EQU  0x00004000   ; Bus Fault is pended
SCB_SHCSR_SVCALLPENDED           EQU  0x00008000   ; SVCall is pended
SCB_SHCSR_MEMFAULTENA            EQU  0x00010000   ; MemManage enable
SCB_SHCSR_BUSFAULTENA            EQU  0x00020000   ; Bus Fault enable
SCB_SHCSR_USGFAULTENA            EQU  0x00040000   ; UsageFault enable


;******************  Bit definition for SCB_CFSR register  ******************

; MFSR
SCB_CFSR_IACCVIOL                EQU  0x00000001   ; Instruction access violation
SCB_CFSR_DACCVIOL                EQU  0x00000002   ; Data access violation
SCB_CFSR_MUNSTKERR               EQU  0x00000008   ; Unstacking error
SCB_CFSR_MSTKERR                 EQU  0x00000010   ; Stacking error
SCB_CFSR_MMARVALID               EQU  0x00000080   ; Memory Manage Address Register address valid flag
; BFSR
SCB_CFSR_IBUSERR                 EQU  0x00000100   ; Instruction bus error flag
SCB_CFSR_PRECISERR               EQU  0x00000200   ; Precise data bus error
SCB_CFSR_IMPRECISERR             EQU  0x00000400   ; Imprecise data bus error
SCB_CFSR_UNSTKERR                EQU  0x00000800   ; Unstacking error
SCB_CFSR_STKERR                  EQU  0x00001000   ; Stacking error
SCB_CFSR_BFARVALID               EQU  0x00008000   ; Bus Fault Address Register address valid flag
; UFSR
SCB_CFSR_UNDEFINSTR              EQU  0x00010000   ; The processor attempt to excecute an undefined instruction
SCB_CFSR_INVSTATE                EQU  0x00020000   ; Invalid combination of EPSR and instruction
SCB_CFSR_INVPC                   EQU  0x00040000   ; Attempt to load EXC_RETURN into pc illegally
SCB_CFSR_NOCP                    EQU  0x00080000   ; Attempt to use a coprocessor instruction
SCB_CFSR_UNALIGNED               EQU  0x01000000   ; Fault occurs when there is an attempt to make an unaligned memory access
SCB_CFSR_DIVBYZERO               EQU  0x02000000   ; Fault occurs when SDIV or DIV instruction is used with a divisor of 0


;******************  Bit definition for SCB_HFSR register  ******************

SCB_HFSR_VECTTBL                 EQU  0x00000002   ; Fault occures because of vector table read on exception processing
SCB_HFSR_FORCED                  EQU  0x40000000   ; Hard Fault activated when a configurable Fault was received and cannot activate
SCB_HFSR_DEBUGEVT                EQU  0x80000000   ; Fault related to debug


;******************  Bit definition for SCB_DFSR register  ******************

SCB_DFSR_HALTED                  EQU  0x01         ; Halt request flag
SCB_DFSR_BKPT                    EQU  0x02         ; BKPT flag
SCB_DFSR_DWTTRAP                 EQU  0x04         ; Data Watchpoint and Trace (DWT) flag
SCB_DFSR_VCATCH                  EQU  0x08         ; Vector catch flag
SCB_DFSR_EXTERNAL                EQU  0x10         ; External debug request flag


;******************  Bit definition for SCB_MMFAR register  *****************

SCB_MMFAR_ADDRESS                EQU  0xFFFFFFFF   ; Mem Manage fault address field


;******************  Bit definition for SCB_BFAR register  ******************

SCB_BFAR_ADDRESS                 EQU  0xFFFFFFFF   ; Bus fault address field


;******************  Bit definition for SCB_afsr register  ******************

SCB_AFSR_IMPDEF                  EQU  0xFFFFFFFF   ; Implementation defined

	END
