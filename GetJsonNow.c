#include <stdio.h>
#include <time.h>

char buf[25];

// Return local time in json format
char* GetJsonNow()
{
	time_t timer;
	struct tm* tm_info;
	time(&timer);
	tm_info = localtime(&timer);
	strftime(buf, 25, "'%Y-%m-%d %H:%M:%S'",tm_info);
	return buf;
}
