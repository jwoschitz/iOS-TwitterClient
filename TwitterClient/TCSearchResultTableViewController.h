//
//  TCSearchResultTableViewController.h
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/18/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCTweetModel.h"
#import "TCTweetModelDelegate.h"
#import "TCSearchResultDetailViewController.h"

@interface TCSearchResultTableViewController : UITableViewController <TCTweetModelDelegate> {
    
    TCTweetModel *_model;
    TCSearchResultDetailViewController *_detailViewController;
}

@end
