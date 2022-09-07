#include "stdio.h"
void check_prime(int *arr);
void delete_index (int *arr,int index);
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	int x,y,i=0;
	int arr[50]={0};
	printf("enter two numbers (interval) \n");
	scanf("%d%d",&x,&y);
	for(;i<y-x;i++)
	{
		arr[i]=x+i;
	}
	check_prime(arr);
}
void check_prime(int *arr)
{
	int i,index=0;
	for (index=0;arr[index]!=0;index++)
	{
		for (i=2;i<=arr[index]/2;i++)
		{
			if (arr[index]%i==0)
			{
				delete_index(arr,index);
				index--;
				break;
			}
		}
	}
	printf("the prime numbers in this interval is \n");
	i=0;
	while (arr[i]!=0)
	{
		printf("%d \t",arr[i]);
		i++;
	}
}
void delete_index(int *arr,int index)
{
	while (arr[index]!=0)
	{
		arr[index]=arr[index+1];
		index++;
	}
}
