//
//  ToDoTableViewCell.h
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoTableViewCell : UITableViewCell
- (void)configureToDoCell:(ToDo *)toDoTask;
@end

NS_ASSUME_NONNULL_END
