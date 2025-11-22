import SGML

/// The `<body>` tag defines the document's body.
///
/// The `<body>` element contains all the contents of an HTML document, such as headings, paragraphs, images, hyperlinks, tables, lists, etc.
///
/// **Note:** There can only be one `<body>` element in an HTML document.
public struct Body: StandardTag {

    @resultBuilder
    public enum Builder {

        // Enforce exactly: Head, Body
        public static func buildBlock(
            _ elements: Element...
        ) -> Body {
            .init(elements: elements)
        }
    }

    public var attributes: Attributes
    public let children: [Element]

    public init(
        elements: [Element]
    ) {
        self.attributes = .init()
        self.children = elements
    }

    public init(
        @Builder _ block: () -> Body  //,
            //        @AttributeBuilder attributes: () -> [A] = { [] }
    ) {
        self = block()
        //        print(attributes())
    }
}
