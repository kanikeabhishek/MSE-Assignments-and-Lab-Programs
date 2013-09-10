#import<Foundation/Foundation.h>
#import "calc.h"

int main(int argc,char *argv[])
{
	calc * c=[[calc alloc]init];
	[c setVal:10 andb:0];
	[c add];
	[c sub];
	[c mul];
	[c div];
	[c release];
	return 0;
}