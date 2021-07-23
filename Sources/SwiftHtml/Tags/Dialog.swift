//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func dialog(_ contents: String) -> Node {
        Node(type: .standard, name: "dialog", contents: contents)
    }
}

/// The <dialog> tag defines a dialog box or subwindow.
///
/// The <dialog> element makes it easy to create popup dialogs and modals on a web page.
public struct Dialog: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .dialog(contents)
    }
    
    /// Specifies that the dialog element is active and that the user can interact with it
    public func open() -> Self {
        .init(node.addOrReplace(Attribute(key: "open")))
    }
}
