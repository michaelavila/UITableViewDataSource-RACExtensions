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
            dispatch_async(dispatch_get_main_queue(), ^{
                [_tableView reloadData];
            });
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
