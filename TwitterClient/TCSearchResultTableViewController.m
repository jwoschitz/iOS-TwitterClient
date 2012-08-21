//
//  TCSearchResultTableViewController.m
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/18/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import "TCSearchResultTableViewController.h"
#import "TCTweet.h"
#import "TCSearchResultDetailViewController.h"

@interface TCSearchResultTableViewController ()

@end

@implementation TCSearchResultTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        _model = [[TCTweetModel alloc] init];
    }
    return self;
}

- (void)modelDidLoadData
{
    [self.tableView reloadData];
} 

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView setDataSource: _model];
    [_model loadDataWithDelegate: self];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TCTweet *tweet = [_model.tweets objectAtIndex:indexPath.row];
    NSLog(@"%@", tweet.text);
    
    if (!_detailViewController) {
        _detailViewController = [[TCSearchResultDetailViewController alloc] initWithNibName:@"TCSearchResultDetailViewController" bundle:[NSBundle mainBundle]];        
    }
    
    _detailViewController.tweet = tweet;
      
    [self.view addSubview:_detailViewController.view];
}

@end
