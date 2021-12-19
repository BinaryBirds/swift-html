//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import Foundation

public final class Changefreq: Tag {
    
    public enum Value: String {
        case always
        case hourly
        case daily
        case weekly
        case monthly
        case yearly
        case never
    }
    
    public init(_ value: Value) {
        super.init(Node(type: .standard, name: "changefreq", contents: value.rawValue))
    }
}
