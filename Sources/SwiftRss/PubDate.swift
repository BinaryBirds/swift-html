//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public final class PubDate: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "pubDate", contents: contents))
    }
}
