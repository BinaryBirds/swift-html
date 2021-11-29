//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 11. 29..
//


public final class Text: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .group, contents: contents))
    }
}
