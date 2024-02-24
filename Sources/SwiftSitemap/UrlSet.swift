//
//  UrlSetSet.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public protocol UrlSetChildElement: Element {}

extension Url: UrlSetChildElement {}

public struct UrlSet: Element, Attributes {

    public var children: [UrlSetChildElement]
    public var attributes: [Attribute]

    public var node: Node {
        .standard(
            .init(name: name, attributes: attributes),
            children.compactMap { $0.node }
        )
    }

    public init(
        @Builder<UrlSetChildElement> elements b1: () -> [UrlSetChildElement]
    ) {
        self.children = b1()
        self.attributes = [Xmlns()]
    }
}
