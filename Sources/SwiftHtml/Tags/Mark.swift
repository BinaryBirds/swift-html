//
//  Mark.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<mark>` tag defines text that should be marked or highlighted.
open class Mark: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "mark", contents: contents))
    }
}
