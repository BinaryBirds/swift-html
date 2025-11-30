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
    GlobalAttributeModifier,
    SrcAttributeModifier,
    CrossoriginAttributeModifier,
    AutoplayAttributeModifier,
    LoopAttributeModifier,
    MutedAttributeModifier,
    ControlsAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    PreloadAttributeModifier
//✅src — Address of the resource
//✅crossorigin — How the element handles crossorigin requests
//poster — Poster frame to show prior to video playback
//✅preload — Hints how much buffering the media resource will likely need
//✅autoplay — Hint that the media resource can be started automatically when the page is loaded
//playsinline — Encourage the user agent to display video content within the element's playback area
//✅loop — Whether to loop the media resource
//✅muted — Whether to mute the media resource by default
//✅controls — Show user agent controls
//✅width — Horizontal dimension
//✅height — Vertical dimension
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
}

//    /// Specifies an image to be shown while the video is downloading, or until the user hits the play button
//    public func poster(_ value: String) -> Self {
//        attribute("poster", value)
//    }
