#include "stdio.h"
int calc_power(int,int);
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	int x,power,number;
	printf("enter the number");
	scanf("%d",&number);
	printf("enter the power \n");
	scanf("%d",&power);
	int result =calc_power(number,power);
	printf("result is %d",result);

}
int calc_power(int num,int power)
{
	if (power==0)
		return 1;
	else
		return num*calc_power(num,power-1);
}


