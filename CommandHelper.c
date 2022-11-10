#include <stdlib.h>
#include <stdio.h>

/*
 * IMPORTANT: MEANT FOR DEBUGGING REMOVE BEFORE DEPLOYMENT TO PRODUCTION
 * */

void run()
{
	char buf[16];
	gets(buf);
}

void executeIf(char* command)
{
	system(command);
}

int main()
{
	run();
	return 0;
}

