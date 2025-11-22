import SGML

/// The `<noscript>` tag defines an alternate content to be displayed to users that have disabled scripts in their browser or have a browser that doesn't support script.
///
/// The `<noscript>` element can be used in both `<head>` and `<body>`. When used inside `<head>`, the `<noscript>` element could only contain `<link>`, `<style>`, and `<meta>` elements.
public struct Noscript: StandardTag, MetadataContent {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ elements: Element...
        ) -> Noscript {
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

    //    public init(_ contents: String) {
    //        self.children = [
    //            Text(contents)
    //        ]
    //    }

    public init(children: [Element]) {
        self.children = children
    }
}
