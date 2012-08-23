//
//  TCSearchResultDetailViewController.h
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/21/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCTweet.h"

@interface TCSearchResultDetailViewController : UIViewController

@property (weak, nonatomic) TCTweet *tweet;
@property (weak, nonatomic) IBOutlet UILabel *tweetLabel;
@property (weak, nonatomic) IBOutlet UIImageView *userImage;

@end
