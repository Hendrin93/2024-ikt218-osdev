<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 691a51458db34fc0810daef985151af2d0f37aac
ENTRY(_start)

SECTIONS {
    . = 1M;

    .boot :
    {
        /* Ensure that the multiboot header is at the beginning! */
        *(.multiboot_header)
    }

    . = ALIGN(4K);
    .text :
    {
        *(.text .text.*)
    }

    . = ALIGN(4K);
    .rodata :
    {
        *(.rodata .rodata.*)
    }

    . = ALIGN(4K);
    .data :
    {
        *(.data .data.*)
    }

    . = ALIGN(4K);
    .bss :
    {
        *(.bss .bss.*)
    }

	end = .; _end = .; __end = .;
<<<<<<< HEAD
=======
=======
>>>>>>> origin/master
ENTRY(_start)

SECTIONS {
    . = 1M;

    .boot :
    {
        /* Ensure that the multiboot header is at the beginning! */
        *(.multiboot_header)
    }

    . = ALIGN(4K);
    .text :
    {
        *(.text .text.*)
    }

    . = ALIGN(4K);
    .rodata :
    {
        *(.rodata .rodata.*)
    }

    . = ALIGN(4K);
    .data :
    {
        *(.data .data.*)
    }

    . = ALIGN(4K);
    .bss :
    {
        *(.bss .bss.*)
    }

	end = .; _end = .; __end = .;
<<<<<<< HEAD
=======
>>>>>>> bf96e12632a7a13ae09f2ceb1f193d21bdd5898c
>>>>>>> 691a51458db34fc0810daef985151af2d0f37aac
>>>>>>> origin/master
}