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
            sources: [
                "Classes"
            ],
            resources: [
                .copy("Assets/recaptcha.html")
            ]
        ),
        
        .testTarget(
            name: "ReCaptchaTests",
            dependencies: ["ReCaptcha"],
            path: "tests"
        )
    ]
)
