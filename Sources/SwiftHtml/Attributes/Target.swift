//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation


public enum Target {
    /// Opens the linked document in a new window or tab
    case blank
    /// Opens the linked document in the same frame as it was clicked (this is default)
    case `self`
    /// Opens the linked document in the parent frame
    case parent
    /// Opens the linked document in the full body of the window
    case top
    /// Opens the linked document in the named iframe
    case frame(String)
    
    var rawValue: String {
        switch self {
        case .blank:
            return "_blank"
        case .self:
            return "_self"
        case .parent:
            return "_parent"
        case .top:
            return "_top"
        case let .frame(name):
            return name
        }
    }
}
