// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeckOfPlayingCards",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "DeckOfPlayingCards",targets: ["DeckOfPlayingCards"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "PlayingCard",
                 url: "https://github.com/ankushmittal87/PlayingCards.git", from: "1.0.0"),
        .package(name: "FisherYates", url: "https://github.com/ankushmittal87/FisherYates.git", from: "1.0.0")
        
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DeckOfPlayingCards",
            dependencies: [ .byName(name: "PlayingCard"),.byName(name: "FisherYates")]),
        .testTarget(
            name: "DeckOfPlayingCardsTests",
            dependencies: ["DeckOfPlayingCards"]),
    ]
)
