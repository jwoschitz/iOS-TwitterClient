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

- (void) loadDataWithDelegate: (id) delegate
{
    RKObjectManager *objectManager = [RKObjectManager sharedManager];
    objectManager.client.baseURL = [RKURL URLWithString:@"http://search.twitter.com"];
    _delegate = delegate;
    [objectManager loadObjectsAtResourcePath:@"/search.json?q=twitter&rpp=20" delegate:self];
}

#pragma mark RKObjectLoaderDelegate methods

- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response
{
    NSLog(@"Loaded payload: %@", [response bodyAsString]);
}

- (void)objectLoader:(RKObjectLoader *)objectLoader didLoadObjects:(NSArray *)objects
{
    NSLog(@"Loaded statuses: %@", objects);
    [_tweets removeAllObjects];
    [_tweets addObjectsFromArray:objects];
    [_delegate modelDidLoadData];
}

- (void)objectLoader:(RKObjectLoader *)objectLoader didFailWithError:(NSError *)error
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    NSLog(@"Hit error: %@", error);
}

#pragma mark UITableViewDelegate methods

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
    cell.textLabel.text = tweet.text;
    
    return cell;
}
@end
