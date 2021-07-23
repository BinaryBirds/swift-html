//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func bdo(_ contents: String) -> Node {
        Node(type: .standard, name: "bdo", contents: contents)
    }
}

/// BDO stands for Bi-Directional Override.
///
/// The <bdo> tag is used to override the current text direction.
public struct Bdo: Tag {
    
    public enum Dir: String {
        /// Left-to-right text direction
        case ltr
        /// Right-to-left text direction
        case rtl
    }
    
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init(_ contents: String, dir: Dir = .ltr) {
        self.node = .bdo(contents)
        self.node.attributes.append(.init(key: "dir", value: dir.rawValue))
    }
    
    /// Required. Specifies the text direction of the text inside the <bdo> element
    public func dir(_ value: Dir) -> Self {
        .init(node.addOrReplace(Attribute(key: "dir", value: value.rawValue)))
    }
}
