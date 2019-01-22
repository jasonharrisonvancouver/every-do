//
//  ToDo.h
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDo : NSObject
/*

Create a Todo object which has the following properties: - title - todo description (note: a property cannot be named description, as that's already in use) - priority number - is completed indicator
 */

typedef enum toDoPriorityLevel
{
    URGENT,
    IMPORTANT,
    MODERATE,
    NO_RUSH
} PriorityLevel;

@property (nonatomic, strong, readwrite)NSString *title;
@property (nonatomic, strong, readwrite)NSString *details;
@property (nonatomic, readwrite)int priorityNumber;
@property PriorityLevel priorityLevel;
@property BOOL completed;

- (instancetype)initWithTitle:(NSString *)title
                   andDetails:(NSString *)details
                  andPriority:(PriorityLevel)priorityLevel
                 andCompleted:(BOOL)completed;

@end

NS_ASSUME_NONNULL_END
