//
//  ErrorManager.swift
//  Wundermarktcoo
//
//  Created by Igor Kovryzhkin on 3/13/17.
//  Copyright © 2017 Igor Kovryzhkin. All rights reserved.
//

import Foundation

class ErrorManager {
    class func logError (_ error: Error, comment: String?) {
        print("Error (\(comment)): \(error.localizedDescription) \n \(Thread.callStackSymbols)")
    }
    
    class func logError (_ errorString: String) {
        print("Error: (\(errorString)): \n \(Thread.callStackSymbols)")
    }
}
