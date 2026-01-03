import SGML

/// The `<div>` tag defines a division or a section in an HTML document.
///
/// The `<div>` tag is used as a container for HTML elements - which is then styled with CSS or manipulated with JavaScript.
///
/// The `<div>` tag is easily styled by using the class or id attribute.
///
/// Any sort of content can be put inside the `<div>` tag!
///
/// **Note:** By default, browsers always place a line break before and after the `<div>` element.
public struct Div:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    // categories
    FlowContent,
    PalpableContent,
    SelectInnerContent,
    OptgroupInnerContent
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
