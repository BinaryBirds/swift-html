//
//  Priority.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public struct Priority: SimpleElement {

    public var value: String

    public init(_ value: Float) {
        self.value = String(value)
    }

    public init(_ value: Double) {
        self.value = String(value)
    }

    public init(_ value: Int) {
        self.value = String(value)
    }
}
