#include "stdio.h"
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	int i,num,search;
	int x[30];
	printf("enter number of elements \n");
	scanf("%d",&num);
	printf("enter the search number \n");
	scanf("%d",&search);
	printf ("enter the matrix \n");
	for (i=0;i<num;i++)
	{
		printf ("enter a(%d) \n",i+1);
		scanf("%d",&x[i]);
	}
	for (i=0;i<num;i++)
	{
		if (x[i]==search)
		{
			printf("number found in element %d",i+1);
			break;
		}
	}
	if (i==num)
		printf("sorry your search number isn't in the array");
}
