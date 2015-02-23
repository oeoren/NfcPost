#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "Mifare.h"
#include "BlinkOk.h"
#include "BuzzIt.h"


/*
 * 
 *   NfcPost - Post to REST API when nfc card tapped
 *
 * 
 * 
 * 
 * 	oeoren 10 feb 2015
 */

#define NFCPOST_VERSION "0.5.1"
#define BUZZ_PIN 29
   
int main(int argc, char **argv)
{
	char szSerial[20];
	
	getSerial(szSerial);	
	printf("NfcPost version, %s, started on machine with serial: %s \n", NFCPOST_VERSION, szSerial);
	BuzzItInit(BUZZ_PIN);
	Mifare mifare;
	int ret = Mifare_init(&mifare);
	if (ret != 0) 
	{
		printf("Init failed with ret=%d \n", ret);
		return ret;
	}
	for(;;) 
	{
		ret = Mifare_select(&mifare);
		if (ret == -1)
			;// printf("Select ret=%d %s\n", ret, mifare.errBuf);
		else
		{
			printf("Select ret=%d %s\n", ret, mifare.asciiBuffer);
			ret = tapPost("https://swa201403.servicebus.windows.net/todo/tap", szSerial, mifare.asciiBuffer);
			BuzzIt(BUZZ_PIN, 1, 1);
			if (ret== 0)
				BlinkOk();
			printf("Post ret=%d \n", ret);			
		}
		sleep(1);						
	}
	return 0;
}
