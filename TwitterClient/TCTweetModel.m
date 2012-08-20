//
//  TCSearchModel.m
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/20/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import "TCTweetModel.h"
#import "TCTweet.h"

@implementation TCTweetModel

@synthesize tweets = _tweets;

- (id) init {
    if (self = [super init]) {
        _tweets = [[NSMutableArray alloc] init];
        TCTweet *tweet = [[TCTweet alloc] init];
        tweet.text = @"testing";
        [_tweets addObject: tweet]; 
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_tweets count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CELL_IDENTIFIER = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CELL_IDENTIFIER];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: CELL_IDENTIFIER];
    }
    
    TCTweet *tweet = [_tweets objectAtIndex:indexPath.row];
    [cell.textLabel setText:tweet.text];
    
    return cell;
}
@end
