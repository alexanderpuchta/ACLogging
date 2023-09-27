//
//  Copyright © 2023 alexanderpuchta.de -  All rights reserved.
//

import Foundation

extension ACLOG {
    
    func makeMessage(
        _ values: Any...,
        level: LoggerLevel,
        _ file: String,
        _ function: String,
        _ line: Int
    ) -> String {
        
        let header: String = [
            level.icon,
            file.prettyFileName(line: line),
            function
        ]
        .joined(separator: Constants.Separator.connector)
        
        let valuesAsArray: [Any] = values.map { $0 }
        return [
            header,
            valuesAsArray.prettyString
        ]
        .joined(separator: Constants.Separator.newLine)
    }
}


// MARK: - [Any] + String

private extension [Any] {
    
    var prettyString: String {
        self
            .map { "\(Constants.bulletPoint) \($0)" }
            .joined(separator: Constants.Separator.newLine)
    }
}


// MARK: - String + Pretty

private extension String {
    
    func prettyFileName(line: Int) -> String {
        [
            self.split(separator: Constants.Separator.slash)
                .last?
                .split(separator: Constants.Separator.dot)
                .first?
                .compactMap { "\($0)" }
                .joined() ?? Constants.placeholder,
            "(\(line))"
        ]
        .joined(separator: Constants.Separator.whiteSpace)
    }
}
