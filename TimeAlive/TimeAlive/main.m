//
//  main.m
//  TimeAlive
//
//  Created by Ross Freeman on 5/15/14.
//  Copyright (c) 2014 Ross Freeman. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps =[[NSDateComponents alloc]init];
        [comps setYear:1997];
        [comps setMonth:8];
        [comps setDay:18];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dob = [g dateFromComponents:comps];
        double secondsSinceBirth = [[[NSDate alloc]init] timeIntervalSinceDate:dob];
        
        NSLog(@"I have been alive for %f seconds.", secondsSinceBirth);

    }
    return 0;
}

