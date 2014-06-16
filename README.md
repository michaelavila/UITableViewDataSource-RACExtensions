# UITableViewDataSource-RACExtensions

[![Version](https://img.shields.io/cocoapods/v/UITableViewDataSource-RACExtensions.svg?style=flat)](http://cocoadocs.org/docsets/UITableViewDataSource-RACExtensions)
[![License](https://img.shields.io/cocoapods/l/UITableViewDataSource-RACExtensions.svg?style=flat)](http://cocoadocs.org/docsets/UITableViewDataSource-RACExtensions)
[![Platform](https://img.shields.io/cocoapods/p/UITableViewDataSource-RACExtensions.svg?style=flat)](http://cocoadocs.org/docsets/UITableViewDataSource-RACExtensions)

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

The primary difference between the Basic and Protocol examples are the use of
the RACTableViewCell protocol to render objects other than strings.

Both examples are very short and should be easy to digest. In particular, pay
attention to the `EAppDelegate.m` files in both projects. In the Protocol
project, it is important to notice both the additional class `ETableViewCell`
as well as setting that class on the prototype cell in `Main.storyboard`. Pay
attention to both.

## Requirements

## Installation

UITableViewDataSource-RACExtensions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "UITableViewDataSource-RACExtensions"

## Author

Michael Avila

## License

UITableViewDataSource-RACExtensions is available under the GPLv2 license. See the LICENSE file for more info.

