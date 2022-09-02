//
//  Framework.swift
//  AppleFrameworks
//
//  Created by Bern N on 8/18/22.
//

import Foundation

struct Framework: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}

struct MockData {
    static let frameworkNotFound = Framework(
        name: "Framework Not Found",
        imageName: "no-image",
        urlString: "www.apple.com/notfound",
        description: "Oops, looks like something went wrong and we couldn't get any details on the framework.\n\nPlease try again later or contact support."
    )
    
    static let frameworks = [
        Framework(
            name: "App Clips",
            imageName: "app-clip",
            urlString: "https://developer.apple.com/app-clips",
            description: "App Clips are a great way for users to quickly access and experience what your app has to offer. An App Clip is a small part of your app that’s discoverable at the moment it’s needed and lets people complete a quick task from your app — even before installing your full app.\n\nWhether ordering take-out from a restaurant, renting a scooter, or setting up a new connected appliance for the first time, people can launch the App Clip to easily start and finish the task. And once the task is done, you can offer the opportunity to download your full app from the App Store."
        ),
        
        Framework(
            name: "ARKit",
            imageName: "arkit",
            urlString: "https://developer.apple.com/augmented-reality/arkit",
            description: "ARKit 6 introduces 4K video, so you can capture stunning high-resolution videos of AR experiences — perfect for professional video editing, film production, social media apps, and more.\n\nVideo and capture capabilities are expanded with support for HDR video and high-resolution background image capture. ARKit 6 also brings Location Anchors to new cities, such as Montreal, Sydney, Singapore, and Tokyo, and it features improvements to Motion Capture."
        ),
        
        Framework(
            name: "CarPlay",
            imageName: "carplay",
            urlString: "https://developer.apple.com/carplay",
            description: "A smarter, safer way to use your iPhone in the car, CarPlay takes the things you want to do with your iPhone while driving and puts them on your car’s built-in display.\n\nYou can get directions, make calls, send and receive messages, and listen to music, all while staying focused on the road."
        ),
        
        Framework(
            name: "Catalyst",
            imageName: "catalyst",
            urlString: "https://developer.apple.com/mac-catalyst",
            description: "Native Mac apps built with Mac Catalyst can share code with your iPad apps, and you can add more features just for Mac. The latest desktop-class features in iPadOS 16 translate beautifully onto macOS 13.\n\nYour Mac app’s toolbars are automatically optimized and document-based apps gain key features, such as menu items and the ability to rename the document in the toolbar. And you can use new Mac Catalyst APIs to enhance multiwindow behaviors, add custom views to your toolbars, and more."
        ),

        Framework(
            name: "ClassKit",
            imageName: "classkit",
            urlString: "https://developer.apple.com/classkit",
            description: "The many great learning apps available in the App Store are an integral part of the teaching and learning experience in schools. By adopting ClassKit, your app will work with Schoolwork, a powerful iPad app for teachers and students to help keep track of assignments and student progress.\n\nYou can help teachers discover assignable activities in your app, take students directly to the right activity with a single tap, and securely and privately share progress data with teachers to help them personalize instruction."
        ),
        
        Framework(
            name: "CloudKit",
            imageName: "cloudkit",
            urlString: "https://developer.apple.com/icloud/cloudkit",
            description: "Store your app’s data in iCloud and keep everything up-to-date across devices and on the web. Featuring efficient syncing, as well as simple monitoring and management, it’s never been easier to build and grow your apps with CloudKit.\n\nStore private data securely in your users’ iCloud accounts for limitless scale as your user base grows, and get up to 1PB of storage for your app’s public data."
        ),
        
        Framework(
            name: "Core ML",
            imageName: "coreml",
            urlString: "https://developer.apple.com/machine-learning",
            description: "Create intelligent features and enable new experiences for your apps by leveraging powerful on-device machine learning. Learn how to build, train, and deploy machine learning models into your iPhone, iPad, Apple Watch, and Mac apps.\n\nCore ML is optimized for on-device performance of a broad variety of model types by leveraging Apple hardware and minimizing memory footprint and power consumption."
        ),
        
        Framework(
            name: "HealthKit",
            imageName: "healthkit",
            urlString: "https://developer.apple.com/health-fitness",
            description: "Integrate HealthKit into your health and fitness apps for iOS and watchOS to create a more seamless user experience.\n\nWhen a customer provides permission for your app to read and write health and activity data to their Health app, your app becomes a valuable data source and can deliver deeply informed health and fitness solutions."
        ),
        
        Framework(
            name: "MapKit",
            imageName: "mapkit",
            urlString: "https://developer.apple.com/maps",
            description: "Apple Maps is the best way to navigate and explore the world. MapKit lets you bring the world’s most detailed city experiences from Apple Maps to your apps and websites, all with a focus on privacy. And you can use the new Maps Server API to create more functional experiences across platforms.\n\nUse MapKit to give your apps a sense of place. Load Apple Maps directly into app windows and views, add annotations and overlays to call out points of interest, and offer text-completion to make it easier for people to search for a destination."
        ),
        
        Framework(
            name: "Metal",
            imageName: "metal",
            urlString: "https://developer.apple.com/metal",
            description: "Metal powers hardware-accelerated graphics on Apple platforms by providing a low-overhead API, rich shading language, tight integration between graphics and compute, and an unparalleled suite of GPU profiling and debugging tools.\n\nMetal 3 introduces powerful features that help your games and pro apps tap into the full potential of Apple silicon. Now you can render high-resolution graphics in less time, load resources faster, train machine learning networks with the GPU, and more."
        ),
        
        Framework(
            name: "Passkeys",
            imageName: "passkeys",
            urlString: "https://developer.apple.com/passkeys",
            description: "Based on industry standards for account authentication, passkeys are easier to use than passwords and far more secure.\n\nAdopt passkeys to give people a simple, secure way to sign in to your apps and websites across platforms — with no passwords required."
        ),
        
        Framework(
            name: "SF Symbols",
            imageName: "sf-symbols",
            urlString: "https://developer.apple.com/sf-symbols",
            description: "With over 4,000 symbols, SF Symbols is a library of iconography designed to integrate seamlessly with San Francisco, the system font for Apple platforms.\n\nSymbols come in nine weights and three scales, and automatically align with text labels. They can be exported and edited using vector graphics editing tools to create custom symbols with shared design characteristics and accessibility features.\n\nSF Symbols 4 features over 700 new symbols, variable color, automatic rendering, and new unified layer annotation."
        ),
        
        Framework(
            name: "SiriKit",
            imageName: "sirikit",
            urlString: "https://developer.apple.com/siri",
            description: "Siri is the world’s most popular intelligent assistant. With App Intents and SiriKit, your apps can help people get things done with Siri, Spotlight, and Shortcuts.\n\nApps adopt SiriKit by building an extension that communicates with Siri, even when your app isn’t running. The extension registers with specific domains and intents that it can handle. Siri handles all of the interaction, including the voice and natural language recognition, and works with your extension to get information and handle requests."
        ),
        
        Framework(
            name: "SpriteKit",
            imageName: "spritekit",
            urlString: "https://developer.apple.com/spritekit",
            description: "The SpriteKit framework makes it easy to create high-performance, battery-efficient 2D games.\n\nWith support for custom OpenGL ES shaders and lighting, integration with SceneKit, and advanced new physics effects and animations, you can add force fields, detect collisions, and generate new lighting effects in your games."
        ),
        
        Framework(
            name: "StoreKit",
            imageName: "storekit",
            urlString: "https://developer.apple.com/storekit",
            description: "StoreKit provides a simple and secure way to purchase digital goods or services in your apps across all Apple platforms, so people can start playing, gaming, reading, and more, right away.\n\nStoreKit 2 uses modern Swift-based APIs that make it easy to deliver great in-app purchase experiences."
        ),
        
        Framework(
            name: "SwiftUI",
            imageName: "swiftui",
            urlString: "https://developer.apple.com/xcode/swiftui",
            description: "SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code. You can bring even better experiences to everyone, on any Apple device, using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written."
        ),
        
        Framework(
            name: "TestFlight",
            imageName: "test-flight",
            urlString: "https://developer.apple.com/testflight",
            description: "TestFlight makes it easy to invite users to test your apps and App Clips and collect valuable feedback before releasing your apps on the App Store.\n\nYou can invite up to 10,000 testers using just their email address or by sharing a public link."
        ),
        
        Framework(
            name: "Wallet",
            imageName: "wallet",
            urlString: "https://developer.apple.com/wallet/get-started",
            description: "The Wallet app on iPhone, iPod touch, and Apple Watch allows users to easily manage payment cards, boarding passes, tickets, gift cards, and other passes.\n\nWallet is time and location enabled, so passes can be configured to display on the user’s device at the appropriate moment, like when the user reaches the airport or walks into a store.\n\nPasses can also be updated with push notifications so, if details change, you can notify the user and they can simply tap the notification to view the updated pass."
        ),
        
        Framework(
            name: "WeatherKit",
            imageName: "weatherkit",
            urlString: "https://developer.apple.com/weatherkit",
            description: "WeatherKit brings valuable weather information to your apps and services through a wide range of data that can help people stay up to date, safe, and prepared.\n\nIt’s easy to use WeatherKit in your apps for iOS 16, iPadOS 16, macOS 13, tvOS 16, and watchOS 9 with a platform-specific Swift API, and on any other platform with a REST API."
        ),
        
        Framework(
            name: "WidgetKit",
            imageName: "widgetkit",
            urlString: "https://developer.apple.com/widgets",
            description: "Easily build widgets and make them available across iOS, iPadOS, and macOS using the WidgetKit framework and the new widget API for SwiftUI.\n\nWidgets now come in multiple sizes, and users can visit the new widget gallery to search, preview sizes, and place them anywhere on the Home screen in iOS and iPadOS, or in the macOS Notification Center, to access important details at a glance.\n\nIn iOS and iPadOS, they can also add Smart Stacks — sets of widgets that use on-device intelligence to surface the right widget at the right moment based on factors like time, location, and activity."
        )
    ]
}
