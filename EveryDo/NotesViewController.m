//
//  ViewController.m
//  EveryDo
//
//  Created by jason harrison on 2019-01-22.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "NotesViewController.h"
#import "Notebook.h"
#import "ToDoTableViewCell.h"
#import "SingleTaskViewController.h"
#import "CreateNewTaskViewController.h"

@interface NotesViewController ()<UITableViewDelegate, UITableViewDataSource, AddNewTaskDelegate>

@property (nonatomic, strong, readwrite)NSMutableArray<ToDo *> *notes;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
//@property (weak, nonatomic) IBOutlet UIBarButtonItem *createTaskBarButtonItem;

@end

@implementation NotesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    
    // Do any additional setup after loading the view, typically from a nib.
    Notebook *notebook = [[Notebook alloc] init];
    self.notes = [notebook getNotes];
}


// step 4 of delegate with CreateNewTaskViewController
- (void)addNewTask:(ToDo *)newTask{
    NSLog(@"delegate has added new task for %@", newTask.title);
    [self.notes addObject:newTask];
    [self.tableView reloadData];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ToDoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"importantNotesCell" forIndexPath:indexPath];
    
    
    [cell configureToDoCell:self.notes[indexPath.row]];
    
    
    
    return cell;
}




- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.notes count];
}
/*
 - (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
 <#code#>
 }
 
 - (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
 <#code#>
 }
 
 - (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
 <#code#>
 }
 
 - (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
 <#code#>
 }
 
 - (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
 <#code#>
 }
 
 - (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
 <#code#>
 }
 
 - (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
 <#code#>
 }
 
 - (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
 <#code#>
 }
 
 - (void)setNeedsFocusUpdate {
 <#code#>
 }
 
 - (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
 <#code#>
 }
 
 - (void)updateFocusIfNeeded {
 <#code#>
 }
 */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"viewTaskDetailsSegue" sender:indexPath];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(NSIndexPath *)sender{
    if ([[segue identifier] isEqualToString:@"viewTaskDetailsSegue"]){

        ToDo *task = self.notes[sender.row];
        SingleTaskViewController* sVC = [segue destinationViewController];
        sVC.task = task;
    }
    
    else if ([[segue identifier] isEqualToString:@"createNewTaskSegue"]){
        NSLog(@"creating new task via segue");
      
      //  ToDo *task = self.notes[sender.row];
        CreateNewTaskViewController* cVC = [segue destinationViewController];
       // sVC.task = task;
       // notify ME when the recipient of this segue is done
        cVC.delegate = self;
       
    }
}



-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath* )indexPath{
    return  YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath* )indexPath{
    [UIView animateWithDuration:2 animations:^{
        [self.notes removeObject:self.notes[indexPath.row]];
        
        [self.tableView reloadData];
    }];
    
}




@end
