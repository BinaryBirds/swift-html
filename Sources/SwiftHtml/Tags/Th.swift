//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    private static var name = "th"
    
    static func th(_ contents: String) -> Node {
        Node(type: .standard, name: name, contents: contents)
    }
    
    static func th(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: name, children: children)
    }
}

/// The <th> tag defines a header cell in an HTML table.
///
/// An HTML table has two kinds of cells:
///
/// - Header cells - contains header information (created with the <th> element)
/// - Data cells - contains data (created with the <td> element)
/// The text in <th> elements are bold and centered by default.
///
/// The text in <td> elements are regular and left-aligned by default.
public struct Th: Tag {
    
    public enum Scope: String {
        /// Specifies that the cell is a header for a column
        case col
        /// Specifies that the cell is a header for a row
        case row
        /// Specifies that the cell is a header for a group of columns
        case colgroup
        /// Specifies that the cell is a header for a group of rows
        case rowgroup
    }
    
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .th(contents)
    }
    
    public init(_ children: [Node] = []) {
        self.node = .th(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
    
    /// Specifies an abbreviated version of the content in a header cell
    public func abbr(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "abbr", value: value)))
    }
    
    /// Specifies the number of columns a header cell should span
    public func colspan(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "colspan", value: String(value))))
    }
    
    /// Specifies one or more header cells a cell is related to
    public func headers(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "headers", value: value)))
    }
    
    /// Specifies the number of rows a header cell should span
    public func rowspan(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "rowspan", value: String(value))))
    }
    
    /// Specifies one or more header cells a cell is related to
    public func scope(_ value: Scope) -> Self {
        .init(node.addOrReplace(Attribute(key: "scope", value: value.rawValue)))
    }
    
    
}
