//
//  Copyright © 2023 alexanderpuchta.de -  All rights reserved.
//

import OSLog


// MARK: - Logger + Init

extension Logger {
    
    init(system: String, type: LoggerType) {
        self.init(subsystem: system, category: type.rawValue)
    }
}


// MARK: - Logger + Types

extension Logger {
    
    private static var identifier: String {
        Bundle.main.bundleIdentifier ?? "ACLOG.OSLOG"
    }
    
    static let information = Logger(system: Self.identifier, type: .information)
    static let statistic = Logger(system: Self.identifier, type: .statistic)
    static let views = Logger(system: Self.identifier, type: .view)
}
