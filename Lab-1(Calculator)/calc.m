#import<Foundation/Foundation.h>
#import "calc.h"
@implementation calc

-(void)setVal:(int )x andb :(int)y
{
	a=x;
	b=y;
}

-(void)add
{
	printf("Sum : %d\n",(a+b));
}

-(void)sub
{
	printf("Difference : %d\n",(a-b));
}

-(void)mul
{
	printf("Product : %d\n",(a*b));
}
-(void)div
{
	if(b==0)
	{
		printf("Div cant be performed\n");
	}
	else
	{
		printf("Quotient : %d\n",(a/b));
	}
}

@end