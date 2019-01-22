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

@interface NotesViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong, readwrite)NSMutableArray<ToDo *> *notes;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
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
@end
