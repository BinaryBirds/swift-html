import SGML

/// The `<iframe>` tag specifies an inline frame.
///
/// An inline frame is used to embed another document within the current HTML document.
///
/// **Tip:** Use CSS to style the `<iframe>` (see example below).
///
/// **Tip:** It is a good practice to always include a title attribute for the `<iframe>`. This is used by screen readers to read out what the content of the `<iframe>` is.
public struct Iframe:
    HTMLShortTag,
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
    LoadingAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
            .embedded,
            .interactive,
            .palpable,
        ]
    }

    public init(

        )
    {
        self.attributes = .init()
    }

}
