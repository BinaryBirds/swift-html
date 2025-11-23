/// The `<link>` tag defines the relationship between the current document and an external resource.
///
/// The `<link>` tag is most often used to link to external style sheets.
///
/// The `<link>` element is an empty element, it contains attributes only.
public struct Link: ShortTag, MetadataContent, MediaAttributeModifier {

    public var attributes: AttributeStore

    public init(
        rel value: LinkRelAttribute.Value
    ) {
        self.attributes = .init(
            [
                LinkRelAttribute(value)
            ]
        )
    }
}

extension Link {

    /// Specifies the location of the linked document.
    public func href(
        _ value: String?
    ) -> Self {
        setAttribute(HrefAttribute(value))
    }

    /// Specifies how the element handles cross-origin requests.
    public func crossorigin(
        _ value: CrossoriginAttribute.Value
    ) -> Self {
        setAttribute(CrossoriginAttribute(value))
    }

    /// Allows a browser to check the fetched link to ensure that the code is never loaded if the source has been manipulated.
    public func integrity(
        _ value: String
    ) -> Self {
        setAttribute(IntegrityAttribute(value))
    }

    //
    //    /// Specifies the language of the text in the linked document
    //    public func hreflang(_ value: String) -> Self {
    //        attribute("hreflang", value)
    //    }

    //
    //    /// Specifies which referrer to use when fetching the resource
    //    public func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
    //        attribute("referrerpolicy", value.rawValue)
    //    }
    //
    //
    //    /// Specifies the size of the linked resource. Only for `rel="icon"`
    //    public func sizes(_ value: String) -> Self {
    //        attribute("sizes", value)
    //    }
    //
    //    /// Specifies the size of the linked resource. For example `57x57` if the value is `57`.
    //    public func sizes(_ value: Int) -> Self {
    //        sizes(String(value) + "x" + String(value))
    //    }
    //
    //    /// Specifies the media type of the linked document
    //    public func type(_ value: String) -> Self {
    //        attribute("type", value)
    //    }
    //
}
