#import <Foundation/Foundation.h >
#import "TaxProto.h"
#import "Kst.h"

@implementation Kst

-(float)CalTax:(int)amt
{
   float taxAmt = amt * 14 / 100 ;
	return taxAmt;
}

@end
