//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func u(_ contents: String) -> Node {
        Node(type: .standard, name: "u", contents: contents)
    }
}

/// The <u> tag represents some text that is unarticulated and styled differently from normal text, such as misspelled words or proper names in Chinese text. The content inside is typically displayed with an underline. You can change this with CSS (see example below).
///
/// Tip: Avoid using the <u> element where it could be confused for a hyperlink!
public struct U: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .u(contents)
    }
}
