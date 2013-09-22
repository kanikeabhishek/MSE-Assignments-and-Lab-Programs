#import<Foundation/Foundation.h>
#include<stdlib.h>
#include<time.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
   
	NSTimeInterval secondsperDay = 24*60*60;
   int lp=0;
   NSTimeInterval randDate = 0;
   
	NSDate *now = [NSDate date];
	NSLog(@"Today's date is: %@", now);  //today

	NSDate *dayAfterTom = [[NSDate alloc] initWithTimeIntervalSinceNow:secondsperDay*2];    
   NSLog(@"Day after tomorrow's date is: %@", dayAfterTom); //day after tomorrow

   NSDate *lastThursday = [NSDate dateWithNaturalLanguageString: @"Thursday last week"];
   NSLog(@"Using natural language last Thursday's date is: %@",lastThursday); //last Thursday
   
   NSDate *GenDate = nil;	
	secondsperDay = 24*3600; 
   NSMutableArray *dateList = [[NSMutableArray alloc]init];

	NSLog(@"Random Dates: \n");
   
	for(lp = 0;lp < 5;lp++)
	{
		randDate = secondsperDay* (rand()%5);
		GenDate = [[NSDate alloc] initWithTimeIntervalSinceNow:randDate];
		[dateList addObject:GenDate];
		NSLog(@"%@", GenDate);
	}
   
	NSDate *oldDate = nil;
   
	for(id someDate in dateList) //finding oldest date
	{

		if(oldDate == nil)      
		{
			oldDate = someDate;
		}
		else if([oldDate compare:someDate] == NSOrderedDescending)
		{
			oldDate = someDate;
		}
	}
   
	NSLog(@"The oldest date in the list is: %@", oldDate);

   int firstday = 0;
   int tenthday = (firstday +2)%7;     //finding 10th	day
   
   NSArray *myDays;
   myDays = [NSArray arrayWithObjects: @"Sunday", @"Monday", @"Tuesday", @"Wednesday",@"Thursday",@"Friday",@"Saturday",nil];
   
   
   NSLog(@"1st day of month is %@ & 10th day of month is %@\n",[myDays objectAtIndex:firstday],[myDays objectAtIndex:tenthday]);

	[pool release];
	return 0;
}