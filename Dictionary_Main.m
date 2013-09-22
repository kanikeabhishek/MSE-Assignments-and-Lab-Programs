#import <Foundation/Foundation.h>
#import "Dictionary.h"

int main(int argc, char *argv[])
{
   NSArray *obj=[NSArray arrayWithObjects:[NSNumber numberWithInt:10],[NSNumber numberWithInt:40],[NSNumber numberWithInt:50],[NSNumber numberWithInt:20],[NSNumber numberWithInt:30],[NSNumber numberWithInt:10],[NSNumber numberWithInt:10],[NSNumber numberWithInt:20],[NSNumber numberWithInt:20],[NSNumber numberWithInt:10],nil];
   NSArray *key=[NSArray arrayWithObjects:@"centimeter",@"pound",@"ounce",@"kilogram",@"yard",@"millimeter",@"kilometer",@"milligram",@"gram",@"meter",nil];
   NSDictionary *d=[NSDictionary dictionaryWithObjects:obj forKeys:key];
   Dictionary *dn=[[Dictionary alloc]init];
   [dn setDnry:d];
   [dn print];
   return 0;
}