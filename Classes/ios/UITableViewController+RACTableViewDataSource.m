#import "RACTableViewDataSource.h"
#import "UITableViewController+RACTableViewDataSource.h"

@implementation UITableViewController (RACTableViewDataSource)

- (id<UITableViewDataSource>)rac_dataSource:(RACSignal *)signal reuseIdentifier:(NSString *)reuseIdentifier {
    return [RACTableViewDataSource
        dataSource:signal
        tableView:(UITableView *)self.view
        andReuseIdentifier:reuseIdentifier];
}

@end
