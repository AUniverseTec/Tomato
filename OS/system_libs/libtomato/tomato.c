#include "tomato.h"

void tomato_init(void)
{
    // Initialize operating system
    printk(KERN_INFO "Tomato OS: Initializing...\n");
    // Initialize system libraries
    libc_init();
    libm_init();
    // Initialize framework
    tomato_api_init();
}

void tomato_shutdown(void)
{
    // Shut down operating system
    printk(KERN_INFO "Tomato OS: Shutting down...\n");
    // Shut down system libraries
    libc_shutdown();
    libm_shutdown();
    // Shut down framework
    tomato_api_shutdown();
}
