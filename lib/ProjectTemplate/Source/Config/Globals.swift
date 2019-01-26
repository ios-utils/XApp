//
//  Globals.swift
//

import SwiftyBeaver

/**
 Global Container
 */
let container = Container()

/**
 Global Logging
 
 Powered by SwiftyBeaver.
 Docs: https://github.com/SwiftyBeaver/SwiftyBeaver
 */
let log: SwiftyBeaver.Type = {
    let log = SwiftyBeaver.self
    
    log.addDestination(ConsoleDestination())
    
    // Configure loggers here...
    
    return log
}()

/**
 Global Strong-Typed Resources
 
 Powered by R.swift.
 Docs: https://github.com/mac-cain13/R.swift
 */
typealias LocalizedStrings = R.string.localizable
