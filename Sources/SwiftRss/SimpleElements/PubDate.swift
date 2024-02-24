//
//  PubDate.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//
//
import SwiftSgml

public struct PubDate: SimpleElement {

    public var value: String
    public var name: String { "pubDate" }

    public init(_ value: String) {
        self.value = value
    }
}
