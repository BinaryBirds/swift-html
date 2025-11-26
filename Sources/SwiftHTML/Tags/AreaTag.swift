///
/// The <area> tag defines an area inside an image map (an image map is an image with clickable areas).
///
/// <area> elements are always nested inside a <map> tag.
///
/// **Note:** The usemap attribute in <img> is associated with the <map> element's name attribute, and creates a relationship between the image and the map.
///
/// [HTML Standard - The area element](https://html.spec.whatwg.org/multipage/image-maps.html#the-area-element)
/// [W3C Reference - HTML area tag](https://www.w3schools.com/tags/tag_area.asp)
///
public struct Area:
    ShortTag,
    FlowContent,
    GlobalAttributeModifier,
    AltAttributeModifier,
    HrefAttributeModifier,
    TargetAttributeModifier,
    RelAttributeModifier
{

    //    download — Whether to download the resource instead of navigating to it, and its filename if so
    //    ping — URLs to ping
    //    referrerpolicy — Referrer policy for fetches initiated by the element

    // MARK: - attributes

    public struct Shape: Attribute {

        public enum Value: String {
            /// Specifies the entire region
            case `default`
            /// Defines a rectangular region
            case rect
            /// Defines a circular region
            case circle
            /// Defines a polygonal region
            case poly
        }

        public var value: String?

        init(
            _ value: Value? = nil
        ) {
            self.value = value?.rawValue
        }
    }

    // MARK: -

    public struct Coords: Attribute {

        public var value: String?

        init(
            _ value: String? = nil
        ) {
            self.value = value
        }

        init(
            _ values: [Int]
        ) {
            self.value = values.map { "\($0)" }.joined(separator: ",")
        }

        init(
            _ values: [Float]
        ) {
            self.value = values.map { "\($0)" }.joined(separator: ",")
        }

        init(
            _ values: [Double]
        ) {
            self.value = values.map { "\($0)" }.joined(separator: ",")
        }
    }

    // MARK: - tag

    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }

    public func shape(
        _ value: Shape.Value?
    ) -> Self {
        setAttribute(Shape(value))
    }

    public func coords(
        _ value: String?
    ) -> Self {
        setAttribute(Coords(value))
    }

    public func coords(
        _ values: Int...
    ) -> Self {
        setAttribute(Coords(values))
    }

    public func coords(
        _ values: Float...
    ) -> Self {
        setAttribute(Coords(values))
    }

    public func double(
        _ values: Double...
    ) -> Self {
        setAttribute(Coords(values))
    }
}


//extension Area {
//    /// Specifies that the target will be downloaded when a user clicks on the hyperlink
//    public func download(_ value: String) -> Self {
//        attribute("download", value)
//    }
//    /// Specifies the language of the target URL
//    public func hreflang(_ value: String) -> Self {
//        attribute("hreflang", value)
//    }
//
//    /// Specifies which referrer information to send with the link
//    public func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
//        attribute("referrerpolicy", value.rawValue)
//    }
//
//    /// Specifies the relationship between the current document and the target URL
//    public func rel(_ value: Rel) -> Self {
//        attribute("rel", value.rawValue)
//    }
//
//    /// Specifies the media type of the target URL
//    public func type(_ value: String) -> Self {
//        attribute("type", value)
//    }
//}
