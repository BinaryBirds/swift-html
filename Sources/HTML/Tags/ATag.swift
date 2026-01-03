import SGML

/// The `<a>` tag defines a hyperlink, which is used to link from one page to another.
///
/// The most important attribute of the `<a>` element is the href attribute, which indicates the link's destination.
///
/// By default, links will appear as follows in all browsers:
///
/// - An unvisited link is underlined and blue
/// - A visited link is underlined and purple
/// - An active link is underlined and red
public struct A:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    DownloadAttributeModifier,
    HrefAttributeModifier,
    HrefLangAttributeModifier,
    MediaAttributeModifier,  // NOTE: W3C, but not spec
    PingAttributeModifier,
    ReferrerPolicyAttributeModifier,
    RelAttributeModifier,
    TargetAttributeModifier,
    TypeAttributeModifier,
    // categories
    FlowContent,
    PhrasingContent,
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
                Text(contents)
            ]
        )
    }

    public init(
        @Builder<FlowContent> _ block: () -> [any FlowContent]
    ) {
        self.init(children: block())
    }
}
