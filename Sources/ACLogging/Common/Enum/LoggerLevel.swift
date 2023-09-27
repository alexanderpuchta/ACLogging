//
//  Copyright © 2023 alexanderpuchta.de -  All rights reserved.
//

import Foundation

public enum LoggerLevel {
    
    case debug
    case error
    case info
    case verbose
    case warning
}


// MARK: - Properties

extension LoggerLevel {
    
    var icon: String {
        switch self {
        case .debug:
            "🚧"
            
        case .error:
            "🚨"
            
        case .info:
            "ℹ️"
            
        case .verbose:
            "📃"
            
        case .warning:
            "⚠️"
        }
    }
}
