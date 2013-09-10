#import<Foundation/Foundation.h>
@interface phonecard:NSObject
{
	NSString *name;
	NSString *email;
	int no;
}
-(void)print;
@property (readwrite)int no;
@property (readwrite,retain)NSString *name;
@property(readwrite,retain)NSString *email;
-(NSString *)getName;
@end