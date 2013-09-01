#import<Foundation/Foundation.h>
#import "print.h"

int main(int argc,char* argv[])
{
print *printer=[[print alloc]init];
[printer addStringValue:"Dale Steyn"];
[printer print];
[printer release];
return 0;
}