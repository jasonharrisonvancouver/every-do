//
//  Notebook.h
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDo.h"


NS_ASSUME_NONNULL_BEGIN

@interface Notebook : NSObject


- (NSMutableArray<ToDo *>*)getNotes;

@end

NS_ASSUME_NONNULL_END
