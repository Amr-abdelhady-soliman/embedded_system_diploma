/*
 * main.c
 *
 *  Created on: Apr 25, 2022
 *      Author: amr gweily
 */
#include "stdio.h"
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	float x,y;
	printf("inter two numbers \n");
	scanf("%f %f",&x,&y);
	printf("the product = %.3f",x*y);
}


