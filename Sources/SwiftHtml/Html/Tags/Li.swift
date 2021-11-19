//
//  Li.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<li>` tag defines a list item.
///
/// The `<li>` tag is used inside ordered lists(`<ol>`), unordered lists (`<ul>`), and in menu lists (`<menu>`).
///
/// In `<ul>` and `<menu>`, the list items will usually be displayed with bullet points.
///
/// In `<ol>`, the list items will usually be displayed with numbers or letters.
///
/// **Tip:** Use CSS to style lists.
public final class Li: Tag {

    public init(_ contents: String, @TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "li", contents: contents), tags: builder())
    }

    public convenience init(_ contents: String) {
        self.init(contents) {}
    }
    
    public convenience init(@TagBuilder _ builder: () -> [Tag]) {
        self.init("", builder)
    }
}

public extension Li {
    /// Only for `<ol>` lists. Specifies the start value of a list item. The following list items will increment from that number
    func value(_ value: Int) -> Self {
        node.addOrReplace(Attribute(key: "value", value: String(value)))
        return self
    }
}

