#include <stdio.h>
#include "LogTap.h"

void	logTap(char* szLogFile, char* szBody, int httpCode)
{
	FILE *fLog = fopen(szLogFile,"a");
	fprintf(fLog, "%s, httpRet=%d, %s \n",timeStrNow(), httpCode , szBody);			
	fclose(fLog);
}
