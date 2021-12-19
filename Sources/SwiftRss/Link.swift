//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public final class Link: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "link", contents: contents))
    }
}
