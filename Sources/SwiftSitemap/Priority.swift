//
//  Priority.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public struct Priority: RawElement {
    
    public var value: String
    
    public init(value: Float) {
        self.value = String(value)
    }
}
