# Bootstrap project and an asm library for STM32L100

[Česká verze](README.cz.md)

## Project description

The project consists of a definition library for the STM32L100 ARM microcontroller.

The library is in a large part converted from the device-specific CMSIS header files, other
files are based on the datasheets.

The project also includes a simple "Hello World" program which demonstrates usage of the library
by blinking the LEDs on your STM32L100 Discovery board.

A startup script (startup_stm32l100xc.s) comes from the Keil device packages, and can also be
found in the CMSIS.


## Target hardware

The project targets the STM32L100RC on the STM32L100C-DISCO Discovery development board. The kit
is attached to the computer using a USB cable.


## Library structure

The assembler library is located in a `lib/` folder, and consists of multiple modules.

To use any of the modules, first include `INI_BASE.s`, then the required modules (in any order).

Example of the library usage:

```asm
        ; Base file
        GET        lib/INI_BASE.s

        ; Registers and bit presets for the peripherals
        GET        lib/INI_BITS_GPIO.s
        GET        lib/INI_BITS_RCC.s
        GET        lib/INI_BITS_FLASH.s
```

## Code style

All comments are in English. Files are formatted with spaces, or tabs 4 spaces wide.

All files should use Windows line endings for compatibility with Keil.

## Development environment

The library will work with any tool that supports the ARM assembler.

### Keil MDK-ARM (Windows)

Included are project files for **µVision MDK-ARM v.5** (Keil).

You can obtain a trial copy of Keil MDK for free from their website (after filling in some fake
contact info to "register"). There is a code size limitaiton (32 kB), but that's usually not a
problem.

If you're working on Windows, this is probably the best tool you can get.

### Developing on Linux

On Linux, you can run Keil in Wine (without hardware support), and also in Virtualbox
(but with ST-Link v2 only).

If you choose to use a more native "IDE" (read: vim, Sublime Text...), you can use the
provided Makefile for compilation and flashing.

First, though, you have to setup the compiler:

1. Install Keil in `wine` (into `~/.wine`) - we'll be using the trial version of
   the otherwise paid compiler, and for that we need the Keil license files.

   If you are adventurous, you can try to use the Keil license files with the native Linux
   version of the compiler.

2. Check that the Makefile variable `WINEPREFIX` points to the folder with the Keil
   compiler binaries. If you are using the linux versions of those, adjust your Makefile
   accordingly.

3. For a disassembler support, install `arm-none-eabi-binutils`. This is optional.

4. Install the `stlink` package - drivers for communication with the development board.
   This step is optional, if you don't need flashing.


*Tip:* ArchLinuxu users can find both `stlink` and `arm-none-eabi-binutils` in the Community
repository.


### Using the ARM DS-5

The "official" ARM IDE, DS-5, is really expensive, but there's a free "Community Edition".

The IDE is a customized Eclipse, so if you have some Eclipse experience, you're right at home.

**The catch** is that this variant **can't compile anything** - not even assembler.
The editor and the context-help manual viewer work perfectly, though.

There is some Makefile support, but I've found it rather pathetic. If you, however, install
a terminal plugin into the IDE, you can conveniently run the Makefile tasks to compile and
flash your program.

## Credits

This project is developed for educational purposes at the [Department of Measurement][measure] of the CTU in Prague. The project may be used in the [NVS][nvs] and [MMP][mmp] courses.

- The example program is based on an old code by Michal Tomáš © 2010.
- Base of the library extracted from CMSIS by Petr Douša © 2015.
- Further library improvements, organisation and the Makefile © Ondřej Hruška, 2015.

The library code is free to use in any educational and non-commercial projects, provided you retain the copyright notice and the file header files.



[measure]: http://measure.feld.cvut.cz/
[nvs]: http://measure.feld.cvut.cz/vyuka/predmety/A4B38NVS
[mmp]: http://measure.feld.cvut.cz/vyuka/predmety/A3B38MMP
