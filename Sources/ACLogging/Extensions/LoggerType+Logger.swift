//
//  Copyright © 2023 alexanderpuchta.de -  All rights reserved.
//

import OSLog

// MARK: - LoggerType + Logger

extension LoggerType {
    
    var logger: Logger {
        switch self {
        case .information:
            Logger.information
            
        case .statistic:
            Logger.statistic
            
        case .view:
            Logger.views
        }
    }
}
