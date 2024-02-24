//
//  LastBuildDate.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public struct LastBuildDate: SimpleElement {

    public var value: String
    public var name: String { "lastBuildDate" }

    public init(_ value: String) {
        self.value = value
    }
}
