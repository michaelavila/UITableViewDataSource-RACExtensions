//
//  EAppDelegate.m
//  Example
//
//  Created by Michael Avila on 6/15/14.
//  Copyright (c) 2014 Michael Avila. All rights reserved.
//

#import "EAppDelegate.h"

#import <UITableViewDataSource-RACExtensions/UITableViewController+RACTableViewDataSource.h>

@implementation EAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [(UITableViewController *)self.window.rootViewController
        rac_dataSource:[RACSignal return:@[@"Bananas", @"Beer"]]
        reuseIdentifier:@"groceryListItemCell"];

    return YES;
}

@end
