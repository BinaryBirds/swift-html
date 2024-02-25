//
//  Rss.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

// https://validator.w3.org/feed/docs/rss2.html#ltttlgtSubelementOfLtchannelgt
// NOTE: xmlns:atom="http://www.w3.org/2005/Atom" support?

import SwiftSgml

public protocol RssChildElement: Element {}

extension Channel: RssChildElement {}

public struct Rss: Element, Attributes {

    public var children: [RssChildElement]
    public var attributes: [Attribute]

    public var node: Node {
        .standard(
            .init(name: name, attributes: attributes),
            children.compactMap { $0.node }
        )
    }

    public init(
        @Builder<RssChildElement> elements b1: () -> [RssChildElement]
    ) {
        self.children = b1()
        self.attributes = [Version()]
    }
}

private struct Group: RssChildElement {

    var children: [Element]

    var node: Node {
        .group(children.compactMap { $0.node })
    }

    init(_ children: [Element] = []) {
        self.children = children
    }
}

extension Builder where T == RssChildElement {

    public static func buildBlock(_ components: T...) -> T {
        Group(components)
    }

    public static func buildOptional(_ component: T?) -> T {
        component ?? Group()
    }

    public static func buildArray(_ components: [T]) -> T {
        Group(components)
    }

    public static func buildBlock(_ components: [T]...) -> [T] {
        components.flatMap { $0 }
    }

    public static func buildBlock(_ components: [T]...) -> T {
        Group(components.map { Group($0) })
    }

    public static func buildBlock(_ components: [[T]]) -> [T] {
        components.map { Group($0) }
    }
}
