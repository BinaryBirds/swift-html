//
//  Col.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<col>` tag specifies column properties for each column within a `<colgroup>` element.
/// 
/// The `<col>` tag is useful for applying styles to entire columns, instead of repeating the styles for each cell, for each row.
public final class Col: Tag {
    
    init(_ node: Node) {
        super.init(node)
    }

    public init() {
        super.init(Node(type: .empty, name: "col"))
    }
}

public extension Col {
    /// Sets the number of columns a `<col>` element should span
    func span(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "span", value: String(value))))
    }
}
