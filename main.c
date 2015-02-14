#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "Mifare.h"
#include "BlinkOk.h"

/*
 * 
 *   NfcPost - Post to REST API when nfc card tapped
 *
 * 
 * 
 * 
 * 	oeoren 10 feb 2015
 */

   
int main(int argc, char **argv)
{
	char szSerial[20];
	getSerial(szSerial);	
	printf("Serial: %s no\n", szSerial);
	Mifare mifare;
	int ret = Mifare_init(&mifare);
	printf("Init ret=%d \n", ret);
	for(;;) 
	{
		ret = Mifare_select(&mifare);
		if (ret == -1)
			;// printf("Select ret=%d %s\n", ret, mifare.errBuf);
		else
		{
			printf("Select ret=%d %s\n", ret, mifare.asciiBuffer);
			ret = tapPost("https://swa201403.servicebus.windows.net/todo/tap", szSerial, mifare.asciiBuffer);
			if (ret== 0)
				BlinkOk();
			printf("Post ret=%d \n", ret);			
		}
		sleep(1);						
	}
	return 0;
}
