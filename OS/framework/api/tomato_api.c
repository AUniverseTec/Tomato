#include "tomato_api.h"

int tomato_api_init(void)
{
    // Initialize Tomato OS API
    printk(KERN_INFO "Tomato OS API: Initializing...\n");
    return 0;
}

int tomato_api_shutdown(void)
{
    // Shut down Tomato OS API
    printk(KERN_INFO "Tomato OS API: Shutting down...\n");
    return 0;
}
