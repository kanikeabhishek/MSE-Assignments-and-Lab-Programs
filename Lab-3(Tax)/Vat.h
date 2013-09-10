#import <Foundation/Foundation.h >
#import "TaxProto.h"

@interface Vat:NSObject <TaxProto>

-(float)CalTax:(int)amt;

@end
