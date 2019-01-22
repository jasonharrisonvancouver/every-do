//
//  ToDo.m
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo



- (instancetype)initWithTitle:(NSString *)title
                   andDetails:(NSString *)details
                  andPriority:(PriorityLevel)priorityLevel
                 andCompleted:(BOOL)completed{
    self = [super init];
    if (self != nil) {
        _title = title;
        _details = details;
        _priorityLevel = priorityLevel;
        _completed = completed;
    }
    return self;
}





@end
