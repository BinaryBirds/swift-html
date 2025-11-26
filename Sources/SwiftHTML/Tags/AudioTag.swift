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

//
//extension Audio {
//
//    public enum Preload: String {
//        /// The author thinks that the browser should load the entire audio file when the page loads
//        case auto
//        /// The author thinks that the browser should load only metadata when the page loads
//        case metadata
//        /// The author thinks that the browser should NOT load the audio file when the page loads
//        case none
//    }
//
//    /// Specifies that the audio will start playing as soon as it is ready
//    public func autoplay(_ condition: Bool = true) -> Self {
//        flagAttribute("autoplay", nil, condition)
//    }
//
//    /// Specifies that audio controls should be displayed (such as a play/pause button etc)
//    public func controls(_ condition: Bool = true) -> Self {
//        flagAttribute("controls", nil, condition)
//    }
//
//    /// Specifies that the audio will start over again, every time it is finished
//    public func loop(_ condition: Bool = true) -> Self {
//        flagAttribute("loop", nil, condition)
//    }
//
//    /// Specifies that the audio output should be muted
//    public func muted(_ condition: Bool = true) -> Self {
//        flagAttribute("muted", nil, condition)
//    }
//
//    /// Specifies if and how the author thinks the audio should be loaded when the page loads
//    public func preload(_ value: Preload = .auto) -> Self {
//        attribute("preload", value.rawValue)
//    }
//
//    /// Specifies the URL of the audio file
//    public func src(_ value: String) -> Self {
//        attribute("src", value)
//    }
//}
