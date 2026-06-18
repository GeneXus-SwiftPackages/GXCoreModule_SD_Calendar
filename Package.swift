// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Calendar",
	platforms: [.iOS("15.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Calendar",
			targets: ["GXCoreModule_SD_CalendarWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.2.0-beta.22")
	],
	targets: [
		.target(name: "GXCoreModule_SD_CalendarWrapper",
				dependencies: [
					"GXCoreModule_SD_Calendar",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Calendar",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Calendar-4.2.0-beta.22.xcframework.zip",
			checksum: "dc92ff396bf8f4b20bbdb8effc636016d7537b02f23ee91eb71f23a8a42feeef"
		)
	]
)