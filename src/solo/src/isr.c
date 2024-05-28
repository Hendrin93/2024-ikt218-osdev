#include "interrupts.h"
#include "libc/stdint.h"
#include "libc/stddef.h"


void register_interrupt_handler(uint8_t n, isr_t handler, void* context)
{
    int_handlers[n].handler = handler;
    int_handlers[n].data = context;
}


void isr_handler(registers_t regs)
{
    
    uint8_t int_no = regs.int_no & 0xFF;
    struct int_handler_t intrpt = int_handlers[int_no];
    if (intrpt.handler != 0)
    {

        intrpt.handler(&regs, intrpt.data);
    }
    else
    {
        monitor_write("unhandled interrupt: ");
        monitor_write_hex(int_no);
        monitor_put('\n');*/
        for(;;);
    }
}


