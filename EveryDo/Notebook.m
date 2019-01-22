//
//  Notebook.m
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Notebook.h"

@implementation Notebook


- (NSMutableArray<ToDo *>*)getNotes{
    NSMutableArray<ToDo *> *notes;
    
    ToDo *todo1 = [[ToDo alloc] initWithTitle:@"Buy oranges" andDetails:@"Buy those mandarin oranges that Rachel loves" andPriority:MODERATE andCompleted:NO];
    
    //NSLog(@"?????????????????????????????%@", todo1.title);
    
    ToDo *todo2 = [[ToDo alloc] initWithTitle:@"Email Jean" andDetails:@"Book off summer vacation dates from PTS" andPriority:URGENT andCompleted:NO];
    ToDo *todo3 = [[ToDo alloc] initWithTitle:@"Call Cassandra" andDetails:@"Talk about setting up a house fund to buy a new house in five years" andPriority:URGENT andCompleted:NO];
    ToDo *todo4 = [[ToDo alloc] initWithTitle:@"Book off spring break" andDetails:@"Make sure that spring break is booked off for Disneyland" andPriority:URGENT andCompleted:YES];
    ToDo *todo5 = [[ToDo alloc] initWithTitle:@"Book snowboarding" andDetails:@"Organize skiing and snowboarding lessons for the kids" andPriority:NO_RUSH andCompleted:NO];
    ToDo *todo6 = [[ToDo alloc] initWithTitle:@"Talk with Aaron" andDetails:@"Make a decision about program head as soon as possible; talk with D'Arcy first though" andPriority:IMPORTANT andCompleted:NO];
    ToDo *todo7 = [[ToDo alloc] initWithTitle:@"Buy MacBook Pro" andDetails:@"Get MBP for lighthouse labs homework" andPriority:MODERATE andCompleted:YES];
    ToDo *todo8 = [[ToDo alloc] initWithTitle:@"Notebooks: $store" andDetails:@"All three of us need new notebooks for drawing and for school work" andPriority:IMPORTANT andCompleted:NO];
    ToDo *todo9 = [[ToDo alloc] initWithTitle:@"Catch up homework" andDetails:@"complete all lighthouse-labs homework; at the latest do this in week five." andPriority:URGENT andCompleted:NO];
    ToDo *todo10 = [[ToDo alloc] initWithTitle:@"parent-teacher" andDetails:@"Organize parent-teacher interviews for Jaden and Rachel" andPriority:MODERATE andCompleted:YES];
    ToDo *todo11 = [[ToDo alloc] initWithTitle:@"pushups" andDetails:@"Do 101 pushups tonight and consider a skipping rope routine too" andPriority:MODERATE andCompleted:NO];
    ToDo *todo12 = [[ToDo alloc] initWithTitle:@"download music" andDetails:@"organize music and get more Pink Floyd albums onto iphone" andPriority:NO_RUSH andCompleted:NO];
    ToDo *todo13 = [[ToDo alloc] initWithTitle:@"GoT: move to USB" andDetails:@"Game of Thrones is downloaded; make sure it's moved onto USB so we can start rewatching it" andPriority:MODERATE andCompleted:NO];
    ToDo *todo14 = [[ToDo alloc] initWithTitle:@"Look into jiujitsu" andDetails:@"Look into ju jitsu classes for me and for jaden too" andPriority:MODERATE andCompleted:NO];
    ToDo *todo15 = [[ToDo alloc] initWithTitle:@"Buy apples" andDetails:@"Buy those apples that Rachel loves" andPriority:IMPORTANT andCompleted:YES];
    ToDo *todo16 = [[ToDo alloc] initWithTitle:@"summer trips" andDetails:@"talk with angela about dates; also, would rachel want to do the alaska bike ride?" andPriority:IMPORTANT andCompleted:YES];
    ToDo *todo17 = [[ToDo alloc] initWithTitle:@"Art classes?" andDetails:@"look into denecroft art classes for me, or at least make time to do more drawing and maybe even painting" andPriority:NO_RUSH andCompleted:NO];
    ToDo *todo18 = [[ToDo alloc] initWithTitle:@"Email Sandy" andDetails:@"about jaden" andPriority:NO_RUSH andCompleted:NO];
    ToDo *todo19 = [[ToDo alloc] initWithTitle:@"justin" andDetails:@"ask how the girls are doing etc...." andPriority:URGENT andCompleted:NO];
    notes = [[NSMutableArray<ToDo *> alloc] init];
    
    [notes addObject:todo1];
    [notes addObject:todo2];
    [notes addObject:todo3];
    [notes addObject:todo4];
    [notes addObject:todo5];
    [notes addObject:todo6];
    [notes addObject:todo7];
    [notes addObject:todo8];
    [notes addObject:todo9];
    [notes addObject:todo10];
    [notes addObject:todo11];
    [notes addObject:todo12];
    [notes addObject:todo13];
    [notes addObject:todo14];
    [notes addObject:todo15];
    [notes addObject:todo16];
    [notes addObject:todo17];
    [notes addObject:todo18];
    [notes addObject:todo19];
    
   // NSLog(@"note is %@", notes[0].title);
                                     
    return notes;
}


@end
