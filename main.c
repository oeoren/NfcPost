#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "Mifare.h"
#include "BlinkOk.h"
#include "BuzzIt.h"
#include <confuse.h>
#include <time.h>
#include "timeStrNow.h"

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
#define LOGFILE "NfcPost.conf"
   
int main(int argc, char **argv)
{
	char szSerial[20];
	char szLogFile[100];
	char szPostToUri[200];
	char szReaderName[100];
	
	getSerial(szSerial);	
	
	cfg_opt_t opts[] = 
	{
		CFG_STR("logfile", "NfcLog.conf", CFGF_NONE),
		CFG_STR("postToUri", "", CFGF_NONE),
		CFG_STR("readerName", "NfcReader", CFGF_NONE),
		CFG_END()
	};
	cfg_t *cfg;
	cfg = cfg_init(opts, CFGF_NONE);
	if (cfg_parse(cfg, LOGFILE) == CFG_PARSE_ERROR)
	{
		printf("Cannot parse %s\n", LOGFILE);
		return 1;
	}
	strncpy(szLogFile, 		cfg_getstr(cfg,"logfile"),	sizeof(szLogFile));
	strncpy(szPostToUri, 	cfg_getstr(cfg,"postToUri"),sizeof(szPostToUri));
	strncpy(szReaderName, 	cfg_getstr(cfg,"readerName"),sizeof(szReaderName));
	if (strlen(szPostToUri) == 0) 
	{
		printf("postToUri must be set in configuration file\n");
		return 1;
	}
	
	
	
	printf("NfcPost version, %s, started on %s.  Logfile '%s' \n", NFCPOST_VERSION, szReaderName, szLogFile);
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
			int httpRet = tapPost(szPostToUri, szReaderName, szSerial, szLogFile, mifare.asciiBuffer);
			int beeps;
			switch (httpRet) {
				case 0: 	beeps = 1; break;
				case 200: 	beeps = 1; break;
				case 201: 	beeps = 1; break;
				case 202: 	beeps = 2; break;
				case 203: 	beeps = 3; break;
				default: 	beeps = 8; break;
			}
			BuzzIt(BUZZ_PIN, beeps, 1);
//			if (ret== 0)
//				BlinkOk();
			printf("%s, CardRet=%d, CardId=%s, HttpRet=%d \n",timeStrNow(), ret , mifare.asciiBuffer, httpRet);			
		}
		usleep(200000);						
	}
	return 0;
}
