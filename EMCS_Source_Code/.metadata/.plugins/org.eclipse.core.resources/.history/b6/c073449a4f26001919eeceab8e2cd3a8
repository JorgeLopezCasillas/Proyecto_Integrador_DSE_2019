/* HAL-only entry function */
#include "hal_data.h"
// Define the number of counts per millisecond (1 count per clock tick, clock rate is 120MHz)
// So there are 120E6 ticks per second.
// Divide by 1000 to get ticks / millisecond
#define COUNT_PER_MILLISECOND  (120E6 / 1000)
#define COUNT_SECOND  (120E6)
    uint8_t Tim10ms = 100;
    uint8_t TimSEC = 0;
void hal_entry(void)
{
    bool isOn2 = true;

    // Variable to hold counts
    timer_size_t counts = 0;

    // Open the timer using the configured options from the configurator
    g_timer1.p_api->open (g_timer1.p_ctrl, g_timer1.p_cfg);
    g_timer1.p_api->start (g_timer1.p_ctrl);

        /* TODO: add your own code here */
    while (1)
    {
            // Get current counts
            g_timer1.p_api->counterGet(g_timer1.p_ctrl, &counts);
            // Check if 500ms has elapsed => This should be a helper function at some point
            // Need to look if the PBCLK settings are stored in a define somewhere...
            if (counts > (1*COUNT_PER_MILLISECOND))
            {
                Tim10ms--;
                if(Tim10ms==0)
                {
                    Tim10ms = 100;
                    TimSEC++;
                    // Turn LED
                    g_ioport.p_api->pinWrite(IOPORT_PORT_06_PIN_01, isOn2);

                    // Toggle LED State
                    isOn2 = !isOn2;

                }
                // Reset the timer to 0
                g_timer1.p_api->reset(g_timer1.p_ctrl);
             }
    }
}
