;***************************************************************************************************
;*
;* Place            : CVUT FEL, Katedra Mereni
;* Lecturer         : Doc. Ing. Jan Fischer,CSc.
;* Subject          : A4M38AVS, A4B38NVS
;* Development kit  : STM32L100 DISCOVERY (STM32L100RC)
;* Authors          : Michal TOMAS (2010), Ondrej Hruska (2015)
;*
;***************************************************************************************************


;***************************************************************************************************
;* Include library files
;***************************************************************************************************

			; Base library file
			GET		lib/INI_BASE.s

			; Peripheral modules
			GET		lib/INI_GPIO.s
			GET		lib/INI_SYSTICK.s
			GET		lib/INI_RCC.s
			GET		lib/INI_FLASH.s


;***************************************************************************************************
;* Start program AREA and pass compiler flags to the startup script...
;***************************************************************************************************

			AREA    MAIN, CODE, READONLY

		; This is a compiler flag imported by the startup script.
__use_two_region_memory
			EXPORT __use_two_region_memory


;***************************************************************************************************
;* System config (clock, ports, timers...)
;*
;* Called by the startup script before calling __main
;***************************************************************************************************

SystemInit	PROC
			EXPORT	SystemInit                      ; Export the address to startup script
				PUSH	{LR}
				BL		RCC_CNF                     ; Configure clock sources
				BL		GPIO_CNF                    ; Configure GPIO power and pin settings
				BL		SYSTICK_CNF                 ; Configure SysTick timer
				POP		{PC}
			ENDP



;***************************************************************************************************
;* Interrupt handlers...
;***************************************************************************************************

SysTick_Handler PROC
			EXPORT SysTick_Handler                  ; Export the address to startup script (replaces a WEAK stub)
				PUSH	{LR}

				; Toggle the PC8 LED (bit-banding access)
				LDR		R0, =BB_GPIOC_ODR_9
				LDR		R1, [R0]
				EOR		R1, R1, #1
				STR		R1, [R0]

				; alternative - writing the register
;				LDR		R0, =GPIOC_ODR
;				LDR		R1, [R0]
;				EOR		R1, R1, #GPIO9
;				STR		R1, [R0]

				POP		{PC}
			ENDP



;***************************************************************************************************
;* Main function
;*
;* Called by the startup script after SystemInit.
;* __main is called only once, and does not return!
;***************************************************************************************************

__main		PROC
			EXPORT	__main                          ; Export the address to startup script
LOOP                                           		; Main loop
				; turn LED on
				LDR		R0, =BB_GPIOC_ODR_8         ; bit-banding address
				MOV		R1, #1
				STR		R1, [R0]

				; wait
				MOV		R0, #40
				BL		DELAY

				; turn LED off
				LDR		R0, =BB_GPIOC_ODR_8
				MOV		R1, #0
				STR		R1, [R0]

				; wait
				MOV		R0, #10
				BL		DELAY

				B		LOOP
			ENDP



;**************************************************************************************************
;* GPIO configuration
;*
;* Sets PC08 and PC09 as outputs, PA0 as input.
;**************************************************************************************************

GPIO_CNF	PROC
				PUSH	{R0,R1,LR}

				; Enable GPIO peripheral timing
				LDR		R0, =RCC_AHBENR             ; Advanced High-speed Bus ENable Register
				LDR		R1, [R0]
				LDR		R2, =(RCC_AHBENR_GPIOAEN :OR: RCC_AHBENR_GPIOCEN)
				ORR		R1, R1, R2
				STR		R1, [R0]

				; Output pins C8, C9
				LDR		R0, =GPIOC_MODER
				LDR		R1, [R0]
													; Clear the area we'll write to
				BIC		R1,R1, #(GPIO_MODER_8 :OR: GPIO_MODER_9)
													; Write "OUTPUT" pattern (0x5555...) masked to the two bits
				ORR		R1,R1, #(GPIO_MODER_8 :OR: GPIO_MODER_9) & GPIO_MODER_OUTPUT
				STR		R1, [R0]

				; Input pin A0
				LDR		R0, =GPIOA_MODER
				LDR		R1, [R0]
				BIC		R1,R1, #GPIO_MODER_0
													; Write the "input" pattern into the bit config area
				ORR		R1,R1, #(GPIO_MODER_0 & GPIO_MODER_INPUT)
				STR		R1, [R0]

				POP		{R0,R1,PC}
			ENDP



;**************************************************************************************************
;* SysTick configuration
;*
;* Configures SysTick to fire a SysTick interrupt at 1 Hz
;**************************************************************************************************

SYSTICK_CNF	PROC
				PUSH	{R0, R1, LR}

				; Use the core clock (undivided)

				LDR		R0, =SysTick_CSR
				LDR		R1, [R0]
				ORR		R1, R1, #SysTick_CSR_CLKSOURCE_CORE
				STR		R1, [R0]

				; Configure the reload register to 1s

				LDR		R1, =0xFFFFFF
				LDR		R0, =SysTick_RELOAD
				STR		R1, [R0]

				; Enable SysTick interrupt & start counting

				LDR		R0, =SysTick_CSR
				LDR		R1, [R0]
				ORR		R1, R1, #(SysTick_CSR_TICKINT :OR: SysTick_CSR_ENABLE)
				STR		R1, [R0]

				POP		{R0, R1, PC}
			ENDP



;**************************************************************************************************
;* Delay routine
;*
;* Inputs:	R0 = number of loop cycles
;**************************************************************************************************

DELAY		PROC
				PUSH	{R2, LR}                    ; Push the changed registers & link register

WAIT_OUTER		; Outer loop
				LDR		R2, =40000                  ; Length of inner loop

				; Inner loop
WAIT_INNER		SUBS	R2, R2, #1                  ; Decrement INNER loop counter
				BNE		WAIT_INNER                  ; Continue the loop if not done

				SUBS	R0, R0, #1                  ; Decrement OUTER loop counter
				BNE		WAIT_OUTER                  ; Continue the loop if not done

				POP		{R2, PC}                    ; Pop & return
			ENDP



;***************************************************************************************************
;* Clock configuration
;*
;* Set clock speed to 16 MHz
;**************************************************************************************************

RCC_CNF		PROC
				PUSH	{R0, R1, LR}

				; Flash timing configuration
				LDR		R0, =FLASH_ACR
				LDR		R1, [R0]
				ORR		R1, R1, #FLASH_ACR_ACC64
				STR		R1, [R0]

				LDR		R1, [R0]
				ORR		R1, R1, #(FLASH_ACR_PRFTEN :OR: FLASH_ACR_LATENCY)
				STR		R1, [R0]

				; Power on HSI (runs from MSI on start)

				LDR		R0, =RCC_CR
				LDR		R1, [R0]
				ORR		R1, R1, #RCC_CR_HSION
				STR		R1, [R0]

				; Wait for HSIRDY
NO_HSI_RDY		LDR		R1, [R0]
				TST		R1, #RCC_CR_HSIRDY
				BEQ		NO_HSI_RDY

				; Select HSI as the core clock source

				LDR		R0, =RCC_CFGR
				LDR		R1, [R0]
				BIC		R1, R1, #RCC_CFGR_SW
				ORR		R1, R1, #RCC_CFGR_SW_HSI
				STR		R1, [R0]

				POP		{R0, R1, PC}
			ENDP


;**************************************************************************************************

				ALIGN                               ; Adds NOP if needed to complete a 32-bit word
				END
