#include "stdio.h"
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	int i,no_elements;
	float sum=0;
	float average;
	float x[100];
	printf("enter number of elements to get avearge \n");
	scanf("%d",&no_elements);
	while (no_elements<0||no_elements>100)
	{
		printf("error!! please enter number between zero and 100 \n");
		scanf("%d",&no_elements);
	}
	for (i=0;i<no_elements;i++)
	{
			printf("enter elemennt a(%d) \n",i+1);
			scanf("%f",&x[i]);
			sum=sum+x[i];
	}
	average =sum/no_elements;
	printf("avearge is \t %0.2f",average);


}
