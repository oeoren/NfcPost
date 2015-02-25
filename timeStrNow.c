#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

static char szTime[30];

char* timeStrNow() 
{
	time_t t;
	time(&t);
	strncpy(szTime,ctime(&t),24);
	return szTime;
}
