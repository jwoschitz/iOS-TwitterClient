//
//  TCTweet.h
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/18/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TCTweet : NSObject

@property (nonatomic, retain) NSNumber *tweetId;
@property (nonatomic, retain) NSDate *createdAt;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *fromUserName;
@property (nonatomic, copy) NSString *toUserName;
@property (nonatomic, copy) NSString *profileImageUrl;

@end
