/// The `<object>` tag defines a container for an external resource.
///
/// The external resource can be a web page, a picture, a media player, or a plug-in application.
public struct Object:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    TypeAttributeModifier,
    NameAttributeModifier,
    FormAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier
//data — Address of the resource
//✅type — Type of embedded resource
//✅name — Name of content navigable
//✅form — Associates the element with a form element
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
            //            Listed form-associated element.
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

    public init() {
        self.init(
            children: []
        )
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
//    /// Specifies the URL of the resource to be used by the object
//    public func data(_ value: String) -> Self {
//        attribute("data", value)
//    }
//
//    /// Specifies whether the type attribute and the actual content of the resource must match to be displayed
//    public func typemustmatch(_ value: Bool) -> Self {
//        attribute("typemustmatch", String(value))
//    }
//
//    /// Specifies the name of a client-side image map to be used with the object
//    public func usemap(_ value: String) -> Self {
//        attribute("usemap", "#" + value)
//    }
//
