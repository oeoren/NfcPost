#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "GetSerial.h"

int getSerial(char *pszSerial)
{
	int ret = -1;	
	FILE *f = fopen("/proc/cpuinfo", "r");
	if (!f) {
	  return -1;
	}

	char line[256]; 
	while (fgets(line, 256, f)) {
	  if (strncmp(line, "Serial", 6) == 0) {
		 strcpy(pszSerial, strchr(line, ':') + 2);
		 ret = 0;
		 size_t ln = strlen(pszSerial);
		 char *c = pszSerial;
		 while(*c != '\0' && *c != '\n')
			*c++;
		*c = '\0';
		}
	}
	fclose(f);
	return ret;
}
