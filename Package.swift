// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Calendar",
	platforms: [.iOS("12.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Calendar",
			targets: ["GXCoreModule_SD_CalendarWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.0.0-beta.32")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Calendar-2.0.0-beta.32.xcframework.zip",
			checksum: "adc129c8ec69799597fbb33e18f2e520e000fa636b26d7fb474a213769682e1b"
		)
	]
)