#import "RACTableViewDataSource.h"

#import <ReactiveCocoa/ReactiveCocoa.h>
#import <UIKit/UIKit.h>

@interface UITableViewController (RACTableViewDataSource)

- (id<UITableViewDataSource>)rac_dataSource:(RACSignal *)signal reuseIdentifier:(NSString *)reuseIdentifier;

@end
