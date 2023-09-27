
# ACLog
## _Pretty printed logs_


[![xcode-version](https://img.shields.io/badge/Xcode-15.0-blue)](https://developer.apple.com/xcode/)
[![swift-version](https://img.shields.io/badge/Swift-5.9-orange.svg)](https://github.com/apple/swift)
[![](https://img.shields.io/badge/Dependency_Management-SPM-blue.svg)](https://www.swift.org/package-manager/)

## Installation

You can add **ACLog** via **SPM** to your project.

```swift
dependencies: [
    .package(
        url: "https://github.com/alexanderpuchta/ACLogging", 
        .upToNextMajor(from: "0.0.1")
    )
]
```

## Usage

To get rid of `import ACLogging` at every file you should create a `ACLogging+Configuration.swift` and setup a global logger instance for yourself.

```swift

// MARK: - ACLogging+Configuration

import ACLogging

let LOGGER = ACLogging.ACLOG.item


// MARK: - ExampleClass

final class ExampleClass {


    // MARK: - Init

    init() {
        LOGGER.D()
        // 🚧 - ExampleClass (7) - init()
    }
}
```


## Upcoming

- Usage for SwiftUI Views
- Usage for Tracking information