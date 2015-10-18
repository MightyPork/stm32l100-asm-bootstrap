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


#####################################################################################
# LINKER CONFIG
#####################################################################################

LDOPTS  = --cpu Cortex-M3 --strict
LDOPTS += --ro-base 0x08000000 --entry 0x08000000 --rw-base 0x20000000
LDOPTS += --entry Reset_Handler --first __Vectors

# Verbose flags (run make V=1)
ifeq ($(V), 1)
  LDOPTS += --summary_stderr --map --xref --callgraph --symbols
  LDOPTS += --info summarysizes,sizes,totals,unused,veneers
endif


#####################################################################################
# EXTERNAL PROGRAMS
#####################################################################################

# armlink, armasm, fromelf - exe files in Wine directory (with Keil installed)

# Disable Wine fixme warnings
ENVS  = WINEDEBUG=fixme-all
# Stop DS-5 from trying to use it's internal unlicensed compiler (Attempt at DRM?)
ENVS += ARMCC5_ASMOPT='' ARMCC5_CCOPT='' ARMCC5_FROMELFOPT='' ARMCC5_LINKOPT='' ARMCOMPILER6_ASMOPT='' ARMCOMPILER6_CLANGOPT=''
ENVS += ARMCOMPILER6_FROMELFOPT='' ARMCOMPILER6_LINKOPT='' ARM_PRODUCT_PATH='' ARM_TOOL_VARIANT=''

# ARM_PRODUCT_PATH should be possible to use if you want to run linux version of those programs.

WINEPREFIX=$(ENVS) wine ~/.wine/drive_c/Keil_v5/ARM/ARMCC_505u2/bin

# ARM programs from Keil
LD      = $(WINEPREFIX)/armlink.exe
AS      = $(WINEPREFIX)/armasm.exe
FROMELF = $(WINEPREFIX)/fromelf.exe

# Native programs
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
	@echo "== Linking object files to $@ =="
	@$(LD) $(LDOPTS) --output $@ "$(main_base).o" "$(startup_base).o"

# Get BIN image file from AXF file
%.bin: %.axf
	@echo "== Converting $< to $@ =="
	@$(FROMELF) --bincombined --output $@ $<

# Get Intel Hex file from AXF file
%.hex: %.axf
	@echo "== Converting $< to $@ =="
	@$(FROMELF) --i32combined --output $@ $<

# Get Object file from Assembler source file
$(main_base).o: $(main_file)
	@echo "== Compiling $< to $@ =="
	@$(AS) $(ASOPTS) --list $(main_base).lst -o $@ --depend $(main_base).d $<

$(startup_base).o: $(startup_file)
	@echo "== Compiling $< to $@ =="
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
	@echo "== Writing image to device via ST-Link =="
	@$(STFLASH) write "output.bin" 0x8000000
	@echo "== Write OK! =="

disasm: output.axf
	@echo "== Disassembling $< to output.disasm =="
	@$(OBJDUMP) -d $< > output.disasm

# Remove temporary files
clean:
	@echo "== Removing temporary files =="
	$(RM) -f *.bak *.lnp *.iex *.hex *.elf *.axf *.htm *.lnp *.lst *.plg *.tra *.o *.map *.d *.dep *.disasm *.bin *.uvguix.*
	$(RM) -rf ./RTE

