//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol HeadChildElement: Element {}

extension Title: HeadChildElement {}
extension Comment: HeadChildElement {}

public protocol HeadAttribute: Attribute {}

extension Lang: HeadAttribute {}
extension Custom: HeadAttribute {}

public struct Head: StandardAttributedElement {

    public let children: [Element]
    public var attributes: [Attribute]

    public init(
        @Builder<HeadAttribute> attributes b2: () -> [HeadAttribute] = { [] },
        @Builder<HeadChildElement> elements b1: () -> [HeadChildElement]
    ) {
        self.children = b1()
        self.attributes = b2()
    }
}
