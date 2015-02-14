/*
 * 
*/

#include <bcm2835.h>
// Blinks on RPi pin GPIO 11
#define PIN 47 

int BlinkOk(void)
{
    if (!bcm2835_init())
	return 1;

    // Set the pin to be an output
    bcm2835_gpio_fsel(PIN, BCM2835_GPIO_FSEL_OUTP);

	// Turn it on
	bcm2835_gpio_write(PIN, HIGH);
	
	// wait a bit
	delay(500);
	
	// turn it off
	bcm2835_gpio_write(PIN, LOW);
	

    return 0;
}
