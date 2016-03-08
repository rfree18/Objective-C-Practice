//
//  main.m
//  TimeAfterTime
//
//  Created by Ross Freeman on 5/15/14.
//  Copyright (c) 2014 Ross Freeman. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        /*Bogus message for errors
        double testSeconds = [NSDate timeIntervalSince1970];
        NSDate *testNow = [now date];
        
        testSeconds = [now fooIntervalSince1970];
        
        testSeconds = [now timeintervalsince1970];
         */
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now];
        NSLog(@"This is day %lu of the month.", day);
        
        
    }
    return 0;
}

