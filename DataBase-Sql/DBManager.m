//
//  DBManager.m
//  lab5
//
//  Created by MSE on 15/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "DBManager.h"
DBManager *sharedInstance = nil;
sqlite3 *database = nil;
sqlite3_stmt *statement = nil;


@implementation DBManager

+(DBManager*)getSharedInstance{
    if (!sharedInstance) {
        sharedInstance = [[super allocWithZone:NULL]init];
        [sharedInstance createDB];
    }
    return sharedInstance;
}

-(BOOL)createDB{
    NSString *docsDir;
    NSArray *dirPaths;
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains
    (NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = dirPaths[0];
    // Build the path to the database file
    databasePath = [[NSString alloc] initWithString:
                    [docsDir stringByAppendingPathComponent: @"student.db"]];
    BOOL isSuccess = YES;
    NSFileManager *filemgr = [NSFileManager defaultManager];
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
        const char *dbpath = [databasePath UTF8String];
        if (sqlite3_open(dbpath, &database) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt ="create table if not exists studentsDetail (regno integer primary key, name text, department text, year text)";
            if (sqlite3_exec(database, sql_stmt, NULL, NULL, &errMsg)!= SQLITE_OK)
            {
                isSuccess = NO;
                NSLog(@"Failed to create table");
            }
            sqlite3_close(database);
            return isSuccess;
        }
        else {
            isSuccess = NO;
            NSLog(@"Failed to open/create database");
        }
    }
    return isSuccess;
}

- (BOOL) saveData:(NSString*)registerNumber name:(NSString*)name
       department:(NSString*)department year:(NSString*)year;
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *insertSQL = [NSString stringWithFormat:@"insert into studentsDetail (regno, name, department, year) values (\"%d\",\"%@\", \"%@\", \"%@\")",[registerNumber integerValue],name, department, year];
        const char *insert_stmt = [insertSQL UTF8String];
        sqlite3_prepare_v2(database, insert_stmt,-1, &statement, NULL);
        
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
           // sqlite3_reset(statement);
            sqlite3_finalize(statement);
            sqlite3_close(database);
            return YES;
        }
        else
        {
          //  sqlite3_reset(statement);
            sqlite3_finalize(statement);
            sqlite3_close(database);
            return NO;
        }
        //sqlite3_reset(statement);
    }
    return NO;
}
                                

-(BOOL)deleteByRegisterNumber:(NSString *)registerNumber
{
    const char *dbpath = [databasePath UTF8String];
    BOOL isSuccess = YES;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat:@"delete from studentsDetail where regno = \"%@\"", registerNumber];
        const char *query_stmt = [querySQL UTF8String];
        char *errMsg;
        
        if (sqlite3_exec(database, query_stmt, NULL, NULL, &errMsg)!= SQLITE_OK)
        {
            isSuccess = NO;
            NSLog(@"Failed to delete row");
            printf("%s",errMsg);
            //sqlite3_reset(statement);
            //sqlite3_finalize(statement);
            sqlite3_close(database);
        }
        else
        {
            NSLog(@"Deleted row");
            //sqlite3_reset(statement);
            //sqlite3_finalize(statement);
            sqlite3_close(database);
            return isSuccess;
        }
    }
    else
    {
        isSuccess = NO;
        NSLog(@"Failed to open database");
    }
    return isSuccess;
}

- (NSArray*) findByRegisterNumber:(NSString*)registerNumber
        {
            const char *dbpath = [databasePath UTF8String];
            if (sqlite3_open(dbpath, &database) == SQLITE_OK)
            {
                NSString *querySQL = [NSString stringWithFormat:@"select name, department, year from studentsDetail where regno=\"%@\"",registerNumber];
                const char *query_stmt = [querySQL UTF8String];
                NSMutableArray *resultArray = [[NSMutableArray alloc]init];
                if (sqlite3_prepare_v2(database,
                                       query_stmt, -1, &statement, NULL) == SQLITE_OK)
                {
                    if (sqlite3_step(statement) == SQLITE_ROW)
                    {
                        NSString *name = [[NSString alloc] initWithUTF8String:
                                          (const char *) sqlite3_column_text(statement, 0)];
                        [resultArray addObject:name];
                        NSString *department = [[NSString alloc] initWithUTF8String:
                                                (const char *) sqlite3_column_text(statement, 1)];
                        [resultArray addObject:department];
                        NSString *year = [[NSString alloc]initWithUTF8String:
                                          (const char *) sqlite3_column_text(statement, 2)];
                        [resultArray addObject:year];
                        sqlite3_finalize(statement);
                        sqlite3_close(database);
                        return resultArray;
                    }
                    else
                    {
                        NSLog(@"Not found");
                        sqlite3_close(database);
                        return nil;
                    }
                    //sqlite3_reset(statement);
                }
            }
            return nil;
        }

@end
