//
//  main.m
//  ComputerName
//
//  Created by Ross Freeman on 5/15/14.
//  Copyright (c) 2014 Ross Freeman. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *comp = [NSHost currentHost];
        NSString *name = [comp localizedName];
        NSLog(@"%@", name);
        
    }
    return 0;
}

