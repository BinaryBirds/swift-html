//
//  Bdo.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func bdo(_ contents: String) -> Node {
        Node(type: .standard, name: "bdo", contents: contents)
    }
}

/// BDO stands for Bi-Directional Override.
///
/// The `<bdo>` tag is used to override the current text direction.
public struct Bdo: Tag {
    
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init(_ contents: String, dir: TextDirection = .ltr) {
        self.node = .bdo(contents)
        self.node.attributes.append(.init(key: "dir", value: dir.rawValue))
    }
}

public extension Bdo {
    /// Required. Specifies the text direction of the text inside the <bdo> element
    func dir(_ value: TextDirection) -> Self {
        .init(node.addOrReplace(Attribute(key: "dir", value: value.rawValue)))
    }
}
