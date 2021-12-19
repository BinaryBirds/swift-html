//
//  Language.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public final class Language: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "language", contents: contents))
    }
}
