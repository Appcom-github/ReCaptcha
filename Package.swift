// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "ReCaptcha",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "ReCaptcha", targets: ["ReCaptcha"])
    ],
    targets: [
        .target(name: "ReCaptcha",
            path: "ReCaptcha",
            exclude: [
                "Classes/Rx"
            ],
            sources: [
                "Classes"
            ],
            resources: [
                .copy("Assets")
            ]
        )
    ]
)
