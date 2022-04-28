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
	int x;
	printf("enter an integer \n");
	scanf("%d",&x);
	printf("you intered %d",x);
}
