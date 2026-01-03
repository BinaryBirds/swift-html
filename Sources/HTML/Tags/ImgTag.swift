import SGML

/// The `<img>` tag is used to embed an image in an HTML page.
///
/// Images are not technically inserted into a web page; images are linked to web pages.
/// The `<img>` tag creates a holding space for the referenced image.
///
/// The `<img>` tag has two required attributes:
///
/// - src - Specifies the path to the image
/// - alt - Specifies an alternate text for the image, if the image for some reason cannot be displayed
/// **Note:** Also, always specify the width and height of an image.
/// If width and height are not specified, the page might flicker while the image loads.
///
/// **Tip:** To link an image to another document, simply nest the `<img>` tag inside an `<a>` tag (see example below).
public struct Img:
    ShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    AltAttributeModifier,
    SrcAttributeModifier,
    CrossOriginAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    ReferrerPolicyAttributeModifier,
    SizesAttributeModifier,
    SrcSetAttributeModifier,
    UseMapAttributeModifier,
    LoadingAttributeModifier,
    IsMapAttributeModifier,
    DecodingAttributeModifier,
    FetchPriorityAttributeModifier,
    // categories
    FlowContent,
    PhrasingContent,
    EmbeddedContent,
    InteractiveContent,
    PalpableContent
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public init(
        src: String?,
        alt: String?
    ) {
        self.attributes = .init()

        self =
            self
            .setAttribute(name: "src", value: src)
            .setAttribute(name: "alt", value: alt)
    }
}
