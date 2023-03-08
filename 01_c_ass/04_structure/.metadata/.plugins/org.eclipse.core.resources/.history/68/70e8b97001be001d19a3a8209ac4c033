#include "stdio.h"
typedef struct Sdistance
{
	int feet;
	float inch;
}distance;
distance distance1,distance2,sum;
void calculate_distance(distance *ptr1,distance *ptr2,distance * ptr3);
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	distance *ptr1=&distance1;
	distance *ptr2=&distance2;
	distance *ptr3=&sum;
	calculate_distance(ptr1,ptr2,ptr3);
}
void calculate_distance(distance *ptr1,distance *ptr2,distance *ptr3)
{
	printf("enter information \n");
	printf("enter feet and inch of first distance \n ");
	scanf("%d %f",&ptr1 ->feet,&ptr1 ->inch);
	printf("enter feet and inch of second distance \n ");
	scanf("%d %f",&ptr2 ->feet,&ptr2 ->inch);
	printf("\n first distance is %d in feet and %f in inches",ptr1->feet,ptr1->inch );
	printf("\n second distance is %d in feet and %f in inches",ptr2->feet,ptr2->inch );
	ptr3->feet=ptr1->feet+ptr2->feet;
	ptr3->inch=ptr1->inch+ptr2->inch;
	printf("\n ptr3 is %d feet and %f inch \n",ptr3->feet,ptr3->inch);
	while ((ptr3->inch)>=12)
	{
		ptr3->feet=ptr3->feet +1;
		ptr3->inch =ptr3->inch -12;
	}
	printf("the sum is %d feet and %0.1f inch ", ptr3->feet,ptr3->inch);
}
