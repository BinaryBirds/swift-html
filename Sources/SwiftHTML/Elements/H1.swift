import DOM
import SGML

/// The `<h1>` to `<h6>` tags are used to define HTML headings.
///
/// `<h1>` defines the most important heading. `<h6>` defines the least important heading.
///
/// **Note:** Only use one `<h1>` per page - this should represent the main heading/subject for the whole page.
/// Also, do not skip heading levels - start with `<h1>`, then use `<h2>`, and so on.
public struct H1: StandardTag, HeadingContent {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ elements: Element...
        ) -> H1 {
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
