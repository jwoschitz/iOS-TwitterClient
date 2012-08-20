//
//  TCSearchResultTableViewController.h
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/18/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCTweetModel.h"

@interface TCSearchResultTableViewController : UITableViewController {
    
    TCTweetModel *_model;
}

@end
