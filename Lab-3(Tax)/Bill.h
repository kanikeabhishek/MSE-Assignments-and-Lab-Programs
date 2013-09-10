#import <Foundation/Foundation.h>

@interface Bill:NSObject
{
	int BillType;
	int BillAmt;
	int TaxAmt;
	int TotalAmt;
}

@property int BillAmt;
@property int TaxAmt;
@property int TotalAmt;
@property int BillType;

-(void)print;

@end