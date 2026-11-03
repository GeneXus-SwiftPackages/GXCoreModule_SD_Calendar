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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "5.0.0")
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
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_SD_Calendar-5.0.0.xcframework.zip",
			checksum: "2750a1d32dfa3a3abbd97ca5a58011d1fc416f1ea62f74dbb37c22cdd163220a"
		)
	]
)