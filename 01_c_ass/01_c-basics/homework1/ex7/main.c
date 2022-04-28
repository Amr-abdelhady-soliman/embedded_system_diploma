/*
 * main.c
 *
 *  Created on: Apr 25, 2022
 *      Author: amr gweily
 */
#include "stdio.h"
void main ()
{
	int a,b;
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	printf("inter value of a\n");
	scanf("%d",&a);
	printf("inter value of b \n");
	scanf("%d",&b);
	printf("the values of a =%d,b=%d before swapping \n",a,b);
	a=a+b;
	b=a-b;
	a=a-b;
	printf("the values after swappig is a=%d,b=%d",a,b);
}

