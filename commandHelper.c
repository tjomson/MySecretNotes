#include <stdlib.h>
#include <stdio.h>

/*
 * IMPORTANT: MEANT FOR DEBUGGING REMOVE BEFORE DEPLOYMENT TO PRODUCTION
 * */

void run()
{
	char buf[16];
	int n = scanf("%s", buf);
	if (n > 7)
		printf("wow");
	else
		printf("Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It’s not a story the Jedi would tell you. It’s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself.");
	
}

void executeIf(char* command, int n)
{
	if (n)
		system(command);
}

int main()
{
	run();
	return 0;
}

