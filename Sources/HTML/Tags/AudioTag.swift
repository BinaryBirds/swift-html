/// The `<audio>` tag is used to embed sound content in a document, such as music or other audio streams.
///
/// The `<audio>` tag contains one or more `<source>` tags with different audio sources. The browser will choose the first source it supports.
///
/// The text between the `<audio>` and `</audio>` tags will only be displayed in browsers that do not support the `<audio>` element.
///
/// There are three supported audio formats in HTML: MP3, WAV, and OGG.
///
///     Browser  | MP3 | WAV  | OGG
///     -------  | --- | ---  | ---
///     Edge/IE  | YES | YES* | YES*
///     Chrome   | YES | YES  | YES
///     Firefox  | YES | YES  | YES
///     Safari   | YES | YES  | NO
///     Opera    | YES | YES  | YES
///      *From Edge 79
public struct Audio:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    ControlsAttributeModifier,
    SrcAttributeModifier,
    CrossoriginAttributeModifier,
    PreloadAttributeModifier,
    AutoplayAttributeModifier,
    MutedAttributeModifier,
    LoopAttributeModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        var contentModel: ContentModel = [
            .flow, .phrasing, .embedded,
        ]
        if hasAttribute(ControlsAttribute.self) {
            contentModel.insert([.interactive, .palpable])
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
