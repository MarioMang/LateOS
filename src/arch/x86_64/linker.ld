ENTRY(start)

SECTIONS {
    . = 1M;

    .boot :
    {
        *(.multiboot2_header)
    }

    .text ALIGN (0x1000):
    {
        *(.text)
    }

    .rodata ALIGN (0x1000) :
    {
        *(.rodata*)
    }

    .data ALIGN (0x1000) :
    {
        *(.data)
    }

    .bss :
    {
        sbss = .;
        *(COMMON)
        *(.bss)
        ebss = .;
    }
}