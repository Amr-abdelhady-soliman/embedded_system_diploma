#include "stdio.h"
void main ()
{
	char a;
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	printf("inter character\n");
	scanf("%c",&a);
	if (((a>='a')&&(a<='z'))||((a>='A')&&(a<='Z')))
	{
		printf("%c is alphabet	",a);
	}
	else
	{
		printf("%c isn't alphabet",a);
	}
}



