//
//  Loc.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public struct Loc: SimpleElement {

    public var value: String

    public init(_ value: String) {
        self.value = value
    }
}
