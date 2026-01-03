import SGML

/// The `<option>` tag defines an option in a select list.
///
/// `<option>` elements go inside a `<select>`, `<optgroup>`, or `<datalist>` element.
///
/// **Note:** The `<option>` tag can be used without any attributes, but you usually need the value attribute, which indicates what is sent to the server on form submission.
///
/// **Tip:** If you have a long list of options, you can group related options within the `<optgroup>` tag.
public struct Option:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    DisabledAttributeModifier,
    ValueAttributeModifier,
    LabelAttributeModifier,
    // categories
    SelectInnerContent,
    OptgroupInnerContent
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
                Text(contents)
            ]
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }

    public func selected() -> Self {
        setAttribute(name: "selected", value: nil)
    }
}
