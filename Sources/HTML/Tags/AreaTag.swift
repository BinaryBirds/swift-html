import SGML

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
    HTMLShortTag,
    // attribute modifiers
    GlobalAttributeModifier,
    AltAttributeModifier,
    DownloadAttributeModifier,
    HrefAttributeModifier,
    PingAttributeModifier,
    ReferrerPolicyAttributeModifier,
    RelAttributeModifier,
    TargetAttributeModifier
{
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
            self.value = values.joinedElementsAsString()
        }

        init(
            _ values: [Float]
        ) {
            self.value = values.joinedElementsAsString()
        }

        init(
            _ values: [Double]
        ) {
            self.value = values.joinedElementsAsString()
        }
    }

    // MARK: - tag

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow
        ]
    }

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
