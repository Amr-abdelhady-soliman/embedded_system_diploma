#include "stdio.h"
#include "string.h"
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	char x[100];
	int i=0,count;
	printf("enter string \n");
	scanf("%s",x);
	count=strlen(x)-1;
	while (i<=count)
	{
		printf("%c",x[count-i]);
		i++;
	}
}
