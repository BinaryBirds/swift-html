//
//  Ttl.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public struct Ttl: SimpleElement {

    public var value: String

    public init(_ value: Int) {
        self.value = String(value)
    }
}
