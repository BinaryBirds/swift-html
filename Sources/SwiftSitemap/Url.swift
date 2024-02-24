//
//  Url.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public struct Url: RawElement {
    
    public var value: String
    
    public init(value: String) {
        self.value = value
    }
}
