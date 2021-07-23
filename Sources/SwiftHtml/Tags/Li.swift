//
//  Li.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    private static var name = "li"
    
    static func li(_ contents: String) -> Node {
        Node(type: .standard, name: name, contents: contents)
    }
    
    static func li(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: name, children: children)
    }
}

/// The `<li>` tag defines a list item.
///
/// The `<li>` tag is used inside ordered lists(`<ol>`), unordered lists (`<ul>`), and in menu lists (`<menu>`).
///
/// In `<ul>` and `<menu>`, the list items will usually be displayed with bullet points.
///
/// In `<ol>`, the list items will usually be displayed with numbers or letters.
///
/// **Tip:** Use CSS to style lists.
public struct Li: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .li(contents)
    }
    
    public init(_ children: [Node] = []) {
        self.node = .li(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}

public extension Li {
    /// Only for `<ol>` lists. Specifies the start value of a list item. The following list items will increment from that number
    func value(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: String(value))))
    }
}

