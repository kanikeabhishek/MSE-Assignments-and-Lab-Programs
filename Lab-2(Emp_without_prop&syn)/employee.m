#import<Foundation/Foundation.h>
#import "employee.h"

@implementation employee
-(void)setEname : (const char*)name;
{
strcpy(ename,name);
}
-(void)setEid : (int) empid;
{
eid=empid;
}
-(void)disp
{
printf("Name : %s\n",ename);
printf("ID : %d\n",eid);
}
@end