//
//  LastBuildDate.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//


public final class LastBuildDate: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "lastBuildDate", contents: contents))
    }
}
