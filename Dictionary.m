#import "Dictionary.h"

@implementation Dictionary
@synthesize dnry;

-(void) print
{
   for (id eachKey in dnry)
   {
      if([eachKey rangeOfString:@"meter"].location!=NSNotFound)
      {
         id object = [dnry objectForKey:eachKey];
         NSLog(@"Value: %@ Key: %@", object, eachKey);
      }
   }
}

@end