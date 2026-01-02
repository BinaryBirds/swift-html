import SGML

/// The `<body>` tag defines the document's body.
///
/// The `<body>` element contains all the contents of an HTML document, such as headings, paragraphs, images, hyperlinks, tables, lists, etc.
///
/// **Note:** There can only be one `<body>` element in an HTML document.
public struct Body:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier
// TODO: -
//onafterprint
//onbeforeprint
//onbeforeunload
//onhashchange
//onlanguagechange
//onmessage
//onmessageerror
//onoffline
//ononline
//onpageswap
//onpagehide
//onpagereveal
//onpageshow
//onpopstate
//onrejectionhandled
//onstorage
//onunhandledrejection
//onunload
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        []
    }

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
