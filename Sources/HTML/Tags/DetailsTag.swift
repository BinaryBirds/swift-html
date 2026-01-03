import SGML

/// The `<details>` tag specifies additional details that the user can open and close on demand.
///
/// The `<details>` tag is often used to create an interactive widget that the user can open and close. By default, the widget is closed. When open, it expands, and displays the content within.
///
/// Any sort of content can be put inside the `<details>` tag.
///
/// **Tip:** The `<summary>` tag is used in conjuction with `<details>` to specify a visible heading for the details.
public struct Details:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    NameAttributeModifier,
    OpenAttributeModifier,
    // categories
    FlowContent,
    InteractiveContent,
    PalpableContent
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        _ contents: String
    ) {
        self.init(
            children: [
                Text(contents, isRaw: true)
            ]
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}

//extension Details {
//
//    /// Specifies that the details should be visible (open) to the user
//    public func open(_ condition: Bool = true) -> Self {
//        flagAttribute("open", nil, condition)
//    }
//}
