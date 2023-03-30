#ifndef PLATFORM_TPES_H_
#define PLATFORM_TYPES_H_
/*___________________boolean definition________________*/
#include "stdbool.h"
#ifndef _bool
#define _bool unsigned char
#enif
#ifndef true
#define true (boolean)1
#endif
#ifndef false
#define false (boolean)0
#endif
/*__________________arch___________________________________*/
#define CPU_TYPE_8							8 
#define CPU_TYPE_16							16 
#define CPU_TYPE_32							32 
#define CPU_TYPE_64							64

#define MSB_FIRST							0
#define LSB_FIRST							1

#define HIGH_BYTE_FIRST						0
#define LOW_BYTE_FIRST						1
/*__________________arch configuration_____________________*/
#define CPU_TYPE							CPU_TYPE_32								
#define CPU_BIT_ORDER						MSB_FIRST									
#define CPU_BYTE_ORDER						HIGH_BYTE_FIRST
/*______________signed data tpes______________________________*/
typedef signed char							s_8;
typedef signed int							s_32;
typedef signed short						s_16;
typedef signed long long 					s_64;
typedef float								f_32;
typedef double								f_64;
typedef long double							f_128;
/*______________unsigned data type_____________________________*/
typedef unsigned char 						u_8;
typedef unsigned int						u_32;
typedef unsigned short						u_16;
typedef unsigned long long					u_64;
/*______________volatile data types____________________________*/
typedef volatile signed int					vs_32;
typedef volatile unsigned int				vu_32;
typedef volatile signed char				vu_8;
typedef volatile unsigned char				vs_8;
typedef volatile unsigned short				vu_16;
typedef volatile signed short				vs_16;
typedef volatile float						vf_32;
typedef volatile double						vf_64;
typedef volatile long double				vf_128;
#endif