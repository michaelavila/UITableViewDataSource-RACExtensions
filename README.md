# UITableViewDataSource-RACExtensions

[![Version](https://img.shields.io/cocoapods/v/UITableViewDataSource-RACExtensions.svg?style=flat)](http://cocoadocs.org/docsets/UITableViewDataSource-RACExtensions)

## Usage

To run the example projects:

0. `hub clone michaelavila/UITableViewDataSource-RACExtensions`, if you haven't already
0. `cd UITableViewDataSource-RACExtensions`
0. either `cd Examples/Basic` or `cd Examples/Custom`
  0. Basic: Uses basic UITableCell + NSString
  0. Protocol: Uses RACTableCell protocol `prepareToAppear`
0. `bundle install`, if you don't have bundler than first run `gem install bundler`
0. `bundle exec pod install`
0. `open Example.xcworkspace`

The primary difference between the Basic and Protocol examples is the use of
the RACTableViewCell protocol to render objects other than strings.

Both examples are very short and should be easy to digest. In particular, pay
attention to the `EAppDelegate.m` files in both projects. In the Protocol
project, it is important to notice both the additional `ETableViewCell` class
as well as setting that class on the prototype cell in `Main.storyboard`. Pay
attention to both.

### UITableViewController+RACExtensions

If you `#import <UITableViewDataSource-RACExtensions/UITableViewController+RACTableViewDataSource.h>` then all UITableViewControllers will have a `rac_dataSource` method. This is what the signature for dataSource looks like:

    - (id<UITableViewDataSource>)rac_dataSource:(RACSignal *)signal reuseIdentifier:(NSString *)reuseIdentifier;

The events that `signal` emits will be bound as the data for the UITableView. The `reuseIdentifier` is
specified on the UITableViewCell that you want to create new cell views out of.

### RACTableViewCell

This protocol defines one simple method:

    - (void)prepareToAppear:(NSObject *)data;

This is the method that the RACTableViewDataSource uses to give each cell its data.

## Installation

UITableViewDataSource-RACExtensions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "UITableViewDataSource-RACExtensions"

## Author

Michael Avila

## Acknowledgments

[Colen Eberhardt's](https://twitter.com/ColinEberhardt) notes [here](http://www.scottlogic.com/blog/2014/05/11/reactivecocoa-tableview-binding.html) were an influence.

## License

UITableViewDataSource-RACExtensions is available under the MIT license. See the LICENSE file for more info.

