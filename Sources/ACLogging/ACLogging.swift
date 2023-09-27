//
//  Copyright © 2023 alexanderpuchta.de -  All rights reserved.
//

import Foundation
import OSLog

public struct ACLOG {
    public static let item = ACLOG()
}

public extension ACLOG {
    
    /// 🚧 DEBUG Logging Message
    /// - Parameters:
    ///   - msg: items you would like to display within your console
    ///   - type: designated logger typ (f.e. information or view)
    ///   - fileName: representaing the file which is calling the logger
    ///   - functionName: representing the function which is calling the logger
    ///   - line: representing the line which is calling the logger
    func D(
        _ msg: Any...,
        type: LoggerType = .information,
        _ fileName: String = #file,
        _ functionName: String = #function,
        _ line: Int = #line
    ) {
        type.logger.debug("\(self.makeMessage(msg, level: .debug, fileName, functionName, line))")
    }
    
    /// 🚨 ERROR Logging Message (red)
    /// - Parameters:
    ///   - msg: items you would like to display within your console
    ///   - type: designated logger typ (f.e. information or view)
    ///   - fileName: representaing the file which is calling the logger
    ///   - functionName: representing the function which is calling the logger
    ///   - line: representing the line which is calling the logger
    func E(
        _ msg: Any...,
        type: LoggerType = .information,
        _ fileName: String = #file,
        _ functionName: String = #function,
        _ line: Int = #line
    ) {
        type.logger.fault("\(self.makeMessage(msg, level: .error, fileName, functionName, line))")
    }
    
    /// ℹ️ INFORMATION Logging Message
    /// - Parameters:
    ///   - msg: items you would like to display within your console
    ///   - type: designated logger typ (f.e. information or view)
    ///   - fileName: representaing the file which is calling the logger
    ///   - functionName: representing the function which is calling the logger
    ///   - line: representing the line which is calling the logger
    func I(
        _ msg: Any...,
        type: LoggerType = .information,
        _ fileName: String = #file,
        _ functionName: String = #function,
        _ line: Int = #line
    ) {
        type.logger.info("\(self.makeMessage(msg, level: .info, fileName, functionName, line))")
    }
    
    /// 📃 VERBOSE Logging Message
    /// - Parameters:
    ///   - msg: items you would like to display within your console
    ///   - type: designated logger typ (f.e. information or view)
    ///   - fileName: representaing the file which is calling the logger
    ///   - functionName: representing the function which is calling the logger
    ///   - line: representing the line which is calling the logger
    func V(
        _ msg: Any...,
        type: LoggerType = .information,
        _ fileName: String = #file,
        _ functionName: String = #function,
        _ line: Int = #line
    ) {
        type.logger.notice("\(self.makeMessage(msg, level: .verbose, fileName, functionName, line))")
    }
    
    /// ⚠️ WARNING Logging Message (yellow)
    /// - Parameters:
    ///   - msg: items you would like to display within your console
    ///   - type: designated logger typ (f.e. information or view)
    ///   - fileName: representaing the file which is calling the logger
    ///   - functionName: representing the function which is calling the logger
    ///   - line: representing the line which is calling the logger
    func W(
        _ msg: Any...,
        type: LoggerType = .information,
        _ fileName: String = #file,
        _ functionName: String = #function,
        _ line: Int = #line
    ) {
        type.logger.warning("\(self.makeMessage(msg, level: .warning, fileName, functionName, line))")
    }
}
