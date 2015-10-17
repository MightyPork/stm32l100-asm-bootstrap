#####################################################################################
# File config
#####################################################################################

main_file    = main.asm
startup_file = startup_stm32l100xc.s
lib_dir = lib/

#####################################################################################
# ASSEMBLER CONFIG
#####################################################################################

ASOPTS  = --cpu Cortex-M3 --apcs interwork

# Add library to include path
ASOPTS += -I$(lib_dir)

# Debug flags
ifeq ($(G), 1)
  ASOPTS += -g
endif


#####################################################################################
# LINKER CONFIG
#####################################################################################

LDOPTS  = --cpu Cortex-M3 --strict
LDOPTS += --ro-base 0x08000000 --entry 0x08000000 --rw-base 0x20000000
LDOPTS += --entry Reset_Handler --first __Vectors

# Debug flags
ifneq ($(G), 1)
  LDOPTS += --no_debug
endif

# Verbose flags (run make V=1)
ifeq ($(V), 1)
  LDOPTS += --summary_stderr --map --xref --callgraph --symbols
  LDOPTS += --info summarysizes,sizes,totals,unused,veneers
endif


#####################################################################################
# EXTERNAL PROGRAM NAMES
#####################################################################################

# armlink, armasm, fromelf - exe files in Wine directory (with Keil installed)

# Example launcher for Keil exe programs:
#
#    #!/bin/bash
#    WINEDEBUG=fixme-all wine ~/.wine/drive_c/Keil_v5/ARM/ARMCC_505u2/bin/armasm.exe $@

LD      = WINEDEBUG=fixme-all wine ~/.wine/drive_c/Keil_v5/ARM/ARMCC_505u2/bin/armlink.exe
AS      = WINEDEBUG=fixme-all wine ~/.wine/drive_c/Keil_v5/ARM/ARMCC_505u2/bin/armasm.exe
FROMELF = WINEDEBUG=fixme-all wine ~/.wine/drive_c/Keil_v5/ARM/ARMCC_505u2/bin/fromelf.exe
OBJDUMP = arm-none-eabi-objdump
STFLASH = st-flash
RM      = rm


# --- END OF CONFIG ---

main_base = $(basename $(main_file))
startup_base = $(basename $(startup_file))


.PHONY: all build clean flash hex disasm

all: build

# Link object files to AXF file
output.axf: $(main_base).o $(startup_base).o
	@echo -e "\e[0;33mLinking object files to $@\e[0m"
	@$(LD) $(LDOPTS) --output $@ "$(main_base).o" "$(startup_base).o"

# Get BIN image file from AXF file
%.bin: %.axf
	@echo -e "\e[0;33mConverting $< to $@\e[0m"
	@$(FROMELF) --bincombined --output $@ $<

# Get Intel Hex file from AXF file
%.hex: %.axf
	@echo -e "\e[0;33mConverting $< to $@\e[0m"
	@$(FROMELF) --i32combined --output $@ $<

# Get Object file from Assembler source file
$(main_base).o: $(main_file)
	@echo -e "\e[0;32mCompiling $< to $@\e[0m"
	@$(AS) $(ASOPTS) --list $(main_base).lst -o $@ --depend $(main_base).d $<

$(startup_base).o: $(startup_file)
	@echo -e "\e[0;32mCompiling $< to $@\e[0m"
	@$(AS) $(ASOPTS) --list $(startup_base).lst -o $@ --depend $(startup_base).d $<

# Get binary image (compile and link)
build: output.bin

# Get hex image (compile and link)
hex: output.hex

# Run through assembler (checks for errors)
asm: $(main_base).o

# Run through linker
link: output.axf

# Flash using st-link
flash: output.bin
	@echo -e "\e[0;96mWriting image to device via ST-Link\e[0m"
	@$(STFLASH) write "output.bin" 0x8000000
	@echo -e "\e[0;96mWrite OK!\e[0m"

disasm: output.axf
	@echo -e "\e[0;33mDisassembling $< to output.disasm\e[0m"
	@$(OBJDUMP) -d $< > output.disasm

# Remove temporary files
clean:
	@echo -e "\e[0;32mRemoving temporary files\e[0m"
	$(RM) -f *.bak *.lnp *.iex *.hex *.elf *.axf *.htm *.lnp *.lst *.plg *.tra *.o *.map *.d *.dep *.disasm *.bin
