import SGML

/// The `<output>` tag is used to represent the result of a calculation (like one performed by a script).
public struct Output:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    ForAttributeModifier,
    FormAttributeModifier,
    NameAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]
    public var categories: ContentModel {
        [
            .flow, .phrasing, .formAssociated, .listed, .labelable, .resettable,
            .autocapitalizeAndAutocorrectInheriting, .palpable,
        ]
    }

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
}
