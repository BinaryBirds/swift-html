import SGML

/// The `<rt>` tag defines an explanation or pronunciation of characters (for East Asian typography) in a ruby annotation.
///
/// Use `<rt>` together with `<ruby>` and `<rp>`: The `<ruby>` element consists of one or more characters that needs an explanation/pronunciation, and an `<rt>` element that gives that information, and an optional `<rp>` element that defines what to show for browsers that not support ruby annotations.
public struct Rt:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier
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
        @Builder<PhrasingContent> _ block: () -> [any PhrasingContent]
    ) {
        self.init(children: block())
    }

}
