//
//  PubDate.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class PubDate: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "pubDate", contents: contents))
    }
}
