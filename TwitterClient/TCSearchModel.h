//
//  TCSearchModel.h
//  TwitterClient
//
//  Created by Janosch Woschitz on 8/20/12.
//  Copyright (c) 2012 Janosch Woschitz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TCSearchModel : NSObject <UITableViewDataSource> {

    NSMutableArray*  _tweets;
}

@property (nonatomic, readonly) NSMutableArray* tweets;

@end
