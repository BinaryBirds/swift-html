//
//  Url.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public protocol UrlChildElement: Element {}

extension Loc: UrlChildElement {}
extension LastMod: UrlChildElement {}
extension ChangeFreq: UrlChildElement {}
extension Priority: UrlChildElement {}

public struct Url: Element {

    public var children: [UrlChildElement]

    public var node: Node {
        .standard(.init(name: name), children.compactMap { $0.node })
    }

    public init(
        @Builder<UrlChildElement> elements b1: () -> [UrlChildElement]
    ) {
        self.children = b1()
    }
}
