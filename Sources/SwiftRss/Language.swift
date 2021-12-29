//
//  Language.swift
//  SwiftRss
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Language: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "language", contents: contents))
    }
}
