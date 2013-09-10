#import<Foundation/Foundation.h>
#import "employee.m"
#import"employee.h"
int main(int argc,char *argv[])
{
	employee *emp= [[employee alloc] init];
	[emp setEname:"Abhi"];
	[emp setEid:42];
   [emp disp];
	[emp release];
	return 0;
}