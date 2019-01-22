//
//  SingleTaskViewController.m
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "SingleTaskViewController.h"

@interface SingleTaskViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelDescription;
@property (weak, nonatomic) IBOutlet UILabel *labelPriority;
@property (weak, nonatomic) IBOutlet UILabel *labelCompleted;

@end

@implementation SingleTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showDetailsForTask];
}





- (void)showDetailsForTask{//:(ToDo *)task{
    
    // from the segue
 //   self.task = task;
    
    NSLog(@"the title is %@", self.task.title);
    self.labelTitle.text = self.task.title;
    self.labelDescription.text = self.task.details;
   // self.labelPriority.text = task.priorityLevel;
    //self.labelCompleted.text = task.completed;
    
    
    switch(self.task.priorityLevel){
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
    
    
    if(self.task.completed == YES){
        self.labelCompleted.text = @"DONE";
    }else{
        self.labelCompleted.text = @"TBD";
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
