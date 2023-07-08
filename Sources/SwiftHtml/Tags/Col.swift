//
//  Col.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<col>` tag specifies column properties for each column within a `<colgroup>` element.
/// 
/// The `<col>` tag is useful for applying styles to entire columns, instead of repeating the styles for each cell, for each row.
open class Col: EmptyTag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}

public extension Col {
    
    /// Sets the number of columns a `<col>` element should span
    func span(_ value: Int) -> Self {
        attribute("span", String(value))
    }
}
