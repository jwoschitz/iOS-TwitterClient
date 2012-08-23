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
@synthesize userImage = _userImage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) updateView {
    NSData *imageData =  [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:self.tweet.profileImageUrl]];
    self.userImage.image = [[UIImage alloc] initWithData:imageData];
    self.tweetLabel.text = self.tweet.text;
    [self.tweetLabel sizeToFit];
}

- (void) setTweet:(TCTweet *)tweet {
    _tweet = tweet;
    [self updateView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self updateView];
}

- (void)viewDidUnload
{
    [self setTweetLabel:nil];
    [self setUserImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
