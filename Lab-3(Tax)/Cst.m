#import <Foundation/Foundation.h >
#import "TaxProto.h"
#import "Cst.h"

@implementation Cst

-(float)CalTax:(int)amt
{
   float taxAmt = amt * 4 / 100 ;
	return taxAmt;
}

@end
