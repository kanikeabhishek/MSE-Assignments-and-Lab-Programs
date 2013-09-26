//
//  DBManager.h
//  lab5
//
//  Created by MSE on 15/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBManager : NSObject

{
    NSString *databasePath;
}

+(DBManager*)getSharedInstance;
-(BOOL)createDB;
-(BOOL) saveData:(NSString*)registerNumber name:(NSString*)name
      department:(NSString*)department year:(NSString*)year;
-(NSArray*) findByRegisterNumber:(NSString*)registerNumber;
-(BOOL) deleteByRegisterNumber:(NSString*)registerNumber;

@end
