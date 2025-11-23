/// The `<a>` tag defines a hyperlink, which is used to link from one page to another.
///
/// The most important attribute of the `<a>` element is the href attribute, which indicates the link's destination.
///
/// By default, links will appear as follows in all browsers:
///
/// - An unvisited link is underlined and blue
/// - A visited link is underlined and purple
/// - An active link is underlined and red
public struct A:
    StandardTag,
    GlobalAttributeModifier,
    HrefAttributeModifier,
    ARelAttributeModifier,
    MediaAttributeModifier,
    TargetAttributeModifier
{
    public var attributes: AttributeStore
    public var children: [Element]

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

//extension A {

//    /// Specifies that the target will be downloaded when a user clicks on the hyperlink
//    public func download(_ value: String? = nil) -> Self {
//        flagAttribute("download", value)
//    }
//
//    /// Specifies the language of the linked document
//    public func hreflang(_ value: String) -> Self {
//        attribute("hreflang", value)
//    }
//    /// Specifies a space-separated list of URLs to which, when the link is followed, post requests with the body ping will be sent by the browser (in the background).
//    ///
//    /// Typically used for tracking.
//    public func ping(_ value: [String]) -> Self {
//        attribute("ping", value.joined(separator: " "))
//    }
//
//    /// Specifies which referrer information to send with the link
//    public func refererPolicy(_ value: RefererPolicy = .origin) -> Self {
//        attribute("referrerpolicy", value.rawValue)
//    }
//
//    /// Specifies where to open the linked document
//    public func target(_ value: TargetFrame, _ condition: Bool = true) -> Self {
//        attribute("target", value.rawValue, condition)
//    }
//
//    /// The type attribute specifies the Internet media type (formerly known as MIME type) of the linked document.
//    public func type(_ value: String) -> Self {
//        attribute("type", value)
//    }
//}
