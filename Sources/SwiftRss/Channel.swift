//
//  Channel.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

public protocol ChannelChildElement: Element {}

extension Title: ChannelChildElement {}
extension Description: ChannelChildElement {}
extension Link: ChannelChildElement {}
extension Language: ChannelChildElement {}
extension LastBuildDate: ChannelChildElement {}
extension PubDate: ChannelChildElement {}
extension Ttl: ChannelChildElement {}
extension Item: ChannelChildElement {}

public struct Channel: Element {

    public var children: [ChannelChildElement]

    public var node: Node {
        .standard(.init(name: name), children.compactMap { $0.node })
    }

    public init(
        @Builder<ChannelChildElement> elements b1: () -> [ChannelChildElement]
    ) {
        self.children = b1()
    }
}
