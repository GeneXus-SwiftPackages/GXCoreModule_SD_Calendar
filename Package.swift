// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Calendar",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Calendar",
			targets: ["GXCoreModule_SD_CalendarWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.2.0-beta.11")
	],
	targets: [
		.target(name: "GXCoreModule_SD_CalendarWrapper",
				dependencies: [
					"GXCoreModule_SD_Calendar",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Calendar",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Calendar-1.2.0-beta.11.xcframework.zip",
			checksum: "7e23f2160ed1fc1afe27fbe3f9986587de67db464adb53e04d4d7c4fa8013835"
		)
	]
)