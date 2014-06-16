#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "UITableViewDataSource-RACExtensions"
  s.version          = "0.1.4"
  s.summary          = "RACify your UITableViewDataSource"
  s.description      = %{
    UITableViewDataSource-RACExtensions adds a single method
    to UITableViewControllers called `rac_dataSource` and it
    requires a signal be passed to it.

    The signal that you pass to `rac_dataSource` is used to
    populate the UITableView.
  }
  s.homepage         = "https://github.com/michaelavila/UITableViewDataSource-RACExtensions"
  s.license          = 'MIT'
  s.author           = { "Michael Avila" => "me@michaelavila.com" }
  s.source           = { :git => "git@github.com:michaelavila/UITableViewDataSource-RACExtensions.git", :tag => s.version.to_s }

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Classes/**/*.{h,m}'

  s.dependency 'ReactiveCocoa', '~> 2.3.1'

  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
end
