//
//  TCTweetModelDelegate.h
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/21/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TCTweetModelDelegate <NSObject>

@optional
- (void)modelDidLoadData;

@end
