//
//  Item.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//
//

import SwiftSgml

public protocol ItemChildElement: Element {}

extension Guid: ItemChildElement {}
extension Title: ItemChildElement {}
extension Description: ItemChildElement {}
extension PubDate: ItemChildElement {}

public struct Item: Element {

    public var children: [ItemChildElement]

    public var node: Node {
        .standard(.init(name: name), children.compactMap { $0.node })
    }

    public init(
        @Builder<ItemChildElement> elements b1: () -> [ItemChildElement]
    ) {
        self.children = b1()
    }
}
