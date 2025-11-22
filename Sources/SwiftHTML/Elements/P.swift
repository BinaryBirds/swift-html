import SGML

/// The `<p>` tag defines a paragraph.
///
/// Browsers automatically add a single blank line before and after each `<p>` element.
///
/// **Tip:** Use CSS to style paragraphs.
public struct P: StandardTag {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ elements: Element...
        ) -> P {
            .init(children: elements)
        }
    }

    // MARK: -

    public let children: [Element]

    public init(
        @Builder _ block: () -> Self  //,
            //        @AttributeBuilder attributes: () -> [A] = { [] }
    ) {
        self = block()
        //        print(attributes())
    }

    public init(_ contents: String) {
        self.children = [
            Text(contents)
        ]
    }

    public init(children: [Element]) {
        self.children = children
    }
}
