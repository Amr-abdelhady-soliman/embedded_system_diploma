#include "stdio.h"
typedef struct Scomplex
{
	float real;
	float imaginary;
}add_complex;
add_complex number1,number2,sum;
void calculate_sum(add_complex *ptr1,add_complex *ptr2,add_complex * ptr3);
void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	add_complex *ptr1=&number1;
	add_complex *ptr2=&number2;
	add_complex *ptr3=&sum;
	calculate_sum(ptr1,ptr2,ptr3);
}
void calculate_sum(add_complex *ptr1,add_complex *ptr2,add_complex *ptr3)
{
	printf("enter information \n");
	printf("enter real and imaginary of first complex \n ");
	scanf("%f %f",&ptr1 ->real,&ptr1 ->imaginary);
	printf("enter real and imaginary of second complex \n ");
	scanf("%f %f",&ptr2 ->real,&ptr2 ->imaginary);
	printf("\n first complex is %f in real and %f in imaginary",ptr1->real,ptr1->imaginary );
	printf("\n second complex is %f in real and %f in imaginary",ptr2->real,ptr2->imaginary );
	ptr3->real=ptr1->real+ptr2->real;
	ptr3->imaginary=ptr1->imaginary+ptr2->imaginary;
	printf("\n sum is %0.1f +%0.1f i \n",ptr3->real,ptr3->imaginary);
}
