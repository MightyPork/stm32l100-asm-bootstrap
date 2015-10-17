# Keil (5) MDK-ARM projekt pro STM32L100 Discovery

Projekt je vyvíjen na *Katedře měření ČVUT FEL v Praze* a bude sloužit pro předmět [NVS][nvs] (příp. [MMP][mmp]).

- Ukázkový program je založený na starším kódu © Michal Tomáš, 2010.
- Základ knihovny a projektu © Petr Douša, 2015.
- Další úpravy knihovny, Makefile © Ondřej Hruška, 2015.

Kód je volně šiřitelný za podmínky zachování hlaviček souborů.


## Popis projektu

Jedná se o knihovnu definic adres registrů a bitů dle CMSIS a datasheetů spolu s ukázkovým programem,
který knihovnu využívá (a demonstruje nastavení RCC a pinů).


## Cílový hardware

Projekt je určen pro procesor **STM32L100RC** v kitu **STM32L100 Discovery**, který se připojí přes USB.


## Knihovna

Assemblerová knihovna sestává ze sady souborů ve složce `lib/` a startup scriptu `startup_stm32l100xc.s` (ten pochází 
z instalace Keilu, dle hlavičky je přímo od ST).

Soubor `INI_REGS.s` obsahuje definice adres registrů, soubory `INI_BITS_*.s` pak bitové masky a hodnoty
jednotlivých registrů.

Soubor `INI_BB.s` poskutuje adresy pro bit-banding.

Soubory ze složky `lib/` je nutné naincludovat do hlavního programu, např.

```asm
        ; Register addresses
        GET        lib/INI_REGS.s
        GET        lib/INI_BB.s    ; Must be included *after* INI_REGS!

        ; Bit presets
        GET        lib/INI_BITS_GPIO.s
        GET        lib/INI_BITS_RCC.s
        GET        lib/INI_BITS_FLASH.s
```

## Formátování

Soubory jsou formátovány se šířkou tabulátoru 4 znaky, komentáře jsou anglicky nebo bez diakritiky.

Soubory mají Windowsové konce řádků, aby nebyl problém s Keilem (a většina lidí to bude používat pod Windows).


## Jak s projektem pracovat

### Windows - Keil MDK-ARM

Projekt je primárně určen pro **µVision MDK-ARM v.5**, asm soubory fungují i ve verzi 4 (ale projekt bude potřeba upravit).

Keil je primárně pro Windows, pod Wine funguje, ale nedokáže přistupovat na ST-Link.

Ve Vitualboxu funguje včetne ST-Linku, ovšem pouze s verzí 2.


### Linux

Kompilace a nahrávání probíhá pomocí Makefile v projektu. 

Napřed je potřeba nainstalovat následující software:

1. Pomocí `wine` nainstalovat Keil (do `~/.wine`) - z jeho složky se berou binutils a assembler, nejde je přesunout kvůli 
   licenčním souborům. Teoreticky by mohlo jít použít linuxové verze, pokud zjistíte jak nastavit, aby používaly licenční 
   soubory z Keilu (omezení na 32 kB).

2. Pro plnou funkčnost se hodí doinstalovat `arm-none-eabi-binutils`, ale není nutné - jen pro `make disasm`

3. Dále je potřeba nainstalovat `stlink` pro komunikaci s deskou, linuxová verze je volně dostupná.

*Tip:* Uživatelé ArchLinuxu vše najdou v oficiálních repozitářích.


#### V čem editovat

Jako editor lze použít Keil pod wine, libovolný textový editor nebo ARMovské IDE DS-5 Community Edition - bohužel nedovoluje
nic kompilovat, ale má dobru podporu pro assembler a kontextovou nápovědu.



[nvs]: http://measure.feld.cvut.cz/vyuka/predmety/A4B38NVS
[mmp]: http://measure.feld.cvut.cz/vyuka/predmety/A3B38MMP