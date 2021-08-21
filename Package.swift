// swift-tools-version:5.2

import PackageDescription

let package = Package(
  name: "combine-schedulers",
  products: [
    .library(
      name: "CombineSchedulers",
      targets: ["CombineSchedulers"]
    )
  ],
  dependencies: [
    .package(
			name: "xctest-dynamic-overlay",
			url: "https://github.com/pointfreeco/xctest-dynamic-overlay",
			.branch("0.1.0")
		)
  ],
  targets: [
    .target(
      name: "CombineSchedulers",
      dependencies: [
				.product(
					name: "XCTestDynamicOverlay",
					package: "xctest-dynamic-overlay"
				),
      ]
    ),
    .testTarget(
      name: "CombineSchedulersTests",
      dependencies: [
        "CombineSchedulers"
      ]
    ),
  ]
)
