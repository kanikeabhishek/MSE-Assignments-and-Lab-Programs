#import<Foundation/Foundation.h>
#import"phonecard.h"
@implementation phonecard
-(void)print
{
	NSLog(@"---------------------------------------------");
	NSLog(@"Name is:: %@\n",name);
	NSLog(@"Email is:: %@\n",email);
	NSLog(@"Id is:: %d\n",no);
	NSLog(@"---------------------------------------------");
}
-(NSString*)getName
{
	return name;
}
@synthesize name,email,no;
@end