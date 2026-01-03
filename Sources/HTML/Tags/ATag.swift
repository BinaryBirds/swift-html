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
    HTMLStandardTag,
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
    TypeAttributeModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]
    public var categories: ContentModel {
        var contentModel: ContentModel = [.flow, .phrasing, .palpable]
        if hasAttribute(name: "href") {
            contentModel.insert(.interactive)
        }
        return contentModel
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
