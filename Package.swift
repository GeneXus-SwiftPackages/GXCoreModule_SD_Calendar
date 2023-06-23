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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.0.0-beta.20230623154354"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.0.0-beta.20230623154354")
	],
	targets: [
		.target(name: "GXCoreModule_SD_CalendarWrapper",
				dependencies: [
					"GXCoreModule_SD_Calendar",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS])),
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Calendar",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Calendar-1.0.0-beta.20230623154354.xcframework.zip",
			checksum: "21bc296c06c582e2f5666544175f6d11b1e36b1a012420c552889e8635c07bea"
		)
	]
)