#include "stdio.h"
typedef struct Sstudent
{
	char name[50];
	float marks;
}students;

void main ()
{
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
	students student[3];
	printf("enter information of student \n");
	for (int roll=0;roll<3;roll++)
	{
	printf("for roll number %d",roll+1);
	printf("\n enter name : ");
	scanf("%s", &student[roll].name);
	printf("\n enter marks : ");
	scanf("%f", &student[roll].marks);
	}
	printf("displaying information of students \n");
	for (int roll=0;roll<3;roll++)
		{
		printf("for roll number %d \n",roll+1);
		printf("name : %s",student[roll].name);
		printf("\n marks : %0.2f \n ",student[roll].marks);
		}
}
