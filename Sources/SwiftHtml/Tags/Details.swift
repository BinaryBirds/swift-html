//
//  Details.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<details>` tag specifies additional details that the user can open and close on demand.
///
/// The `<details>` tag is often used to create an interactive widget that the user can open and close. By default, the widget is closed. When open, it expands, and displays the content within.
///
/// Any sort of content can be put inside the `<details>` tag.
///
/// **Tip:** The `<summary>` tag is used in conjuction with `<details>` to specify a visible heading for the details.
open class Details: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}

public extension Details {
    
    /// Specifies that the details should be visible (open) to the user
    func open(_ condition: Bool = true) -> Self {
        flagAttribute("open", nil, condition)
    }
}

