// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "themis",
    products: [
        .library(
            name: "themis",
            targets: ["themis"]),
    ],
    // OpenSSL XCF is statically linked to Themis XCF, so no need to have it as a dependency
    dependencies: [],
    targets: [
        .binaryTarget(name: "themis",
                      // update version in URL path
                      url: "https://github.com/radetsky/themis/releases/download/0.15.4/themis.xcframework.zip",
                      // The scripts/create_xcframework.sh calculates the checksum when generating the XCF.
                      // Alternatively, run from package directory:
                      // swift package compute-checksum build/xcf_output/themis.xcframework.zip
                      checksum: "9a437c2dd9394841ef29a59db033aa811df1f0b7bdff5e64265a1d1f01230f17"),

    ]
)
