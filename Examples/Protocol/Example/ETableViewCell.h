//
//  ETableViewCell.h
//  Example
//
//  Created by Michael Avila on 6/16/14.
//  Copyright (c) 2014 Michael Avila. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UITableViewDataSource-RACExtensions/RACTableViewCell.h>

@interface ETableViewCell : UITableViewCell <RACTableViewCell> {
    NSString *label;
}

@end
