//
//  CreateNewTaskViewController.m
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "CreateNewTaskViewController.h"
#import "ToDo.h"


@interface CreateNewTaskViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFieldTitle;
@property (weak, nonatomic) IBOutlet UITextView *textViewDetails;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPriority;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCompleted;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation CreateNewTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.delegate = 
}


- (IBAction)saveButtonWasPressed:(UIButton *)sender {
    
    PriorityLevel priority = NO_RUSH;
    // step 3 of delegate
    if([[self.textViewDetails.text lowercaseString] isEqualToString:@"urgent"]){
        priority = URGENT;
    }else if([[self.textViewDetails.text lowercaseString] isEqualToString:@"important"]){
        priority = IMPORTANT;
    }else if([[self.textViewDetails.text lowercaseString] isEqualToString:@"moderate"]){
        priority = MODERATE;
    }
    
    BOOL completed = NO;
    if([[self.textFieldCompleted.text lowercaseString] isEqualToString:@"yes"]){
        completed = YES;
    }
    
    
    ToDo *newTask = [[ToDo alloc] initWithTitle:self.textFieldTitle.text andDetails:self.textViewDetails.text andPriority:priority andCompleted:completed];
    
    [self.delegate addNewTask:newTask];
    
    NSLog(@"saving new task!");
    
    // go back to whence you came
    [self.navigationController popViewControllerAnimated:YES];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/










- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

#pragma mark - keyboard movements
- (void)keyboardWillShow:(NSNotification *)notification
{
    CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    [UIView animateWithDuration:0.3 animations:^{
        CGRect f = self.view.frame;
        f.origin.y = -keyboardSize.height;
        self.view.frame = f;
    }];
}

-(void)keyboardWillHide:(NSNotification *)notification
{
    [UIView animateWithDuration:0.3 animations:^{
        CGRect f = self.view.frame;
        f.origin.y = 0.0f;
        self.view.frame = f;
    }];
}
@end
