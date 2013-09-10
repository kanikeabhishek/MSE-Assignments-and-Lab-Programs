#import <Foundation/Foundation.h>
#import "phonebook.h"
#import "phonecard.h"

@implementation phonebook
-(id)initWithName:(NSString *)name
{
	
	self=[super init];
	if(self)
	{
		Na=[[NSString alloc]initWithString:name];
		bN=[[NSMutableArray alloc] init];
	}
	return self;
}

-(void)addobj:(phonecard *)p
{
	[bN addObject:p];
}
-(void)print
{
	int i;
	phonecard *p1;
	NSLog(@"\nPhone book is...\n");
	for (i = 0; i < [bN count]; i++)
	{
		p1 = [bN objectAtIndex:i];
		[p1 print];
	}
}
-(void)findByName:(NSString *)fname
{
	int i;
	phonecard *p1;
	int flag = 0;
	for (i = 0; i < [bN count]; i++)
	{
		p1 = [bN objectAtIndex:i];
		if ([[p1 getName]isEqualToString:fname])
		{
			[p1 print];
			flag = 1;
		}  
	}
	if (flag == 0)
	{
		NSLog(@"Name '%@' not found in phonebook",fname);
	}
}

-(void) deleteContact:(NSString *)cname
{
	NSMutableIndexSet *discardedItems = [NSMutableIndexSet indexSet];
	NSUInteger index = 0;
	phonecard *item;
	
	for (item in bN) 
	{	
	
		item = [bN objectAtIndex:index];
		
		if ([[item getName]isEqualToString:cname])
	   	[discardedItems addIndex:index];
			  
	   index++;
	}
	
	[bN removeObjectsAtIndexes:discardedItems];
	
}
@end