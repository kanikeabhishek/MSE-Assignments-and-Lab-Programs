#import<Foundation/Foundation.h>
@interface employee:NSObject
{
	NSString *ename;
	int eid;
}
@property NSString * ename;
@property int eid;

-(void)setEname:(NSString *)name;
-(void)setEid:(int)x;
-(void)disp;
@end