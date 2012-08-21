//
//  TCSearchResultDetailViewController.m
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/21/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import "TCSearchResultDetailViewController.h"

@interface TCSearchResultDetailViewController ()

@end

@implementation TCSearchResultDetailViewController

@synthesize tweet = _tweet;
@synthesize tweetLabel = _tweetLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.tweetLabel.text = self.tweet.text;
}

- (void)viewDidUnload
{
    [self setTweetLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
