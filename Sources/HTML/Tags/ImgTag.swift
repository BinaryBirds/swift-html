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
    HTMLShortTag,
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
    LoadingAttributeModifier

//✅alt — Replacement text for use when images are not available
//✅src — Address of the resource
//✅srcset — Images to use in different situations, e.g., high-resolution displays, small monitors, etc.
//✅sizes — Image sizes for different page layouts
//✅crossorigin — How the element handles crossorigin requests
//✅usemap — Name of image map to use
//ismap — Whether the image is a server-side image map
//✅width — Horizontal dimension
//✅height — Vertical dimension
//✅referrerpolicy — Referrer policy for fetches initiated by the element
//decoding — Decoding hint to use when processing this image for presentation
//✅loading — Used when determining loading deferral
//fetchpriority — Sets the priority for fetches initiated by the element
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
            .embedded,
            // Form-associated element.
            // If the element has a usemap attribute: Interactive content.
            .palpable,
        ]
    }

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

///// Specifies an image as a server-side image map.
//public func ismap(_ condition: Bool = true) -> Self {
//    flagAttribute("ismap", nil, condition)
//}
///// Specifies a URL to a detailed description of an image.
//public func longdesc(_ value: String) -> Self {
//    attribute("longdesc", value)
//}
