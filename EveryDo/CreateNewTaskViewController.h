//
//  CreateNewTaskViewController.h
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

NS_ASSUME_NONNULL_BEGIN


// step 1 of delegate
@protocol AddNewTaskDelegate <NSObject>



- (void)addNewTask:(ToDo *)newTask;

@end

@interface CreateNewTaskViewController : UIViewController


// step 2 of delegate
@property (weak, nonatomic) id<AddNewTaskDelegate> delegate;


@end

NS_ASSUME_NONNULL_END
