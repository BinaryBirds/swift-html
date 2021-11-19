//
//  Ol.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<ol>` tag defines an ordered list. An ordered list can be numerical or alphabetical.
/// 
/// The `<li>` tag is used to define each list item.
/// 
/// **Tip:** Use CSS to style lists.
/// 
/// **Tip:** For unordered list, use the `<ul>` tag.
public final class Ol: Tag {

    init(_ node: Node) {
        super.init(node)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "ol"), tags: builder())
    }
}

public extension Ol {
    enum `Type`: String {
        /// Default. Decimal numbers (1, 2, 3, 4)
        case `default` = "1"
        /// Alphabetically ordered list, lowercase (a, b, c, d)
        case lowerAlpa = "a"
        /// Alphabetically ordered list, uppercase (A, B, C, D)
        case upperAlpha = "A"
        /// Roman numbers, lowercase (i, ii, iii, iv)
        case lowerRoman = "i"
        /// Roman numbers, uppercase (I, II, III, IV)
        case upperRoman = "I"
    }
    
    /// Specifies that the list order should be reversed (9,8,7...)
    func reversed(_ value: Double) -> Self {
        .init(node.addOrReplace(Attribute(key: "reversed")))
    }
    
    /// Specifies the start value of an ordered list
    func start(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "start", value: String(value))))
    }
    
    /// Specifies the kind of marker to use in the list
    func type(_ value: Type) -> Self {
        .init(node.addOrReplace(Attribute(key: "type", value: value.rawValue)))
    }
}
