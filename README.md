<p align="center">
    <img src="./AppleFrameworks/Assets.xcassets/AppIcon.appiconset/mac512.png" alt="Apple Frameworks app icon" width="300" maxHeight="171" />
</p>

<h3 align="center"> Frameworks</h3>

<p align="center">
    <img src="https://img.shields.io/badge/iOS-15.0+-blue.svg" />
    <img src="https://img.shields.io/badge/Swift-5.5-orange.svg" />
    <a href="https://twitter.com/bernnystrom">
        <img src="https://img.shields.io/badge/Contact-@bernnystrom-lightgrey.svg?style=flat" alt="Twitter: @bernnystrom" />
    </a>
</p>

  ***Note**: The app icon above should only be used for development purposes only, not for submission to the App Store due to the license on SF Symbols and Emoji.*

 <hr />

Apple Frameworks is an informational app designed to provide software developers building applications on Apple platforms with the discovery of Apple's range of SDKs and hopefully, inspire developers with new project ideas for their next app.

At its core, the app is mostly informational. Each framework comes with a details page that contains a brief overview of its description, along with a button that users can tap on that will direct them to the framework's homepage on Apple's official website to learn more about the framework in-depth.

For user features, the app contains a dual layout option; **Grid** & **List** - users can switch in-between these two layouts in-app.

#### - Key features & technologies

* MVVM Architecture
* iOS 15+ button system w/ SF Symbols
* Dual layout options with `TabView` - *users can switch freely between a Grid or List layout*
* UIKit integration of `SFSafariViewController` - *this was refactored to use SwiftUI's built-in `Link`*

#### - More info on UIKit's `SFSafariViewController` to SwiftUI's native `Link`

Since the release of iOS 14, developers are able to make use of SwiftUI's native `Link` view for implementing URL link redirection, such as tapping on a button in their app and automatically switching over to Safari to open the link. However, it's important to note that the behaviour of how Safari opens the URL link between UIKit's `SFSafariViewController` and SwiftUI's native `Link` are different.

With UIKit's `SFSafariViewController`, Safari will open the URL link by displaying an in-app browser without leaving the app itself. In most cases, if you want users to briefly access a website without leaving your app, for example redirecting them to a page where they need login into their account with option to use a third-party authentication provider like Google, then this is mostly fine. However, if you intent to displaying an exact replica of a Safari browser along with all its functionality like the app itself, this is actually discouraged.

According to Apple's [recommendation in the iOS Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/components/content/web-views/):
> Avoid using a web view to build a web browser. Using a web view to let people briefly access a website without leaving the context of your app is fine, but Safari is the primary way people browse the web. Attempting to replicate the functionality of Safari in your app is unnecessary and discouraged.

<br />

There isn't a lot of explanation as to why Apple doesn't recommend the above practices, but here are the reasons why I decided to make the switch to using SwiftUI's native `Link`:
* With the upcoming release of iOS 16, I decided this switch make sense as all apps deployment should at least support two versions lower than the latest public release version. This brings us to iOS 14 being the version that's backwards-compatible and `Link` is available with SwiftUI apps deployed from version iOS 14+. Although this reasoning is a moot point since the deployment target is set to iOS 15+, keep in mind that one of the core purpose of this project is to simulate an iOS app development in a professional environment, such as developing a public-facing/ commerical app for a company.
<br />

* As the nature of this app being informational, using SwiftUI's `Link` in this context is more suited to the purpose of this app, as opening the URL link of the framework homepage in the Safari app itself allow users to make use of the full functionality of the Safari browser, such as bookmarking the framework's homepage, diving deeper into the framework's documentation, keeping multiple framework browser tabs opened, etc. All these are not possible with the previous UIKit integration of `SFSafariViewController`.

<!-- ## Source code comparison
##### - With UIKit's integration of `SFSafariViewController`:
```
import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) { }
}
```
```
import SwiftUI

struct FrameworkDetailGridView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack { 
            ... 
        }
        .fullScreenCover(isPresented: $viewModel.isShowingSafariView) {
            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com/notfound")!)
                .ignoresSafeArea()
        }
    }
}
```
<br />
##### - With SwiftUI's native `Link`:
```
import SwiftUI

struct FrameworkDetailGridView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack { 
            ...

            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com/notfound")!) {
                Label("Learn More", systemImage: "book.fill")
            }
        }
    }
}
``` -->

## App preview

<p>
    <img src="https://user-images.githubusercontent.com/65307853/185733317-b26973bb-0e24-478c-92d4-ffcdfd5d72d4.png" alt="Apple Frameworks Grid layout" width="250">
    <img src="https://user-images.githubusercontent.com/65307853/185733372-4491f0e8-df33-4311-a76e-cfbdab742536.png" alt="Apple Frameworks List layout" width="250">
    <img src="https://user-images.githubusercontent.com/65307853/185734073-8dcd0195-03a6-4322-bc77-e0e44a06fc4f.png" alt="Apple Frameworks List layout Light Mode" width="250">
    <img src="https://user-images.githubusercontent.com/65307853/185733417-6aac2de0-4ea8-48dd-98e6-1fa400768d4e.png" alt="Apple Frameworks WeatherKit details screen" width="250">
    <img src="https://user-images.githubusercontent.com/65307853/185733450-7351b4d6-35ca-446a-a60a-7538e4532103.png" alt="Apple Frameworks MapKit details screen" width="250">
    <img src="https://user-images.githubusercontent.com/65307853/185734095-e6b00112-e24e-4e4a-ab87-da9ad177e381.png" alt="Apple Frameworks Passkeys details screen" width="250">
</p>

https://user-images.githubusercontent.com/65307853/188315726-1660b729-e9c2-4954-a5a7-88f064dee8dc.mp4

## Trying it yourself

Apple Frameworks is written using Xcode 13.2 and Swift 5.5 on the SwiftUI framework. To try it out, you can clone this project and build it immediately by opening `AppleFrameworks.xcodeproj`.

As far as I know the app feature is complete, but there are always the likelihood of errors popping up once in a while due to a number of reasons; code deprecation, breaking changes due to new SwiftUI version releases, etc. 

If you hit any problems, either building or running the app, please let me know.

## Important notes on usage

Keep in mind that the Apple Frameworks app is a project designed and built for my own personal education purposes and serves as a reference point for my future projects. This app project was to gain practical experience in building an app on the iOS platform with Swift & SwiftUI. The state of this app was never meant to be production-ready, published onto the App Store, or to be monetized in any way, shape, or form.

If you wish to do any of the above, you will have to make some changes to the app before submitting to the App Store for approval. Please keep in mind of any potential violation of third-party license, such as, but not limited to, the usage of SF Symbols in the app icon.

## Credits

Swift, the Swift logo, Xcode, Instruments, SF Symbols, Emoji, Cocoa Touch, iPhone, iPad, Safari, App Store, watchOS, tvOS, Mac and macOS are trademarks of Apple Inc., registered in the U.S. and other countries.

## License <a aria-label="Apple Frameworks is free to use" href="https://choosealicense.com/licenses/mit/" target="_blank"><img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-success.svg?style=flat-square&color=33CC12" target="_blank" /></a>

This project is licensed under the terms of the MIT license. For more information, please refer to the license [documentation](LICENSE).
