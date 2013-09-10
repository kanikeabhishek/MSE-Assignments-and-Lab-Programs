#import <Foundation/Foundation.h>
#import "Bill.h"

@implementation Bill

@synthesize BillAmt;
@synthesize TaxAmt;
@synthesize TotalAmt;
@synthesize BillType;

-(void) print
{
	NSLog(@"The bill Amount is %d \n", BillAmt);
	NSLog(@"The bill Type is %d \n", BillType);
	NSLog(@"The TaxAmt= %d \n", TaxAmt);
	NSLog(@"The TotalAmt =%d \n", TotalAmt);
	
}
@end