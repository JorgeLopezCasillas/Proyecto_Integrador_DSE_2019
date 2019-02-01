#include "main_thread.h"
// Define the number of counts per millisecond (1 count per clock tick, clock rate is 120MHz)
// So there are 120E6 ticks per second.
// Divide by 1000 to get ticks / millisecond
#define COUNTS_PER_MILLISECOND  (120E6 / 1000)
#define COUNTS_SECOND  (120E6)
    uint8_t Time10ms = 100;
    uint8_t TimeSEC = 0;
/* Main Thread entry function */
void main_thread_entry(void)
{
    // Boolean to hold LED state
    bool isOn = true;

    // Variable to hold counts
    timer_size_t counts = 0;

    // Open the timer using the configured options from the configurator
    g_timer0.p_api->open (g_timer0.p_ctrl, g_timer0.p_cfg);
    g_timer0.p_api->start (g_timer0.p_ctrl);

    /* TODO: add your own code here */
    while (1)
    {
        // Get current counts
        g_timer0.p_api->counterGet(g_timer0.p_ctrl, &counts);
        // Check if 500ms has elapsed => This should be a helper function at some point
        // Need to look if the PBCLK settings are stored in a define somewhere...
        if (counts > (10*COUNTS_PER_MILLISECOND))
        {
            Time10ms--;
            if(Time10ms==0)
            {
                Time10ms = 100;
                TimeSEC++;
                // Turn LED
                g_ioport.p_api->pinWrite(IOPORT_PORT_06_PIN_00, isOn);

                // Toggle LED State
                isOn = !isOn;

             }
            // Reset the timer to 0
            g_timer0.p_api->reset(g_timer0.p_ctrl);
         }
         tx_thread_sleep (0);
     }// END while (1)
}//
