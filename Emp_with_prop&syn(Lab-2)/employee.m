#import<Foundation/Foundation.h>
#import"employee.h"

@implementation employee
@synthesize ename,eid;

-(void)setEname:(NSString *)name
{
	ename=name;
}

-(void)setEid:(int)empid
{
	eid=empid;
}
-(void)disp
{
	NSLog(@"Name : %@\n",ename);
	NSLog(@"Id : %d\n",eid);

}

@end