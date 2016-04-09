//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)string {
    
    NSString *badge = @"";
    badge = [badge stringByAppendingFormat:@"Hello, my name is %@.", string];
    
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)array {
    
    NSMutableArray *speakers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *speaker = array[i];
        NSString *badge = [self badgeForSpeaker:speaker];
        [speakers addObject:badge];
    }
    
    return speakers;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)array {
    
    NSMutableArray *greetingsAndAssignments = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *speaker = array[i];
        NSString *greetingAndAssignment = @"";
        greetingAndAssignment = [greetingAndAssignment stringByAppendingFormat:@"Welcome, %@! You'll be in dressing room %u.", speaker, i + 1];
        [greetingsAndAssignments addObject:greetingAndAssignment];
    }
    
    return greetingsAndAssignments;
}

@end
