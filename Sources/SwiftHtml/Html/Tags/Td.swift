//
//  Td.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    private static var name = "td"
    
    static func td(_ contents: String) -> Node {
        Node(type: .standard, name: name, contents: contents)
    }
    
    static func td() -> Node {
        Node(type: .standard, name: name)
    }
}

/// The `<td>` tag defines a standard data cell in an HTML table.
///
/// An HTML table has two kinds of cells:
///
/// - Header cells - contains header information (created with the `<th>` element)
/// - Data cells - contains data (created with the `<td>` element)
///
/// The text in `<td>` elements are regular and left-aligned by default.
///
/// The text in `<th>` elements are bold and centered by default.
public struct Td: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .td(contents)
    }
    
    public init() {
        self.node = .td()
    }

//    public init(@TagBuilder _ builder: () -> [Tag]) {
//        self.init(builder().map(\.node))
//    }
}
