#import<Foundation/Foundation.h>
@interface calc:NSObject
{
	int a,b,sum;
}

-(void)setval:(int )x andb :(int)y;
-(void)add;
-(void)sub;
-(void)mul;
-(void)div;

@end