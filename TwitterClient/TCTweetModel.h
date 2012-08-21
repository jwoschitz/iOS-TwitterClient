//
//  TCSearchModel.h
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/20/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
#import "TCTweetModelDelegate.h"

@interface TCTweetModel : NSObject <UITableViewDataSource, RKObjectLoaderDelegate> {

    NSMutableArray*  _tweets;
    id <TCTweetModelDelegate> _delegate;
}

@property (nonatomic, readonly) NSMutableArray* tweets;

- (void) loadDataWithDelegate: (id) delegate;

@end
