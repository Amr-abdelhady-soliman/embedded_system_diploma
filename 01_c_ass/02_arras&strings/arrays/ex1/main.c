#include "stdio.h"
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	int i,j;
	float sum[2][2];
	float x[2][2],y[2][2];
	printf("enter elements of first matrix \n");
	for (i=0;i<2;i++)
	{
		for (j=0;j<2;j++)
		{
			printf("enter elemennt a(%d,%d) \n",i+1,j+1);
			scanf("%f",&x[i][j]);
		}
	}
	printf("enter elements of second matrix \n");
	for (i=0;i<2;i++)
	{
		for (j=0;j<2;j++)
		{
			printf("enter elemennt b(%d,%d) \n",i+1,j+1);
			scanf("%f",&y[i][j]);
		}
	}
	printf ("sum of matrix is : \n");
	for (i=0;i<2;i++)
	{
		for (j=0;j<2;j++)
		{
			sum[i][j]=x[i][j]+y[i][j];
			printf(" %.1f \t",sum[i][j]);
		}
		printf("\n");
	}

}
