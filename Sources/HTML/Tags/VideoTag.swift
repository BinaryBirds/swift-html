import SGML

/// The `<video>` tag is used to embed video content in a document, such as a movie clip or other video streams.
///
/// The `<video>` tag contains one or more `<source>` tags with different video sources. The browser will choose the first source it supports.
///
/// The text between the `<video>` and `</video>` tags will only be displayed in browsers that do not support the `<video>` element.
///
/// There are three supported video formats in HTML: MP4, WebM, and OGG.
///
///     Browser | MP4 | WebM | Ogg
///     ------- | --- | ---- | ---
///     Edge    | YES | YES  | YES
///     Chrome  | YES | YES  | YES
///     Firefox | YES | YES  | YES
///     Safari  | YES | YES  | NO
///     Opera   | YES | YES  | YES
public struct Video:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    SrcAttributeModifier,
    CrossOriginAttributeModifier,
    AutoPlayAttributeModifier,
    LoopAttributeModifier,
    MutedAttributeModifier,
    ControlsAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    PreloadAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
            .embedded,
            //            If the element has a controls attribute: Interactive content.
            .palpable,
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

    public func poster(
        _ value: String?
    ) -> Self {
        setAttribute(name: "poster", value: value)
    }

    public func playsinline() -> Self {
        setAttribute(name: "playsinline", value: nil)
    }
}
