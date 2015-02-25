#include <stdio.h>
#include <curl/curl.h>
#include "TapPost.h"
#include <time.h>
#include "GetJsonNow.h"
#include <uuid/uuid.h>
#include "LogTap.h"


size_t dummy_write(char *ptr, size_t size, size_t nmemb, void* userdata)
{
	return size * nmemb;
}


CURL *curl = NULL;
CURLcode res;
int tapPost(char* szURL, char* szReaderName, char* szUnitId, char* szLogFile,  char* szCardId) 
{
	curl = curl_easy_init();
	
	curl_easy_setopt(curl, CURLOPT_URL, szURL);
	struct curl_slist *headers = NULL;
	headers = curl_slist_append(headers, "Accept: application/json");
	headers = curl_slist_append(headers, "Content-Type: application/json");
	headers = curl_slist_append(headers, "charsets: utf-8");
	
	char szBuf[500];

	uuid_t uidPost;
	uuid_generate_time_safe(uidPost);  	
	char uuid_str[37];
	uuid_unparse_lower(uidPost, uuid_str);
	sprintf(szBuf,"{ Id : \"%s\" , ReaderName : \"%s\", UnitId : \"%s\", CardId : \"%s\", TapAt : %s }", 
		uuid_str, szReaderName, szUnitId, szCardId, GetJsonNow());
//	printf("%s\n",szBuf);
	curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, "POST");
	curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
	curl_easy_setopt(curl, CURLOPT_POSTFIELDS, szBuf);
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, &dummy_write);
	res = curl_easy_perform(curl);
	long httpCode;
	res = curl_easy_getinfo(curl, CURLINFO_HTTP_CODE, &httpCode);
	curl_easy_cleanup(curl);
	logTap(szLogFile, szBuf, (int)httpCode);
	return (int)httpCode;
}

