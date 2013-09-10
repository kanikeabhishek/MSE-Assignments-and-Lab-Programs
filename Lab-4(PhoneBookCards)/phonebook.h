#import <Foundation/Foundation.h>
#import "phonecard.h"
@interface phonebook:NSObject
{
	NSString * Na;
	NSMutableArray *bN;
}
-(id)initWithName:(NSString *)name;
-(void)addobj:(phonecard *)p;
-(void)print;
-(void)findByName:(NSString *)fname;
-(void) deleteContact:(NSString *)cname;

//-(void)listEntries:(NSMutableArray)NSObj;
//-(void)countEntries:(NSMutableArray)NSObj;
@end
