//
//  ToDoTableViewCell.m
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ToDoTableViewCell.h"

@interface ToDoTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelDescription;
@property (weak, nonatomic) IBOutlet UILabel *labelPriority;

@end

@implementation ToDoTableViewCell

- (void)configureToDoCell:(ToDo *)toDoTask{
    self.labelTitle.text = toDoTask.title;
    self.labelDescription.text = toDoTask.details;
    
    
    switch(toDoTask.priorityLevel){
        case(URGENT):
            self.labelPriority.text = @"(Urgent)";
            break;
        case(IMPORTANT):
            self.labelPriority.text = @"(Important)";
            break;
        case(MODERATE):
            self.labelPriority.text = @"(Moderate)";
            break;
        case(NO_RUSH):
            self.labelPriority.text = @"(No Rush)";
            break;
        default:
            // ???
            break;
    }
    
}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
}

@end
