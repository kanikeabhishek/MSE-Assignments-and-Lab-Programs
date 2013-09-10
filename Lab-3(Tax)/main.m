#import <Foundation/Foundation.h>
#import "Bill.h"
#import "CalcTax.h"

int main(int argc, char* argv[])
{	
	Bill *b=[[Bill alloc]init];
	CalcTax *c=[[CalcTax alloc]init];
	int ch, amt;
	NSLog(@"Enter the type of Bill\n");
	NSLog(@"1.Finished goods 2.Grocery\n");
	scanf("%d",&ch);
	[b setBillType:ch];
	NSLog(@"Enter the bill amount\n");
	scanf("%d",&amt);
	[b setBillAmt:amt];
	
	[c CalcTaxonBill: b];
	[b print];

	[b release];
	[c release];
	return 0;
}