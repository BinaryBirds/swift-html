//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public struct Body: StandardAttributedElement {

    public let children: [Element]
    public var attributes: [Attribute]

    public init(
        @Builder<Attribute> attributes b2: () -> [Attribute] = { [] },
        @Builder<Element> elements b1: () -> [Element]
    ) {
        self.children = b1()
        self.attributes = b2()
    }
}
