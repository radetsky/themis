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
                      url: "https://github.com/radetsky/themis/releases/download/0.15.3/themis.xcframework.zip",
                      // The scripts/create_xcframework.sh calculates the checksum when generating the XCF.
                      // Alternatively, run from package directory:
                      // swift package compute-checksum build/xcf_output/themis.xcframework.zip
                      checksum: "93eeb67a79fc539e7d40f49426c808fe0f13a309e6b98113c2be3b0129d1adaf"),

    ]
)
