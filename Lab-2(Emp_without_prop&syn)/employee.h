#import<Foundation/Foundation.h>
@interface employee:NSObject
{
 char ename[100];
 int eid;
}
-(void)setEname : (char*)name;
-(void)setEid : (int) empid;
-(void)disp;
@end