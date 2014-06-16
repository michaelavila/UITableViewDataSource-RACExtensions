//
//  ETableViewCell.m
//  Example
//
//  Created by Michael Avila on 6/16/14.
//  Copyright (c) 2014 Michael Avila. All rights reserved.
//

#import "ETableViewCell.h"

@implementation ETableViewCell

- (void)prepareToAppear:(NSObject *)data
{
    NSDictionary *item = (NSDictionary *)data;
    label = [NSString stringWithFormat:@"%@ - %@",
       [item valueForKeyPath:@"name"],
       [item valueForKeyPath:@"quantity"]
    ];
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    self.textLabel.text = label;
}

@end
