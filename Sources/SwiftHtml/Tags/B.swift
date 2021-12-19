//
//  B.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// Make some text bold (without marking it as important)
public final class B: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "b", contents: contents))
    }
}
