//
//  Changefreq.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public struct ChangeFreq: SimpleElement {

    public enum Frequency: String {
        case always
        case hourly
        case daily
        case weekly
        case monthly
        case yearly
        case never
    }
    
    public var value: String
    
    public init(_ value: Frequency) {
        self.value = value.rawValue
    }
}
