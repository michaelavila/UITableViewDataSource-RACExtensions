// RACTableViewDataSource.m
// Copyright (C) 2014 Michael Avila

// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License along
// with this program; if not, write to the Free Software Foundation, Inc.,
// 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

#import "RACTableViewCell.h"
#import "RACTableViewDataSource.h"

#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation RACTableViewDataSource

- (instancetype)initWithSource:(RACSignal *)source tableView:(UITableView *)tableView andReuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super init]) {
        _tableView = tableView;
        _reuseIdentifier = reuseIdentifier;
        _data = @[];
        
        RAC(self, data) = [[source ignore:nil] doNext:^(NSArray *data) {
            [_tableView reloadData];
        }];
        
        _tableView.dataSource = self;
    }
    return self;
}

+ (instancetype)dataSource:(RACSignal *)signal tableView:(UITableView *)tableView andReuseIdentifier:(NSString *)reuseIdentifier {
    return [[RACTableViewDataSource alloc] initWithSource:signal tableView:tableView andReuseIdentifier:reuseIdentifier];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:_reuseIdentifier];
    
    NSObject *data = self.data[indexPath.row];
    if ([cell conformsToProtocol:@protocol(RACTableViewCell) ]) {
        [(UITableViewCell<RACTableViewCell> *)cell prepareToAppear:data];
    } else if ([data isKindOfClass:[NSString class]]) {
        cell.textLabel.text = (NSString *)data;
    }

    return cell;
}

@end
