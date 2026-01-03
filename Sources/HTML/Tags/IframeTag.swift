import SGML

/// The `<iframe>` tag specifies an inline frame.
///
/// An inline frame is used to embed another document within the current HTML document.
///
/// **Tip:** Use CSS to style the `<iframe>` (see example below).
///
/// **Tip:** It is a good practice to always include a title attribute for the `<iframe>`. This is used by screen readers to read out what the content of the `<iframe>` is.
public struct Iframe:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    AllowAttributeModifier,
    AllowFullscreenAttributeModifier,
    SrcAttributeModifier,
    SrcDocAttributeModifier,
    NameAttributeModifier,
    SandboxAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    ReferrerPolicyAttributeModifier,
    LoadingAttributeModifier,
    // categories
    FlowContent,
    PhrasingContent,
    EmbeddedContent,
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
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }

}
